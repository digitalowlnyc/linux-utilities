FILE=$1

if test -f "$FILE"; then
  FILE_DATE=`date +%d-%m-%y_%H-%M-%S`
  mv $FILE $FILE.$FILE_DATE.archived
fi
