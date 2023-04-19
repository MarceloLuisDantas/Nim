import AnyTypeSeq

var v1 = newSeqOfEnyType()

v1.add(10)
echo v1[0] + 20

v1.add("marcelo")
echo v1[1] + "luis"

v1.add(3.14)
echo v1[2] + 3.2

v1[0] = "touhou"
echo v1[0]