#!/usr/bin/env bash

status=0

for test in test__*; do
    eval ./$test > logs/$test.log 2>&1
    
    if [[ "$?" == 0 ]]; then
	echo "'$test' PASSED"
    else
	echo "'$test' FAILED"
	status=1
    fi
done

echo ''

if [[ "$status" == 0 ]]; then
    echo "Status is PASSED"
else
    echo "Status is FAILED"
fi
