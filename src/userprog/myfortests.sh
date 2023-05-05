#!/bin/bash


# checkpoint1
pintos-test args-single    | tee    formytest.res
pintos-test args-none      | tee -a formytest.res
pintos-test args-multiple  | tee -a formytest.res
pintos-test args-many      | tee -a formytest.res
pintos-test args-dbl-space | tee -a formytest.res
pintos-test bad-jump       | tee -a formytest.res
pintos-test bad-jump2      | tee -a formytest.res
pintos-test bad-read       | tee -a formytest.res
pintos-test bad-read2      | tee -a formytest.res
pintos-test bad-write      | tee -a formytest.res
pintos-test bad-write2     | tee -a formytest.res
pintos-test stack-align-0  | tee -a formytest.res
pintos-test stack-align-1  | tee -a formytest.res
pintos-test stack-align-2  | tee -a formytest.res
pintos-test stack-align-3  | tee -a formytest.res
pintos-test stack-align-4  | tee -a formytest.res
pintos-test do-nothing     | tee -a formytest.res
pintos-test iloveos        | tee -a formytest.res
pintos-test practice       | tee -a formytest.res

# checkpoint2
pintos-test exec-arg       | tee -a formytest.res
pintos-test exec-bad-ptr   | tee -a formytest.res
pintos-test exec-bound     | tee -a formytest.res
pintos-test exec-bound-2   | tee -a formytest.res
pintos-test exec-bound-3   | tee -a formytest.res
pintos-test exec-missing   | tee -a formytest.res
pintos-test exec-multiple  | tee -a formytest.res
pintos-test exec-once      | tee -a formytest.res





