import std/options
import heap

var heap1 = newHeap(10)

var _ = heap1.add(800)
var _ = heap1.add(87)
var _ = heap1.add(47)
var _ = heap1.add(73)
var _ = heap1.add(54)
var _ = heap1.add(6)
var _ = heap1.add(0)
var _ = heap1.add(43)
var _ = heap1.add(100)
var _ = heap1.add(1)
var _ = heap1.add(29)

echo heap1

var _ = heap1.heapify

echo heap1
