import std/options

type Heap* = ref object
    lista: seq[int]
    tail: int
    len: int

proc newHeap*(len: int): Heap =
    Heap(
        lista: newSeqOfCap[int](len),
        tail: -1,
        len: len,
    ) 

func isEmpty*(self: Heap): bool =
    return self.tail == -1

func getIndiceLeft*(self: Heap, indice: int): Option[int] =
    let indiceEsquerdo: int = 2 * indice + 1
    if (indiceEsquerdo > self.tail) :
        return none(int)
    return some(indiceEsquerdo)

func left*(self: Heap, indice: int): Option[int] =
    let indiceLeft = self.getIndiceLeft(indice).get
    if (indiceLeft > self.tail) :
        return none(int)
    return some(self.lista[indiceLeft])

func getIndiceRight*(self: Heap, indice: int): Option[int] =
    let indiceDireita: int = 2 * (indice + 1)
    if (indiceDireita > self.tail) :
        return none(int)
    return some(indiceDireita)

func right*(self: Heap, indice: int): Option[int] =
    let indiceDireita = self.getIndiceRight(indice).get
    if (indiceDireita > self.tail) :
        return none(int)
    return some(self.lista[indiceDireita])

func parent*(self: Heap, indice: int): Option[int] =
    if (indice > self.tail) :
        return none(int)
    return some((indice - 1) div 2)

func temFilhos*(self: Heap, indice: int): bool =
    var esquerda = self.left(indice)
    if (esquerda.isSome) :
        return true

    var direita = self.right(indice)
    if (direita.isSome) :
        return true

    return true

proc swap*(self: Heap, i1: int, i2: int) = 
    let sup = self.lista[i1]
    self.lista[i1] = self.lista[i2]
    self.lista[i2] = sup

proc moveUp*(self: Heap, indice: int): bool =
    let superior = self.parent(indice).get    
    if (self.lista[superior] < self.lista[indice]) :
        self.swap(indice, superior)
        return true
    return false

proc downLeft*(self: Heap, indice: int): bool = 
    if (let infeiorEsquerdo = self.getIndiceRight(indice); infeiorEsquerdo.isSome) :
        self.swap(indice, infeiorEsquerdo.get)
        return true
    return false

proc downRight*(self: Heap, indice: int): bool = 
    if (let inferiorDireito = self.getIndiceLeft(indice); inferiorDireito.isSome) :
        self.swap(indice, inferiorDireito.get)
        return true
    return false

proc get*(self: Heap, indice: int): Option[int] =
    if (indice > self.tail) :
        return none(int)
    return some(self.lista[indice])

proc add*(self: Heap, valor: int): bool =
    if (self.tail > self.len) :
        return false

    self.tail += 1
    self.lista.add(valor)

    var sup = self.tail
    while (self.moveUp(sup)) :
        sup = self.parent(sup).get

    return true

proc heapify*(self: Heap): int =    
    if (self.isEmpty) :
        return -1

    self.swap(0, self.tail )
    result = self.get(self.tail).get
    self.tail -= 1

    var sup = 0
    while (true) :
        let iLeft = self.getIndiceLeft(sup)
        let iRight = self.getIndiceRight(sup)

        if (iLeft.isSome and iRight.isSome) :
            let vl = self.get(iLeft.get).get
            let vr = self.get(iRight.get).get

            if (vl >= vr) :
                self.swap(sup, iLeft.get)
                sup = iLeft.get
            else :
                self.swap(sup, iRight.get)
                sup = iRight.get

        elif (iLeft.isSome and self.get(iLeft.get).get > self.get(sup).get) :
            self.swap(sup, iLeft.get)
            sup = iLeft.get

        elif (iRight.isSome and self.get(iRight.get).get > self.get(sup).get) :
            self.swap(sup, iRight.get)
            sup = iRight.get

        else :
            break


proc `$`*(self: Heap): string =
    for i in 0..self.tail :
        result &= $self.get(i).get & " "
    

