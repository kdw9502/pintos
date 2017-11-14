cd ..
ls
cd userprog/
ls
make
make check
tar xvfz pintos_modified.tar.gz 
ls
cd pintos
ls
cd src/
cd threads/
ls
vi Make.vars 
cd ..
cd filesys/
vi Make.vars 
cd ..
cd userprog/
ls
vi Make.vars 
cd ../vm
vi Make.vars 
cd ..
cd utils/
ls
vi pintos
cd ..
ls
cd threads/
make
ls
cd ..
ls
cd t
cd tests/
make
cd ..
cd userprog/
ls
make
ls
cd ..
ls
cd filesys/
make
cd ..
ls
cd userprog/ls
ls
cd threads/
ls
cd ..
cd devices/
vi shutdown.c
pintos -v -- -q run alarm-multiple
cd ..
ls
cd threads/
pintos –v -- -q run alarm-multiple
make
pintos –v -- -q run alarm-multiple
ls
cd ..
ls
cd userprog/
pintos -–filesys-size=2 –p ../../examples/echo –a echo -- -f –q run 'echo x'
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make
pintos -f -q
pintos -p ../../examples/echo -a echo -- -q
ls
cd ..
ls
cd examples/
make
cd ..
ls
cd userprog/
ls

pintos -p ../examples/echo -a echo -- -q
pintos -q run 'echo x'
make
cd ..
ls
cd lib/
ls
cd user/
ls
vi syscall.h
vi syscall.c
cd ..
ls
cd userprog/
make
make check
cd build/
make check
cd ..
ls
cd userprog/
ls
vi process.c
vi syscall.c
vi process.c
ls
make
cd build/
make
ls
make grade
cd ..
ls
cd ..
ls
cd  threads/
make
cd ..
ls
cd userprog/
make
make grade
make check
ls
cd ..
ls
cd lib/
ls
cd user/
ls
vi syscall.c
cd ..
ls
cd ..
ls
cd threads/
ls
cd ..
ls
cd tests/
ls
cd threads/
ls
vi tests.c
cd ..
ls
cd ..
ls
cd threads/
ls
vi thread.c
cd ..
cd threads/
make
cd ..
ls
cd userprog/
make
vi process.c
cd ..
ls
cd threads/
ls
vi thread.c
vi thread.h
make
vi thread.c
make
vi thread.c
make
cd ..
ls
cd userprog/
make
make check
cd ..
cd pintos
ls
cd src/
ls
cd threads/
make
cd ..
ls
cd userprog/
make
make check
vi syscall.c
make
vi syscall.c
make
make check
cd ..
ls
cd Pintos-Project2-master/
ls
cd src/
ls
cd utils/
vi pintos
cd ..
ls
cd userprog/
make check
make grade
make
make check
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
make check
cd ..
ls
cd userprog/
cd build/
make grade
cd ..
vi process.c
cd..
ls
cd ..
cd userprog/
make
make grade
ls
make check
cd build/
make check
cd ..
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
make check
make
make grade
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
make
make grade
cd ..
cd..
ls
cd..
cd ..
ls
cd pintos
ls
cd src/
ls
cd u
cd userprog/
make
make check
make grade
make check
ls
vi process.c
make
make check
ls
cd ..
ls
cd threads/
make
vi thread.c
cd ..
cd userprog/
ls
vi process.c
make check
vi process.c
make
make check
vi process.c
make
make check
vi process.c
make check
make
vi process.c
make check
vi process.c
cd ..
cd threads/
ls
vi init..c
vi init.c
cd ..
ls
cd userprog/
ls
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd userprog/
cd ../..
ls
cd ..
cd threads/
vi  thread.c
make
cd ../userprog/
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
../../threads/thread.c
vi ../../threads/thread.c
cd ..
cd threads/
ls
vi init.c
vi thread.c
vi ...
cd ..

cd userprog/
ls
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-many a s dc fav zafz ff -a args-none -- -q -f run args-none
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-many a s dc fav zafz ff -a args-many -- -q -f run args-many
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-many -a args-many -- -q -f run args-many as dfxx ad 
make check
vi process.c
cd ..
vi process.c
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-many -a args-many -- -q -f run args-many as dfxx ad 
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-many -a args-many -- -q -f run args-many as dfxx ad 
make check
make checkpintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi process.c
cd ..
vi process.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
vi process.c
cd ..
vi process.c
make
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd ..
ls
vi process.
vi process.c
make check
ls
vi process.c
make check
vi process.c
cd ..
ls
cd threads/
ls
vi thread.c
cd ..
ls
cd userprog/
ls
vi syscall.c
cd ..
ls
cd userprog/
ls
make check
ls
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
ls
cd ..
ls
vi process.c
make
vi process.c
make
vi process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
cd ..
ls
vi syscall.c
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make check
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make check
vi ../process.c
make
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
vi ../process.c
make
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
ls
cd pintos
ls
cs src/
cd src/
ls
cd pintos
ls
cd src/
ls
cd threads/
ls
vi thread.h
vi thread.c
cd ../userprog/
ls
make
cd ..
cd threads/
vi thread.h
vi thread.c
vi thread.h
ls
cd pintos
ls
cd src/
ls
cd threads/
ls
vi thread.c
vi thread.h
vi thread.c
ls
vi thread.h
vi thread.c
vi thread.h
vi thread.c
vi thread.h
vi thread.c
cd ..
cd userprog/
ls
vi process.c
make
cd ..
ls
cd threads/
make
cd ..
cd threads/
vi thread.c
make
vi thread.h
make
vi thread.c
vi thread.h
make
vi thread.h
make
cd ..
ls
cd userprog/
ls
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
make
vi process.c
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
make check
process.c
vi process.c
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
cd ..
ls
cd utils/
ls
vi pintos
cd ..
ls
cd utils/
ls
cd ..
ls
cd misc/
vi gdb-macros 
cd ..
cd utils/
vi pintos-gdb 
cd ..
pintos -gdb - run alarm-multiple
cd pintos
ls
cd src/
ls
cd threads/
pintos -gdb - run alarm-multiple
pintos-gdb - run alarm-multiple
cd ..
ls
cd misc
vi gdb-macros 
cd ..
cd utils/
ls
vi pintos-gdb
cd ..
cd threads/
pintos-gdb - run alarm-multiple
cd ..
cd utils/
vi pintos
pintos-gdb - run alarm-multiple
vi pintos-gdb 
cd ..
ls
cd userprog/
make
make clean
make
cd build/
pintos-gdb - run alarm-multiple
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
make check
vi ../syscall.c
vi ../process.c
cd ..
ls
cd threads/
ls
vi thread.c
cd ..
cd userprog/
make
make check
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
cd ..
vi syscall.c
vi process.c
cd ..
ls
cd threads/
ls
vi thread.c
make
cd ../userprog/build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../process.c
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../syscall.c
vi ../process.c
vi ../../threads/thread.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../../threads/thread.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!'
vi ../../threads/thread.c
vi ../process.c
vi ../syscall.c
vi ../../threads/thread.c
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
vi ../../threads/thread.c
make
vi ../../threads/thread.c
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
vi ../../threads/thread.c
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
make
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
vi ../../threads/thread.c
make
cd ..
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
make check
make
vi syscall.c
make
make check
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd ..
ls
cd utils/
vi pintos
cd ../userprog/
make
make clean
make check
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make check
ls
cd pintos
ls
cd src/
ls
cd userprog/
make check
pintos -q echo 'echo x'
pintos -p ../../examples/echo -a echo -- -q
pintos -p ../examples/echo -a echo -- -q
pintos –q run 'echo x'
pintos -q run 'echo x'
ls
cd pintos
ls
cd src/
ls
cd ..
ls
cd pintos
ls
cd src/
ls
cd userprog/
make
make check
make grade
ls
vi Make.vars
ls
cd build/
make grade
cd ..
cd &home
cd $home
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
make check
make grade
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make
make grade
cd ..
ls
cd userprog/
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make
pintos -f -q
cd build/
pintos -f -q
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
pintos -f -q
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make
pintos
pintos -f
cd ..
cd utils/
ls
vi pintos
make
cd ..
cd userprog/
make
pintos
pintos -f -q
cd ..
ls
cd ..
ls
cd src/
ls
cd utils/
ls
vi pintos
ls
vi pintos-mkdisk 
ls
vi pintos.pm
vi Pintos.pm
cd ..
ls
cd userprog/
ls
make
pintos -f -q
make grade
make clean
make grade
cd build/
make grade
cd ../syscall.c
vi ../syscall.c
make
vi ../syscall.c
make
make grade
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
cd build/
make grade
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
make clean
make grade
ls
pintos -f -q
ls
cd pintos
ls
cd src/
ls
pintos -f -q
cd userprog/
pintos -f -q
make grade
make clean
make grade
pintos -f -q
make grade
pintos -f -q
make grade
make
pintos -f -q
make grade
make clean
pintos -f -q
cd build
ls
make
pintos -f -q
ls
make clean
make
pintos -f -q
make clean
make grade
make clean
pintos -f -q
make
pintos -f -q
make grade
cd build/
make grade
make
make clean
make
pintos -f -q
make grade
make clean
ls
cd ..
ls
make clean
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
ls
cd ..
ls
cd threads/
make
make clean
make
cd ..
ls
cd userprog/
make
make grade
make clean
ls
make
pintos -f -q
pintos –p ../../examples/echo –a echo –– –q
pintos –p ../../examples/echo -a echo -- -q
pintos -p ../../examples/echo -a echo -- -q
cd build/
pintos -p ../../examples/echo -a echo -- -q
cd ..
ls
cd examples/
make
cd ..
ls
cd userprog/
ls
make
cd build/
make
pintos -f -q
ls
cd ..
pintos -f -q
make grade
ls
pintos-mkdisk fiesys.dsk --filesys-size=2
pintos -f -q
cd build/
pintos -f -q
cd ..
ls
cd ..
ls
cd filesys/
cd ..
ls
cd userprog/
pintos -f -q
cd build/
pintos -f -q
pintos-mkdisk fiesys.dsk --filesys-size=2
pintos -f -q
cd ..
ls
cd ..
ls
cd filesys/
ls
vi filesys.c
vi file.c
vi filesys.c
vi directory.c
vi directory.h
cd ..
ls
cd userprog/
make
make clean
cd ..
ls
cd threads/
make clean
cd ..
cd userprog/
pintos-mkdisk fiesys.dsk --filesys-size=2
pintos -f -q
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
ls
pintos -f -q
pintos-mkdisk fiesys.dsk --filesys-size=2
cd ..
ls
cd threads/
pintos-mkdisk fiesys.dsk --filesys-size=2
pintos -f -q
cd ..
ls
cd userprog/
pintos -f -q
cd ..
ls
cd threads/
ls
pintos
pintos -f -q
cd threads/
cd ..
ls
cd userprog/
ls
pintos -f -q
cd bu
make
pintos -f -q
make
pintos -f -q
ls
cd build/
pintos-mkdisk fiesys.dsk --filesys-size=2
pintos -f -q
pintos -p ../../examples/echo -a echo -- -q
cd ..
make clean
ls
cd ..
ls
cd filesys/
make clean
ls
cd ..
cd examples/
make clean
cd ..
ls
cd threads/
make clean
ls
rm fiesys.dsk 
ls
cd ..
cd threads/
make
cd ..
ls
cd userprog/
ls
make
cd build/
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make grade
make clean
ls
make
pintos -f -q
pintos -p ../../examples/echo -a echo -- -q
cd ..
ls
cd ..
ls
cd examples/
amke
make
ls
cd ..
ls
cd userprog/
cd build/
pintos -p ../../examples/echo -a echo -- -q
pintos -q run 'echo x'
ls
cd pintos
ls
cd src/
ls
cd threads/
make clean
make
cd ..
ls
cd userprog/
make
make clean
ls
make
cd build/
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
pintos -p ../../examples/echo -a echo -- -f -q run 'echo x'
make check
ls
cd ..
ls
cd build/
ls
make grade
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
cd ..
ls
cd ..
ls
cd utils/
ls
vi pintos
vi Pintos.pm 
cd ..
ls
cd userprog/
ls
make
cd build/
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make check
make grade
make check
ls
cd ..
ls
make clean
make
cd build/
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
ls
make
ls
make check
cd ..
vi syscall.c
make
ls
cd build/
ls
make check
make
make check
ls
cd ..
ls
cd ..
cd ../../
ls
cd pintos-0746/
ls
cd src/
ls
cd userprog/
ls
vi process.c
ls
cd ..
ls
cd ..
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
cd build/
make check
ls
make check
make grade
ls
cd ..
ls
vi syscall.c
ls
cd ..
ls
cd threads/
ls
vi thread.h
vi thread.c
cd ..
ls
cd userprog/
ls
vi process.c
vi syscall.c
ls
vi process.c
vi syscall.c
vi process.
vi process.c
vi syscall.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
vi syscall.c
make
vi syscall.c
vi process.c
make
vi process.c
make
vi process.c
make
vi syscall.c
vi process.c
vi syscall.c
vi process.c
vi syscall.c
make
vi process.c
make
vi process.c
vi syscall.c
make
vi syscall.c
make
ls
vi syscall.c
vi process.c
vi syscall.c
ls
cd ../threads/thread.c
vi ../threads/thread.c
vi ../threads/thread.h
make
vi syscall.c
make
make check
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
vi exception.c
ls
cd build/
ls
make clean
ls
make
ls
cd ..
make clean
make
cd build/
ls
make
ls
make
cd ..
ls
vi syscall.c
make
make check
vi syscall.c
vi process.c
vi syscall.c
ls
cd ../threads/thread.c
vi ../threads/thread.c
vi syscall.c
vi process.c
make
make check
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd build/
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q -f run args-none
cd ../threads/thread.c
vi ../threads/thread.c
vi ../../threads/thread.c
vi ../process.c
make check
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg
vi ../../threads/thread.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg
make check
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
vi ../process.c
mae
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
vi ../process.c
make clean
ls
make
vi ../process.c
make
cd ..
ls
cd build/
ls
vi ../process.o
vi ../process.c
make
vi ../process.o
vi ../process.c
make
vi process.c
vi ..//process.c
make
vi ..//process.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
syscall.c
vi syscall.c
make
cd build/
make check
tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
vi process.c
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
vi ../syscall.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
make check
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg
make check
vi ../process.c
make
make check
cd ..
ls
cd ..
cd threads/
vi thread.c
cd ..
ls
cd userprog/
ls
vi processc
vi process.c
make
make check\
vi process.c
make
make check
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg
make check
make
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg
make check
make
ls
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
make check
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make check
make
make check
args-dbl-space$ pintos â€“p ../../examples/echo â€“a echo â€“â€“ â€“q
$ pintos â€“p ../../examples/echo â€“a echo â€“â€“ â€“q
pintos â€“p ../../examples/echo â€“a echo â€“â€“ â€“q
pintos -p ../../examples/echo -a echo -- -q
make check
ls
cd ..
make
cd build/
ls
make clean
ls
make
pintos -p ../../examples/echo -a echo -- -q
ls
make
pintos -p ../../examples/echo -a echo -- -q
pintos-mkdisk filesys.dsk --filesys-size=2
make
make check
cd ..
make cleean
make clean
make
cd build/
ls
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
make check
ls
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' 
make
make check
cd ..
ls
vi processc
vi syscall.c
vi syscall.h
vi processc
vi process.c
make
ls
cd build/
ls
make clean
ls
make
make chec
make check
ls
make check
make
make check
cd..
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
make
cd build/
make check
cd ..
ls
make
make check
make clean
make
make check
cd ..
ls
cd threads/
make
cd ..
ls
cd userprog/
make
ls
cd build/
make
cd ..
ls
make
cd ..
ls
cd threads/
make clean
make
ls
make
cd ..
ls
cd us
cd userprog/
make
vi syscall.
vi syscall.c
make
make check
cd ..
ls
cd userprog/
ls
vi syscall.c
make
make grade
cd build/
make grade
ls
make
:q
cd ..
vi syscall.c
make
cd build/
make check
cdd ..
ls
cd ..
vi syscall.c
vi process.c
vi syscall.c
cd ..
ls
cd filesys/
ls
vi file.cc
vi file.c
ls
cd ..
ls
cd threads/
ls
vi thread.h
vi syscall.c
cd ..
ls
cd userprog/
ls
vi syscall.c
make
make check
ls
vi syscall.c
make
make check
make grade
ls
git
git add .
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi process.c
make
vi ../threads/thread.c
make
vi ../threads/thread.c
make
make check
ls
vi process.c
make
make check
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q  -f run create-null
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q  -f run create-null
cd ..
ls
vi syscall
vi syscall.c
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q  -f run create-null
vi process.c
cd ..
ls
cd process.c
vi process.c
make
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q  -f run create-null
vi process.c
cd ..
ls
vi syscallc
vi syscall.c
make
vi process.c
make
make check
vi process.c
make
make check
ls
cd ../threads/
ls
vi thread.c
make
vi thread.c
make
make check
cd ..
cd userprog/
ls
cd build/
make check
make
cd ..
ls
vi process.c
cd ../threads
vi thread.c
cd ..
ls
cd userprog/
ls
make
make check
vi process.c
make
make check
vi process.c
make
make check
vi process.c
make
make check
vi process.c
make
vi process.c
make
make check
vi process.c
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
ls
vi process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
cd ../process.c
vi ../process.c
cd ..
vi syscall.c
ls
make
vi process.c
make
vi process.c
make
make check
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
pintos -v -k -T 10 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
cd ..
ls
vi process.c
vi syscall.c
make
cd  build/
pintos -v -k -T 10 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
vi ../syscall.c
vi ../process.
vi ../process.c
make
vi ../process.c
vi ../../threads/thread.c
make
pintos -v -k -T 10 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
vi ../process.c
make
vi ../process.c
make
pintos -v -k -T 10 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg'
vi ../../threads/thread.c
make
make check
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../process.c
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../../threads/thread.c
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../process.c
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
make check
vi ../process.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../syscall.c
make
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!'
vi ../syscall.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
vi syscall.c
make
cd nu
make check
vi ..//process.c
vi process.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
cd build/
make
vi ../process.c
make
make check
cd .
cd ..
ls
vi process.c
make
vi process.c
make
make check
make
make check
cd build/
make check
vi ../process.c
make
make check
vi ../process.c
make
make check
vi ../process.c
make
make check
vi ../process.c
make
make check
vi ../process.c
make
vi ../process.c
make
vi ../process.c
make
make check
vi ../process.c
make
make check
vi ../process.c
make
vi ../process.c
make
cd ..
ls
cd ..
cd threads/
ls
vi thread.c
cd ..
ls
cd userprog/
cd build/
vi ../process.c
make
vi ../process.c
cd ..
ls
vi ../threads/thread.c
make
vi ../process.c
cd build/
vi ../process.c
cd ..
cd tests/
cd userprog/
ls
cd ..
ls
cd userprog/
cd build/
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/rox-multichild -a rox-multichild -p tests/userprog/child-rox -a child-rox -- -q  -f run rox-multichild 
ls
cd tests/
ls
cd userprog/
ls
vi rox-multichild.result
vi rox-multichild.output
vi rox-multichild.errors
cd bu
cd ..
ls
cd ..cdc
cd ..
cd userprog/
cd bu
cd ..
make
make check
make
make check
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/rox-simple -a rox-simple -- -q  -f run rox-simple < /dev/null 2> tests/userprog/rox-simple.errors > tests/userprog/rox-simple.output
pintos -v -k -T 60 --qemu --filesys-size=2 -p tests/userprog/rox-simple -a rox-simple -- -q -f run rox-simple
make
make check
make
make check
make
make check
make
make check
make
make check
make
make check
make
make check
make
make check
mkae
make
make check
make grade
ls
cd pintos
ls
cd src/
ls
cd userprog/
cd build/
make check
make
make check
make
make check
make
make check
make
make check
cd ..
ls
cd ..
ls
cd tests/
cd userprog/
ls
cd ..
ls
cd userprog/
ls
cd build/
make check
make grade
cd ..
ls
vi processc
vi process.c
vi process.h
vi syscall.c
ls
cd pintos
ls
cd src/
ls
cd userprog/
ls
vi syscall.c
vi process.c
make
vi exception.c
make
make check
make
vi thread.c
cd ..
cd threads/
ls
vi thread.c
cd ..
cd userprog/
make
vi process.c
make
vi process.h
vi process.c
make
ls
make
cd ..
cd userprog/
make
cd build/
make
dc ..
ls
make
vi syscall.c
vi ../syscall.c
make
make check
make
vi ../syscall.c
make
make check
make
make check
make
make check
make
make check
make
vi ../syscall.c
make
vi ../syscall.c
make
make check
make
vi ../syscall.c
make
vi ../syscall.c
make
make check
cd ..
ls
cd threads/
vi thread.c
cd ..
cd threads/
make
cd ..
ls
cd threads/
make
make check
cd ..
ls
cd userprog/
ls
cd build/
make
cd ..
make
vi syscall.c
make
vi syscall.c
make
vi syscall.c
make
vi process.c
make
vi process.c
make
vi process.c
make
make check
cd ..
ls
cd ..
ls
cd src/
make clean
tar â€“czvf os_prj2_2_2_48.tar.gz ./48
tar -czvf os_prj2_2_2_48.tar.gz ./48
ls
cd ..
tar -czvf os_prj2_2_2_48.tar.gz ./48
ls
