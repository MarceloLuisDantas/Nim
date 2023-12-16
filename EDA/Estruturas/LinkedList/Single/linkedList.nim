type Node = ref object
    valor: int = 0
    next: Node 

func newNode(valor: int): Node =
    Node(valor: valor)

func newNode(valor: int, next: Node): Node =
    Node(valor: valor, next: next)

proc setNext(self: Node, next: Node) =
    self.next = next

proc setValor(self: Node, valor: int) =
    self.valor = valor

proc `$`(self: Node): int = self.valor

# ------------------------------------------

type LinkedList* = ref object
    head: Node
    tail: Node
    len*: int = 0

func newLinkedList*(): LinkedList =
    LinkedList()

proc reset*(self: LinkedList) =
    self.head = nil
    self.tail = nil
    self.len  = 0

proc `+=`*(self: LinkedList, valor: int) =
    let node = newNode(valor) 
    if (self.head.isNil) :
        self.head = node
        self.tail = node
    else :
        self.tail.next = node
        self.tail = node
    self.len += 1

proc `+=`*(self: LinkedList, valor: varargs[int]) =
    for i in valor :
        self += i

proc `add`*(self: LinkedList, valor: int) =
    let node = newNode(valor) 
    if (self.head.isNil) :
        self.head = node
        self.tail = node
    else :
        self.tail.next = node
        self.tail = node
    self.len += 1

proc `[]`*(self: LinkedList, index: sink int): int =
    if (index < 0 or index > self.len - 1) :
        return -1
    var sup = self.head
    while (index != 0) :
        sup = sup.next
        index -= 1
    return sup.valor

proc get*(self: LinkedList, index: sink int): int =
    if (index < 0 or index > self.len - 1) :
        return -1
    var sup = self.head
    while (index != 0) :
        sup = sup.next
        index -= 1
    return sup.valor

proc `[]=`*(self: LinkedList, index: sink int, valor: int) =
    if (index >= 0 and index <= self.len - 1) :
        if (index == 0 and self.len == 1) :
            self.head.valor = valor
            self.tail.valor = valor
        elif (index == 0) :
            self.head.valor = valor
        elif (index == (self.len - 1)) :
            self.tail.valor = valor
        else :
            var sup = self.head
            while (index != 1) :
                sup = sup.next
                index -= 1
            sup.next.valor = valor          

proc set*(self: LinkedList, index: sink int, valor: int) =
    if (index >= 0 and index <= self.len - 1) :
        if (index == 0 and self.len == 1) :
            self.head.valor = valor
            self.tail.valor = valor
        elif (index == 0) :
            self.head.valor = valor
        elif (index == (self.len - 1)) :
            self.tail.valor = valor
        else :
            var sup = self.head
            while (index != 1) :
                sup = sup.next
                index -= 1
            sup.next.valor = valor  

proc removeLast*(self: LinkedList): int = 
    result = self.tail.valor
    if (self.len <= 1) :
        self.reset
    elif (self.len == 2) :
        self.tail = self.head
        self.head.next = nil
        self.len = 1
    else :
        var sup = self.head 
        while (not sup.next.next.isNil) :
            sup = sup.next
        sup.next = nil
        self.len -= 1;

proc removeFirst*(self: LinkedList): int =
    result = self.head.valor
    if (self.len == 1) :
        self.reset
    if (self.len >= 2) :
        self.head = self.head.next
        self.len -= 1

proc remove*(self: LinkedList, index: sink int): int =
    if (index < 0 or index > self.len - 1) :
        return 0
    if (index == 0) :
        return self.removeFirst
    if (index == self.len - 1) :
        return self.removeLast
    
    var sup = self.head
    while (index != 1) :
        index -= 1
        sup = sup.next
    result = sup.next.valor
    sup.next = sup.next.next


iterator elements*(lista: LinkedList): int = 
    var sup = lista.head
    for i in 0..(lista.len - 1) :
        yield sup.valor
        sup = sup.next

func `$`*(lista: LinkedList): string =
    for i in elements(lista) :
        result &= " " & $i


