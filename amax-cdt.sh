

# download amax.cdt.zip
# mv ~/amax.cdt.zip /usr/local
# unzip amax.cdt.zip

# Execute the following command

# 如果Python3手工升级过，必须重新 创建新的软链接到可执行文件

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
