type Node = ref object
    valor: int = 0
    next: Node 
    prev: Node

func newNode(valor: int): Node =
    Node(valor: valor)

func newNode(valor: int, prev: Node, next: Node): Node =
    Node(valor: valor, prev: prev, next: next)

proc setNext(self: Node, next: Node) =
    self.next = next

proc setPrev(self: Node, prev: Node) =
    self.prev = prev

proc setValor(self: Node, valor: int) =
    self.valor = valor

proc `$`(self: Node): int = self.valor

# --------------------------------------------------------

type LinkedList* = ref object 
    head: Node
    len: int = 0

proc newLinkedList*(): LinkedList =
    LinkedList()

proc add*(self: LinkedList, valor: int) =
    var node = newNode(valor)
    if (self.len == 0) :
        self.head = node
    elif (self.len == 1) :
        self.head.next = node
        self.head.next.prev = self.head
    else :
        var sup = self.head
        while (sup.next != nil) :
            sup = sup.next
        node.prev = sup.prev
        sup.prev.next.next = node
    self.len += 1

iterator elements*(lista: LinkedList): int = 
    var sup = lista.head
    for i in 0..(lista.len - 1) :
        yield sup.valor
        sup = sup.next

proc `$`*(lista: LinkedList): string =
    for i in elements(lista) :
        echo i
        result &= " " & $i





