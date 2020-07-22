
split() {
    delimiter=$1
    index=$2
    input=$3
    export _RESULT_split=`cut -d$delimiter -f$index<<<$input`
}

extractStepName() {
    stepFileName=$1
    split "/" 2 $stepFileName
    split "." 1 $_RESULT_split
    export _RESULT_extractStepName=$_RESULT_split
}

createOutputDir () {
    basePath=$1
    baseFileName=$2
    extractStepName $baseFileName
    export _RESULT_createOutputDir=$basePath"/"$_RESULT_extractStepName
}

# createOutputDir () {
#     outDir=$1"doof"
    
# }
# createOutputDir "steps/01_remove.sh"

# echo $step_path

# split "/" 2 "steps/01_remove.sh"
# echo $splitResult