# chmod +x ./run.sh
clear

if [ "$1" == "" ]
then
    echo "ࠈ Please provide the name of the as in name.swift"
    ls Sources | grep .swift
    exit 0
fi

name="$1"

architecture=$(uname -m)
echo "ࠈ Your system architecture is: $architecture"

echo "ࠈ Sources/$name.swift" 

# #### RUN -- enables JIT compilation on LLVM-IR to generate byte code for the interpreter
swift Sources/"$name".swift

echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ DONE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"