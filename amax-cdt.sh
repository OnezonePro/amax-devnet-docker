
# download amax.cdt.zip
# mv ~/amax.cdt.zip /usr/local
# unzip amax.cdt.zip

# Execute the following command

cd /usr/local/bin

rm amax-abidiff
ln -s ../amax.cdt/bin/amax-abidiff ./amax-abidiff

rm amax-cc
ln -s ../amax.cdt/bin/amax-cc ./amax-cc

rm amax-init
ln ../amax.cdt/bin/amax-init ./amax-init

rm amax-pp
ln -s ../amax.cdt/bin/amax-pp ./amax-pp

rm amax-wast2wasm
ln -s ../amax.cdt/bin/amax-wast2wasm ./amax-wast2wasm

rm amax-abigen
ln -s ../amax.cdt/bin/amax-abigen ./amax-abigen

rm amax-cpp
ln -s ../amax.cdt/bin/amax-cpp ./amax-cpp

rm amax-ld
ln -s ../amax.cdt/bin/amax-ld ./amax-ld

rm amax-wasm2wast
ln -s ../amax.cdt/bin/amax-wasm2wast ./amax-wasm2wast

ls -l
