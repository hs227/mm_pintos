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
