
for step in steps/*.sh; do
    for f in from_scratch/*.svg; do 
    echo "Processing $f file.."

        $step $f
    done
done