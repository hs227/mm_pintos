pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=fifo -f rtkt alarm-negative < /dev/null 2> tests/threads/alarm-negative.errors > tests/threads/alarm-negative.output
perl -I../.. ../../tests/threads/alarm-negative.ck tests/threads/alarm-negative tests/threads/alarm-negative.result
pass tests/threads/alarm-negative
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=fifo -f rtkt alarm-simultaneous < /dev/null 2> tests/threads/alarm-simultaneous.errors > tests/threads/alarm-simultaneous.output
perl -I../.. ../../tests/threads/alarm-simultaneous.ck tests/threads/alarm-simultaneous tests/threads/alarm-simultaneous.result
pass tests/threads/alarm-simultaneous
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=fifo -f rtkt alarm-single < /dev/null 2> tests/threads/alarm-single.errors > tests/threads/alarm-single.output
perl -I../.. ../../tests/threads/alarm-single.ck tests/threads/alarm-single tests/threads/alarm-single.result
pass tests/threads/alarm-single
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=fifo -f rtkt alarm-zero < /dev/null 2> tests/threads/alarm-zero.errors > tests/threads/alarm-zero.output
perl -I../.. ../../tests/threads/alarm-zero.ck tests/threads/alarm-zero tests/threads/alarm-zero.result
pass tests/threads/alarm-zero
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=fifo -f rtkt alarm-multiple < /dev/null 2> tests/threads/alarm-multiple.errors > tests/threads/alarm-multiple.output
perl -I../.. ../../tests/threads/alarm-multiple.ck tests/threads/alarm-multiple tests/threads/alarm-multiple.result
pass tests/threads/alarm-multiple
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt alarm-priority < /dev/null 2> tests/threads/alarm-priority.errors > tests/threads/alarm-priority.output
perl -I../.. ../../tests/threads/alarm-priority.ck tests/threads/alarm-priority tests/threads/alarm-priority.result
pass tests/threads/alarm-priority
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-donate-one < /dev/null 2> tests/threads/priority-donate-one.errors > tests/threads/priority-donate-one.output
perl -I../.. ../../tests/threads/priority-donate-one.ck tests/threads/priority-donate-one tests/threads/priority-donate-one.result
pass tests/threads/priority-donate-one
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-preempt < /dev/null 2> tests/threads/priority-preempt.errors > tests/threads/priority-preempt.output
perl -I../.. ../../tests/threads/priority-preempt.ck tests/threads/priority-preempt tests/threads/priority-preempt.result
pass tests/threads/priority-preempt
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-starve < /dev/null 2> tests/threads/priority-starve.errors > tests/threads/priority-starve.output
perl -I../.. ../../tests/threads/priority-starve.ck tests/threads/priority-starve tests/threads/priority-starve.result
pass tests/threads/priority-starve
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-starve-sema < /dev/null 2> tests/threads/priority-starve-sema.errors > tests/threads/priority-starve-sema.output
perl -I../.. ../../tests/threads/priority-starve-sema.ck tests/threads/priority-starve-sema tests/threads/priority-starve-sema.result
pass tests/threads/priority-starve-sema
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-sema < /dev/null 2> tests/threads/priority-sema.errors > tests/threads/priority-sema.output
perl -I../.. ../../tests/threads/priority-sema.ck tests/threads/priority-sema tests/threads/priority-sema.result
pass tests/threads/priority-sema
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-condvar < /dev/null 2> tests/threads/priority-condvar.errors > tests/threads/priority-condvar.output
perl -I../.. ../../tests/threads/priority-condvar.ck tests/threads/priority-condvar tests/threads/priority-condvar.result
pass tests/threads/priority-condvar
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-change < /dev/null 2> tests/threads/priority-change.errors > tests/threads/priority-change.output
perl -I../.. ../../tests/threads/priority-change.ck tests/threads/priority-change tests/threads/priority-change.result
pass tests/threads/priority-change
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-donate-chain < /dev/null 2> tests/threads/priority-donate-chain.errors > tests/threads/priority-donate-chain.output
perl -I../.. ../../tests/threads/priority-donate-chain.ck tests/threads/priority-donate-chain tests/threads/priority-donate-chain.result
pass tests/threads/priority-donate-chain
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-donate-lower < /dev/null 2> tests/threads/priority-donate-lower.errors > tests/threads/priority-donate-lower.output
perl -I../.. ../../tests/threads/priority-donate-lower.ck tests/threads/priority-donate-lower tests/threads/priority-donate-lower.result
pass tests/threads/priority-donate-lower
pintos -v -k -T 60 --bochs  --filesys-size=2  -- -q  -sched=prio -f rtkt priority-fifo < /dev/null 2> tests/threads/priority-fifo.errors > tests/threads/priority-fifo.output
perl -I../.. ../../tests/threads/priority-fifo.ck tests/threads/priority-fifo tests/threads/priority-fifo.result
pass tests/threads/priority-fifo
