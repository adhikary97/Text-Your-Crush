declare -a MYMAP=( [5555556666]="Eva" [5555556677]="Celia" )  # e.g. [phone number]="name"

for k in "${!MYMAP[@]}";
do
  printf "%s\n" "$k=${MYMAP[$k]}"
  osascript message.applescript "$k" "Hey ${MYMAP[$k]} I like you"  # ${MYMAP[$k]} this is a placeholder for the names
done
