#/bin/bash
echo "Param1: ${1}"
echo "Param2: ${2}"
echo "Param3: ${3}"

echo "--------------------------------------"

while [[ "${#}" -gt 0 ]]
do
echo "Parameter: ${1}"
shift 1
done