# Playground script

# Test deleting substrings
string1="This is a big test of some big things."
match=" big"
string2=${string1/$match/}
echo
echo "Original string: ${string1}"
echo "match: $match"
echo "New string: ${string2}"
echo

echo "Original string1: ${string1}"
echo "match: $match"
string1=${string1//$match}
echo "New string1: ${string1}"

echo
echo "Start of while/regex test"
reg='^([^\)]*\))'
echo "reg=$reg"
string1="TGTRLS(V7R2M0) MODULE(ABCDEFG HIJKLMNO) TEXT('This is some test') OPTION(\*NODUPVAR \*NODUPPROC)"
echo "string1=$string1"

while [[ "${string1}" =~ ${reg} ]]; do
	echo "|${BASH_REMATCH[1]}|"
	string1=${string1:${#BASH_REMATCH[1]}}
	string1=${string1# }
done
