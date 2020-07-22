rm -rf output
mkdir output
export previousDir=from_scratch

. ./helper.sh

for step in steps/*.sh; do
    createOutputDir "output" $step
    mkdir --parents $_RESULT_createOutputDir
    for f in $previousDir/*.svg; do 
    # echo "Processing $f file.."
        
        $step $f
    done
    export previousDir="output/"+$step
done