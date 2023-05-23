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
pintos-test priority-sema      | tee -a formytest.res
pintos-test priority-condvar   | tee -a formytest.res
pintos-test priority-change    | tee -a formytest.res
pintos-test priority-donate-chain| tee -a formytest.res
pintos-test priority-donate-lower| tee -a formytest.res
pintos-test priority-fifo      | tee -a formytest.res
pintos-test priority-nest      | tee -a formytest.res
pintos-test priority-donate-sema| tee -a formytest.res
pintos-test priority-donate-multiple| tee -a formytest.res
pintos-test priority-donate-multiple2| tee -a formytest.res






