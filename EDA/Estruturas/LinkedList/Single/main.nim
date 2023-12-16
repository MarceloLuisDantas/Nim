import linkedList

var lista: LinkedList = newLinkedList()
lista += [0]
lista += [1]
lista += [2]
lista += [3, 4, 5]
echo lista[0]
lista[0] = 6
lista[1] = 9
lista.set(5, 7)
lista.set(3, 8)
echo lista
discard lista.remove(0)
discard lista.remove(lista.len - 1)
echo lista
lista += [1, 2, 3]
echo lista


