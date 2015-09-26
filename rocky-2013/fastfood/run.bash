#!/bin/bash

#
# run.bash # example
#
# run.bash test # all test cases
#

DIFF_FLAGS="-c3"

PROBLEM_NAME=$(basename $(pwd))

./clean.bash

DIR="example"
if [[ "$1" == "test" ]] ; then
    DIR="test"
fi


if ! javac ${PROBLEM_NAME}.java ; then
    echo "Code didn't compile; fix that."
    exit 1
fi

for example in $DIR* ; do

    echo $example

    in=${example}/${PROBLEM_NAME}.in
    out=${example}.your-out
    correct=${example}/${PROBLEM_NAME}.out
    copycorrect=${example}.their-out
    diff=${example}.diff

    java ${PROBLEM_NAME} < $in > $out
    if ! diff $DIFF_FLAGS $out $correct > $diff ; then

        cp $correct $copycorrect

        echo "Failed ${example}"
        exit 1

    else
        rm -f $out $diff $copycorrect
    fi
done
