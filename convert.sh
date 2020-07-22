rm -rf output
mkdir output
export previousDir=from_scratch

. ./helper.sh

for step in steps/*.sh; do
    extractStepName $step
    export currentStepName=$_RESULT_extractStepName
    export currentDir="output/"$currentStepName
    echo -n $currentStepName
    mkdir --parents $currentDir
    
    for f in $previousDir/*.svg; do 
        echo -n "."
        $step $f $currentDir
    done
    echo
    export previousDir=$currentDir
done