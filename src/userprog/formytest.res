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
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/halt -a halt -- -q   -f run halt < /dev/null 2> tests/userprog/halt.errors > tests/userprog/halt.output
perl -I../.. ../../tests/userprog/halt.ck tests/userprog/halt tests/userprog/halt.result
pass tests/userprog/halt
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-arg -a exec-arg -p tests/userprog/child-args -a child-args -- -q   -f run exec-arg < /dev/null 2> tests/userprog/exec-arg.errors > tests/userprog/exec-arg.output
perl -I../.. ../../tests/userprog/exec-arg.ck tests/userprog/exec-arg tests/userprog/exec-arg.result
pass tests/userprog/exec-arg
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bad-ptr -a exec-bad-ptr -- -q   -f run exec-bad-ptr < /dev/null 2> tests/userprog/exec-bad-ptr.errors > tests/userprog/exec-bad-ptr.output
perl -I../.. ../../tests/userprog/exec-bad-ptr.ck tests/userprog/exec-bad-ptr tests/userprog/exec-bad-ptr.result
pass tests/userprog/exec-bad-ptr
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bound -a exec-bound -p tests/userprog/child-args -a child-args -- -q   -f run exec-bound < /dev/null 2> tests/userprog/exec-bound.errors > tests/userprog/exec-bound.output
perl -I../.. ../../tests/userprog/exec-bound.ck tests/userprog/exec-bound tests/userprog/exec-bound.result
pass tests/userprog/exec-bound
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bound-2 -a exec-bound-2 -- -q   -f run exec-bound-2 < /dev/null 2> tests/userprog/exec-bound-2.errors > tests/userprog/exec-bound-2.output
perl -I../.. ../../tests/userprog/exec-bound-2.ck tests/userprog/exec-bound-2 tests/userprog/exec-bound-2.result
pass tests/userprog/exec-bound-2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-bound-3 -a exec-bound-3 -- -q   -f run exec-bound-3 < /dev/null 2> tests/userprog/exec-bound-3.errors > tests/userprog/exec-bound-3.output
perl -I../.. ../../tests/userprog/exec-bound-3.ck tests/userprog/exec-bound-3 tests/userprog/exec-bound-3.result
pass tests/userprog/exec-bound-3
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-missing -a exec-missing -- -q   -f run exec-missing < /dev/null 2> tests/userprog/exec-missing.errors > tests/userprog/exec-missing.output
perl -I../.. ../../tests/userprog/exec-missing.ck tests/userprog/exec-missing tests/userprog/exec-missing.result
pass tests/userprog/exec-missing
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-multiple -a exec-multiple -p tests/userprog/child-simple -a child-simple -- -q   -f run exec-multiple < /dev/null 2> tests/userprog/exec-multiple.errors > tests/userprog/exec-multiple.output
perl -I../.. ../../tests/userprog/exec-multiple.ck tests/userprog/exec-multiple tests/userprog/exec-multiple.result
pass tests/userprog/exec-multiple
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/exec-once -a exec-once -p tests/userprog/child-simple -a child-simple -- -q   -f run exec-once < /dev/null 2> tests/userprog/exec-once.errors > tests/userprog/exec-once.output
perl -I../.. ../../tests/userprog/exec-once.ck tests/userprog/exec-once tests/userprog/exec-once.result
pass tests/userprog/exec-once
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-bad-ptr -a create-bad-ptr -- -q   -f run create-bad-ptr < /dev/null 2> tests/userprog/create-bad-ptr.errors > tests/userprog/create-bad-ptr.output
perl -I../.. ../../tests/userprog/create-bad-ptr.ck tests/userprog/create-bad-ptr tests/userprog/create-bad-ptr.result
pass tests/userprog/create-bad-ptr
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-bound -a create-bound -- -q   -f run create-bound < /dev/null 2> tests/userprog/create-bound.errors > tests/userprog/create-bound.output
perl -I../.. ../../tests/userprog/create-bound.ck tests/userprog/create-bound tests/userprog/create-bound.result
pass tests/userprog/create-bound
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-empty -a create-empty -- -q   -f run create-empty < /dev/null 2> tests/userprog/create-empty.errors > tests/userprog/create-empty.output
perl -I../.. ../../tests/userprog/create-empty.ck tests/userprog/create-empty tests/userprog/create-empty.result
pass tests/userprog/create-empty
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-exists -a create-exists -- -q   -f run create-exists < /dev/null 2> tests/userprog/create-exists.errors > tests/userprog/create-exists.output
perl -I../.. ../../tests/userprog/create-exists.ck tests/userprog/create-exists tests/userprog/create-exists.result
pass tests/userprog/create-exists
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-long -a create-long -- -q   -f run create-long < /dev/null 2> tests/userprog/create-long.errors > tests/userprog/create-long.output
perl -I../.. ../../tests/userprog/create-long.ck tests/userprog/create-long tests/userprog/create-long.result
pass tests/userprog/create-long
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-normal -a create-normal -- -q   -f run create-normal < /dev/null 2> tests/userprog/create-normal.errors > tests/userprog/create-normal.output
perl -I../.. ../../tests/userprog/create-normal.ck tests/userprog/create-normal tests/userprog/create-normal.result
pass tests/userprog/create-normal
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/create-null -a create-null -- -q   -f run create-null < /dev/null 2> tests/userprog/create-null.errors > tests/userprog/create-null.output
perl -I../.. ../../tests/userprog/create-null.ck tests/userprog/create-null tests/userprog/create-null.result
pass tests/userprog/create-null
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-bad-ptr -a open-bad-ptr -- -q   -f run open-bad-ptr < /dev/null 2> tests/userprog/open-bad-ptr.errors > tests/userprog/open-bad-ptr.output
perl -I../.. ../../tests/userprog/open-bad-ptr.ck tests/userprog/open-bad-ptr tests/userprog/open-bad-ptr.result
pass tests/userprog/open-bad-ptr
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-boundary -a open-boundary -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run open-boundary < /dev/null 2> tests/userprog/open-boundary.errors > tests/userprog/open-boundary.output
perl -I../.. ../../tests/userprog/open-boundary.ck tests/userprog/open-boundary tests/userprog/open-boundary.result
pass tests/userprog/open-boundary
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-empty -a open-empty -- -q   -f run open-empty < /dev/null 2> tests/userprog/open-empty.errors > tests/userprog/open-empty.output
perl -I../.. ../../tests/userprog/open-empty.ck tests/userprog/open-empty tests/userprog/open-empty.result
pass tests/userprog/open-empty
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-missing -a open-missing -- -q   -f run open-missing < /dev/null 2> tests/userprog/open-missing.errors > tests/userprog/open-missing.output
perl -I../.. ../../tests/userprog/open-missing.ck tests/userprog/open-missing tests/userprog/open-missing.result
pass tests/userprog/open-missing
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-normal -a open-normal -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run open-normal < /dev/null 2> tests/userprog/open-normal.errors > tests/userprog/open-normal.output
perl -I../.. ../../tests/userprog/open-normal.ck tests/userprog/open-normal tests/userprog/open-normal.result
pass tests/userprog/open-normal
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-null -a open-null -- -q   -f run open-null < /dev/null 2> tests/userprog/open-null.errors > tests/userprog/open-null.output
perl -I../.. ../../tests/userprog/open-null.ck tests/userprog/open-null tests/userprog/open-null.result
pass tests/userprog/open-null
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/open-twice -a open-twice -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run open-twice < /dev/null 2> tests/userprog/open-twice.errors > tests/userprog/open-twice.output
perl -I../.. ../../tests/userprog/open-twice.ck tests/userprog/open-twice tests/userprog/open-twice.result
pass tests/userprog/open-twice
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-bad-fd -a read-bad-fd -- -q   -f run read-bad-fd < /dev/null 2> tests/userprog/read-bad-fd.errors > tests/userprog/read-bad-fd.output
perl -I../.. ../../tests/userprog/read-bad-fd.ck tests/userprog/read-bad-fd tests/userprog/read-bad-fd.result
pass tests/userprog/read-bad-fd
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-bad-ptr -a read-bad-ptr -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run read-bad-ptr < /dev/null 2> tests/userprog/read-bad-ptr.errors > tests/userprog/read-bad-ptr.output
perl -I../.. ../../tests/userprog/read-bad-ptr.ck tests/userprog/read-bad-ptr tests/userprog/read-bad-ptr.result
pass tests/userprog/read-bad-ptr
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-boundary -a read-boundary -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run read-boundary < /dev/null 2> tests/userprog/read-boundary.errors > tests/userprog/read-boundary.output
perl -I../.. ../../tests/userprog/read-boundary.ck tests/userprog/read-boundary tests/userprog/read-boundary.result
pass tests/userprog/read-boundary
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-normal -a read-normal -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run read-normal < /dev/null 2> tests/userprog/read-normal.errors > tests/userprog/read-normal.output
perl -I../.. ../../tests/userprog/read-normal.ck tests/userprog/read-normal tests/userprog/read-normal.result
pass tests/userprog/read-normal
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-stdout -a read-stdout -- -q   -f run read-stdout < /dev/null 2> tests/userprog/read-stdout.errors > tests/userprog/read-stdout.output
perl -I../.. ../../tests/userprog/read-stdout.ck tests/userprog/read-stdout tests/userprog/read-stdout.result
pass tests/userprog/read-stdout
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/read-zero -a read-zero -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run read-zero < /dev/null 2> tests/userprog/read-zero.errors > tests/userprog/read-zero.output
perl -I../.. ../../tests/userprog/read-zero.ck tests/userprog/read-zero tests/userprog/read-zero.result
pass tests/userprog/read-zero
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-bad-fd -a write-bad-fd -- -q   -f run write-bad-fd < /dev/null 2> tests/userprog/write-bad-fd.errors > tests/userprog/write-bad-fd.output
perl -I../.. ../../tests/userprog/write-bad-fd.ck tests/userprog/write-bad-fd tests/userprog/write-bad-fd.result
pass tests/userprog/write-bad-fd
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-bad-ptr -a write-bad-ptr -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run write-bad-ptr < /dev/null 2> tests/userprog/write-bad-ptr.errors > tests/userprog/write-bad-ptr.output
perl -I../.. ../../tests/userprog/write-bad-ptr.ck tests/userprog/write-bad-ptr tests/userprog/write-bad-ptr.result
pass tests/userprog/write-bad-ptr
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-boundary -a write-boundary -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run write-boundary < /dev/null 2> tests/userprog/write-boundary.errors > tests/userprog/write-boundary.output
perl -I../.. ../../tests/userprog/write-boundary.ck tests/userprog/write-boundary tests/userprog/write-boundary.result
pass tests/userprog/write-boundary
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-normal -a write-normal -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run write-normal < /dev/null 2> tests/userprog/write-normal.errors > tests/userprog/write-normal.output
perl -I../.. ../../tests/userprog/write-normal.ck tests/userprog/write-normal tests/userprog/write-normal.result
pass tests/userprog/write-normal
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-stdin -a write-stdin -- -q   -f run write-stdin < /dev/null 2> tests/userprog/write-stdin.errors > tests/userprog/write-stdin.output
perl -I../.. ../../tests/userprog/write-stdin.ck tests/userprog/write-stdin tests/userprog/write-stdin.result
pass tests/userprog/write-stdin
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/write-zero -a write-zero -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run write-zero < /dev/null 2> tests/userprog/write-zero.errors > tests/userprog/write-zero.output
perl -I../.. ../../tests/userprog/write-zero.ck tests/userprog/write-zero tests/userprog/write-zero.result
pass tests/userprog/write-zero
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/close-bad-fd -a close-bad-fd -- -q   -f run close-bad-fd < /dev/null 2> tests/userprog/close-bad-fd.errors > tests/userprog/close-bad-fd.output
perl -I../.. ../../tests/userprog/close-bad-fd.ck tests/userprog/close-bad-fd tests/userprog/close-bad-fd.result
pass tests/userprog/close-bad-fd
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/close-normal -a close-normal -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run close-normal < /dev/null 2> tests/userprog/close-normal.errors > tests/userprog/close-normal.output
perl -I../.. ../../tests/userprog/close-normal.ck tests/userprog/close-normal tests/userprog/close-normal.result
pass tests/userprog/close-normal
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/close-stdin -a close-stdin -- -q   -f run close-stdin < /dev/null 2> tests/userprog/close-stdin.errors > tests/userprog/close-stdin.output
perl -I../.. ../../tests/userprog/close-stdin.ck tests/userprog/close-stdin tests/userprog/close-stdin.result
pass tests/userprog/close-stdin
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/close-stdout -a close-stdout -- -q   -f run close-stdout < /dev/null 2> tests/userprog/close-stdout.errors > tests/userprog/close-stdout.output
perl -I../.. ../../tests/userprog/close-stdout.ck tests/userprog/close-stdout tests/userprog/close-stdout.result
pass tests/userprog/close-stdout
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/close-twice -a close-twice -p ../../tests/userprog/sample.txt -a sample.txt -- -q   -f run close-twice < /dev/null 2> tests/userprog/close-twice.errors > tests/userprog/close-twice.output
perl -I../.. ../../tests/userprog/close-twice.ck tests/userprog/close-twice tests/userprog/close-twice.result
pass tests/userprog/close-twice
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/multi-child-fd -a multi-child-fd -p ../../tests/userprog/sample.txt -a sample.txt -p tests/userprog/child-close -a child-close -- -q   -f run multi-child-fd < /dev/null 2> tests/userprog/multi-child-fd.errors > tests/userprog/multi-child-fd.output
perl -I../.. ../../tests/userprog/multi-child-fd.ck tests/userprog/multi-child-fd tests/userprog/multi-child-fd.result
pass tests/userprog/multi-child-fd
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/multi-recurse -a multi-recurse -- -q   -f run 'multi-recurse 15' < /dev/null 2> tests/userprog/multi-recurse.errors > tests/userprog/multi-recurse.output
perl -I../.. ../../tests/userprog/multi-recurse.ck tests/userprog/multi-recurse tests/userprog/multi-recurse.result
pass tests/userprog/multi-recurse
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/rox-simple -a rox-simple -- -q   -f run rox-simple < /dev/null 2> tests/userprog/rox-simple.errors > tests/userprog/rox-simple.output
perl -I../.. ../../tests/userprog/rox-simple.ck tests/userprog/rox-simple tests/userprog/rox-simple.result
FAIL tests/userprog/rox-simple
run: try to write "rox-simple": FAILED
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-arg -a sc-bad-arg -- -q   -f run sc-bad-arg < /dev/null 2> tests/userprog/sc-bad-arg.errors > tests/userprog/sc-bad-arg.output
perl -I../.. ../../tests/userprog/sc-bad-arg.ck tests/userprog/sc-bad-arg tests/userprog/sc-bad-arg.result
pass tests/userprog/sc-bad-arg
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-bad-sp -a sc-bad-sp -- -q   -f run sc-bad-sp < /dev/null 2> tests/userprog/sc-bad-sp.errors > tests/userprog/sc-bad-sp.output
perl -I../.. ../../tests/userprog/sc-bad-sp.ck tests/userprog/sc-bad-sp tests/userprog/sc-bad-sp.result
pass tests/userprog/sc-bad-sp
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-boundary-2 -a sc-boundary-2 -- -q   -f run sc-boundary-2 < /dev/null 2> tests/userprog/sc-boundary-2.errors > tests/userprog/sc-boundary-2.output
perl -I../.. ../../tests/userprog/sc-boundary-2.ck tests/userprog/sc-boundary-2 tests/userprog/sc-boundary-2.result
pass tests/userprog/sc-boundary-2
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-boundary-3 -a sc-boundary-3 -- -q   -f run sc-boundary-3 < /dev/null 2> tests/userprog/sc-boundary-3.errors > tests/userprog/sc-boundary-3.output
perl -I../.. ../../tests/userprog/sc-boundary-3.ck tests/userprog/sc-boundary-3 tests/userprog/sc-boundary-3.result
pass tests/userprog/sc-boundary-3
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/sc-boundary -a sc-boundary -- -q   -f run sc-boundary < /dev/null 2> tests/userprog/sc-boundary.errors > tests/userprog/sc-boundary.output
perl -I../.. ../../tests/userprog/sc-boundary.ck tests/userprog/sc-boundary tests/userprog/sc-boundary.result
pass tests/userprog/sc-boundary
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/wait-bad-pid -a wait-bad-pid -- -q   -f run wait-bad-pid < /dev/null 2> tests/userprog/wait-bad-pid.errors > tests/userprog/wait-bad-pid.output
perl -I../.. ../../tests/userprog/wait-bad-pid.ck tests/userprog/wait-bad-pid tests/userprog/wait-bad-pid.result
pass tests/userprog/wait-bad-pid
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/wait-killed -a wait-killed -p tests/userprog/child-bad -a child-bad -- -q   -f run wait-killed < /dev/null 2> tests/userprog/wait-killed.errors > tests/userprog/wait-killed.output
perl -I../.. ../../tests/userprog/wait-killed.ck tests/userprog/wait-killed tests/userprog/wait-killed.result
pass tests/userprog/wait-killed
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/wait-simple -a wait-simple -p tests/userprog/child-simple -a child-simple -- -q   -f run wait-simple < /dev/null 2> tests/userprog/wait-simple.errors > tests/userprog/wait-simple.output
perl -I../.. ../../tests/userprog/wait-simple.ck tests/userprog/wait-simple tests/userprog/wait-simple.result
pass tests/userprog/wait-simple
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/wait-twice -a wait-twice -p tests/userprog/child-simple -a child-simple -- -q   -f run wait-twice < /dev/null 2> tests/userprog/wait-twice.errors > tests/userprog/wait-twice.output
perl -I../.. ../../tests/userprog/wait-twice.ck tests/userprog/wait-twice tests/userprog/wait-twice.result
pass tests/userprog/wait-twice
