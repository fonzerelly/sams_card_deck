
###################### split ##################

test_that_split_extracts_directory_from_path()
{
  split "/" 1 "steps/01_remove.sh"
  assertEquals "steps" $_RESULT_split
}

test_that_split_extracts_file_from_path()
{
  split "/" 2 "steps/01_remove.sh"
  assertEquals "01_remove.sh" $_RESULT_split 
}

test_that_split_extracts_file_from_deeper_path()
{
  split "/" 3 "a/b/c"
  assertEquals "c" $_RESULT_split
}

test_that_split_serates_path_form_PATH_variable()
{
  split ":" 2 "~/scripts:/usr/bin:~/test"
  assertEquals "/usr/bin" $_RESULT_split
}


# I don't know yet, how to extract the error code from a command
# evaluated in backticks, which is an own process.
# test_that_split_extracts_file_from_path()
# {
#   split "/" 0 "steps/01_remove.sh"
#   assertNotEquals $? 0
# }

###################### createOutputDir ##################
test_that_createOutputDir_uses_base_path ()
{
  createOutputDir "output" "steps/01_remove.sh"
  assertEquals "output/01_remove" $_RESULT_createOutputDir
}

test_that_missing


. ./helper.sh

# load shunit2
. ./shunit2-2.1.6/src/shunit2
