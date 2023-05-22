#!/bin/bash


# checkpoint1
pintos-test alarm-negative     | tee    formytest.res
pintos-test alarm-simultaneous | tee -a formytest.res
pintos-test alarm-single       | tee -a formytest.res
pintos-test alarm-zero         | tee -a formytest.res
pintos-test alarm-multiple     | tee -a formytest.res

# checkpoint2
pintos-test alarm-priority     | tee -a formytest.res
pintos-test priority-donate-one| tee -a formytest.res
pintos-test priority-preempt   | tee -a formytest.res
pintos-test priority-starve    | tee -a formytest.res
pintos-test priority-starve-sema| tee -a formytest.res






