#!/usr/bin/env bash

cd ..

error=`mktemp`
./rgen.py 2>$error

if [[ "$?" == 0 ]]; then
    exit 1
fi

# Emit captured output from 'rgen.py'
cat < $error >&2

if ! grep -q "too few arguments" $error; then
    if ! grep -q "the following arguments are required" $error; then
	exit 1
    fi
fi

exit 0
