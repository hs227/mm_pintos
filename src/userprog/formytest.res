pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-single -a args-single -- -q   -f run 'args-single onearg' < /dev/null 2> tests/userprog/args-single.errors > tests/userprog/args-single.output
perl -I../.. ../../tests/userprog/args-single.ck tests/userprog/args-single tests/userprog/args-single.result
pass tests/userprog/args-single
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q   -f run args-none < /dev/null 2> tests/userprog/args-none.errors > tests/userprog/args-none.output
perl -I../.. ../../tests/userprog/args-none.ck tests/userprog/args-none tests/userprog/args-none.result
pass tests/userprog/args-none
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-multiple -a args-multiple -- -q   -f run 'args-multiple some arguments for you!' < /dev/null 2> tests/userprog/args-multiple.errors > tests/userprog/args-multiple.output
perl -I../.. ../../tests/userprog/args-multiple.ck tests/userprog/args-multiple tests/userprog/args-multiple.result
pass tests/userprog/args-multiple
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-many -a args-many -- -q   -f run 'args-many a b c d e f g h i j k l m n o p q r s t u v' < /dev/null 2> tests/userprog/args-many.errors > tests/userprog/args-many.output
perl -I../.. ../../tests/userprog/args-many.ck tests/userprog/args-many tests/userprog/args-many.result
pass tests/userprog/args-many
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-dbl-space -a args-dbl-space -- -q   -f run 'args-dbl-space two  spaces!' < /dev/null 2> tests/userprog/args-dbl-space.errors > tests/userprog/args-dbl-space.output
perl -I../.. ../../tests/userprog/args-dbl-space.ck tests/userprog/args-dbl-space tests/userprog/args-dbl-space.result
pass tests/userprog/args-dbl-space
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-jump -a bad-jump -- -q   -f run bad-jump < /dev/null 2> tests/userprog/bad-jump.errors > tests/userprog/bad-jump.output
perl -I../.. ../../tests/userprog/bad-jump.ck tests/userprog/bad-jump tests/userprog/bad-jump.result
pass tests/userprog/bad-jump
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-jump2 -a bad-jump2 -- -q   -f run bad-jump2 < /dev/null 2> tests/userprog/bad-jump2.errors > tests/userprog/bad-jump2.output
perl -I../.. ../../tests/userprog/bad-jump2.ck tests/userprog/bad-jump2 tests/userprog/bad-jump2.result
pass tests/userprog/bad-jump2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-read -a bad-read -- -q   -f run bad-read < /dev/null 2> tests/userprog/bad-read.errors > tests/userprog/bad-read.output
perl -I../.. ../../tests/userprog/bad-read.ck tests/userprog/bad-read tests/userprog/bad-read.result
pass tests/userprog/bad-read
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-read2 -a bad-read2 -- -q   -f run bad-read2 < /dev/null 2> tests/userprog/bad-read2.errors > tests/userprog/bad-read2.output
perl -I../.. ../../tests/userprog/bad-read2.ck tests/userprog/bad-read2 tests/userprog/bad-read2.result
pass tests/userprog/bad-read2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-write -a bad-write -- -q   -f run bad-write < /dev/null 2> tests/userprog/bad-write.errors > tests/userprog/bad-write.output
perl -I../.. ../../tests/userprog/bad-write.ck tests/userprog/bad-write tests/userprog/bad-write.result
pass tests/userprog/bad-write
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/bad-write2 -a bad-write2 -- -q   -f run bad-write2 < /dev/null 2> tests/userprog/bad-write2.errors > tests/userprog/bad-write2.output
perl -I../.. ../../tests/userprog/bad-write2.ck tests/userprog/bad-write2 tests/userprog/bad-write2.result
pass tests/userprog/bad-write2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/stack-align-0 -a stack-align-0 -- -q   -f run stack-align-0 < /dev/null 2> tests/userprog/stack-align-0.errors > tests/userprog/stack-align-0.output
perl -I../.. ../../tests/userprog/stack-align-0.ck tests/userprog/stack-align-0 tests/userprog/stack-align-0.result
pass tests/userprog/stack-align-0
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/stack-align-1 -a stack-align-1 -- -q   -f run stack-align-1 < /dev/null 2> tests/userprog/stack-align-1.errors > tests/userprog/stack-align-1.output
perl -I../.. ../../tests/userprog/stack-align-1.ck tests/userprog/stack-align-1 tests/userprog/stack-align-1.result
pass tests/userprog/stack-align-1
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/stack-align-2 -a stack-align-2 -- -q   -f run 'stack-align-2 a' < /dev/null 2> tests/userprog/stack-align-2.errors > tests/userprog/stack-align-2.output
perl -I../.. ../../tests/userprog/stack-align-2.ck tests/userprog/stack-align-2 tests/userprog/stack-align-2.result
pass tests/userprog/stack-align-2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/stack-align-3 -a stack-align-3 -- -q   -f run 'stack-align-3 ab' < /dev/null 2> tests/userprog/stack-align-3.errors > tests/userprog/stack-align-3.output
perl -I../.. ../../tests/userprog/stack-align-3.ck tests/userprog/stack-align-3 tests/userprog/stack-align-3.result
pass tests/userprog/stack-align-3
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/stack-align-4 -a stack-align-4 -- -q   -f run 'stack-align-4 ab cd' < /dev/null 2> tests/userprog/stack-align-4.errors > tests/userprog/stack-align-4.output
perl -I../.. ../../tests/userprog/stack-align-4.ck tests/userprog/stack-align-4 tests/userprog/stack-align-4.result
pass tests/userprog/stack-align-4
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/do-nothing -a do-nothing -- -q   -f run do-nothing < /dev/null 2> tests/userprog/do-nothing.errors > tests/userprog/do-nothing.output
perl -I../.. ../../tests/userprog/do-nothing.ck tests/userprog/do-nothing tests/userprog/do-nothing.result
pass tests/userprog/do-nothing
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/iloveos -a iloveos -- -q   -f run iloveos < /dev/null 2> tests/userprog/iloveos.errors > tests/userprog/iloveos.output
perl -I../.. ../../tests/userprog/iloveos.ck tests/userprog/iloveos tests/userprog/iloveos.result
pass tests/userprog/iloveos
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/practice -a practice -- -q   -f run practice < /dev/null 2> tests/userprog/practice.errors > tests/userprog/practice.output
perl -I../.. ../../tests/userprog/practice.ck tests/userprog/practice tests/userprog/practice.result
pass tests/userprog/practice
