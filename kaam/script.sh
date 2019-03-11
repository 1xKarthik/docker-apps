#!/bin/bash
filename="${0##*/}"
msg="Usage:- bash ${filename} space-separated-integers"
if [ $# -eq 0 ]
then
    echo $msg; exit 0
fi
for i do
    case $i in
        ''|*[!0-9]*) echo $msg; exit 0 ;;
        *) ;;
    esac
    sum=$(expr $sum + $i)
done
echo $sum

#This is an example of pattern matching. It succeeds if the value of string consists of 0 or more characters, 
#followed a single character that isn't in the range 0-9 (i.e., a non-numeric character), 
#followed by zero or more arbitrary characters. 
#In short, the pattern matches anything that contains at least one non-numeric character.

---
#!/bin/bash
FILE="${0##*/}"
MSG="Usage:- bash $FILE space-separated-integers"
if [ $# -eq 0 ]
then
    echo $MSG; exit 0
fi
for NUM in "$@"
do
    if ! [[ $NUM =~ ^[0-9]+$ ]];
    then
        echo $MSG; exit 0
    fi
    SUM=$(expr $SUM + $NUM)
done
echo $SUM


---
#!/bin/bash
FILE="${0##*/}"
MSG="Usage:- bash ${filename} space-separated-integers"
if [ $# -eq 0 ]
then
    echo $MSG; exit 0
fi
for NUM do
    case "$NUM" in
        ''|*[!0-9]*) echo $MSG; exit 0 ;;
    esac
    SUM=$(expr $SUM + $NUM)
done
echo $SUM

#LOGGING
logit() {
        local LOG_LEVEL=$1
        shift
        MSG=$@
        TIMESTAMP=$(date +"%Y-%m-%d %T")
        if [[ $LOG_LEVEL == 'ERROR' ]] || $VERBOSE
        then
                echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME}[${PID}]: ${LOG_LEVEL} ${MSG}" > qwe
        fi
}
logit ERROR nigga
---

#!/bin/bash
logit() {
        local MSG=$@
        local TIMESTAMP=$(date +"%Y-%m-%d %T")
        local RAND=$RANDOM
        echo $RAND
        logger -i -p user.info -t randomly "${RAND}"
}
logit
---

#!/bin/bash
INDEX=1
while [ $INDEX -lt 6 ]
do
        echo "Creating project-${INDEX}"
        mkdir -p "/tmp/local/project-${INDEX}"
        ((INDEX++))
done

#!/bin/bash
while [ "$C" != "y" ]
do
 read -p "Enter your name: " NAME
 read -p "is ${NAME} correct? " C
done
