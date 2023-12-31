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
echo "ࠈ Architecture: $architecture"
#### arm64 == macOS
executable=("$name.$architecture.bin")

# echo "ࠈ Attemptiong to remove an old $executable"
# if [ -f "$executable" ]; then
#     rm "$executable"
# fi

echo "ࠈ Sources/$name.swift" 

#### RUN -- enables JIT compilation on LLVM-IR 
#### to generate byte code for the interpreter
#### swift Sources/"$name".swift

#### OR.. COMPILE and run.
swiftc Sources/"$name".swift -o "bin/$executable"
./bin/"$executable"

# # ࠈ open -a Xcode $1.playground
# # ࠈ code "$name".playground/Contents.swift 
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ DONE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"