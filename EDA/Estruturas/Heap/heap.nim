import std/options

type Filhos = enum
    Dois, Zero,
    UmEsquerda, 
    UmDireita, 

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

func getIndiceRight*(self: Heap, indice: int): Option[int] =
    let indiceDireita: int = 2 * (indice + 1)
    if (indiceDireita > self.tail) :
        return none(int)
    return some(indiceDireita)

func parent*(self: Heap, indice: int): Option[int] =
    if (indice > self.tail) :
        return none(int)
    return some((indice - 1) div 2)

func temFilhos*(self: Heap, indice: int): Filhos =
    var esquerda = self.getIndiceLeft(indice)
    var direita = self.getIndiceRight(indice)

    if (esquerda.isSome and direita.isSome) :
        return Dois

    elif (esquerda.isSome and direita.isNone) :
        return UmEsquerda

    elif (esquerda.isNone and direita.isSome) :
        return UmDireita

    else :
        return Zero

proc swap(self: Heap, i1: int, i2: int) = 
    let sup = self.lista[i1]
    self.lista[i1] = self.lista[i2]
    self.lista[i2] = sup

proc moveUp(self: Heap, indice: int): bool =
    let superior = self.parent(indice).get    
    if (self.lista[superior] < self.lista[indice]) :
        self.swap(indice, superior)
        return true
    return false

func `[]`*(self: Heap, indice: int): Option[int] =
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

proc heapify*(self: Heap, sup: sink int) =    
    while (true) :
        let iLeft = self.getIndiceLeft(sup)
        let iRight = self.getIndiceRight(sup)
        let valorSup = self[sup].get

        if (iLeft.isSome and iRight.isSome) :
            let vl = self[iLeft.get].get
            let vr = self[iRight.get].get
                
            if (vl >= vr and vl > valorSup) :
                self.swap(sup, iLeft.get)
                sup = iLeft.get

            elif (vr > vl and vr > valorSup) :
                self.swap(sup, iRight.get)
                sup = iRight.get

            else :
                break

        elif (iLeft.isSome and self[iLeft.get].get > valorSup) :
            self.swap(sup, iLeft.get)
            sup = iLeft.get

        elif (iRight.isSome and self[iRight.get].get > valorSup) :
            self.swap(sup, iRight.get)
            sup = iRight.get

        else :
            break

proc remove*(self: Heap): int =
    if (self.isEmpty) :
        return -1

    self.swap(0, self.tail)
    result = self[self.tail].get
    self.tail -= 1
    self.heapify(0)


proc buildHeap*(self: Heap): int = 
    for i in countdown(self.parent(self.tail).get, 0) :
        self.heapify(i)

proc newHeap*(valores: varargs[int]): Heap =
    result = Heap(
        lista: @valores,
        tail: -1,
        len: 0,
    ) 

    result.tail = result.lista.len - 1
    result.len = result.lista.len
    let _ = result.buildHeap()

proc heapSort*(self: Heap): seq[int] = 
    var sup = self.tail
    while (self.tail != 0) :
        let _ = self.remove
    self.tail = sup
    return self.lista
    
proc `$`*(self: Heap): string =
    for i in 0..self.tail :
        result &= $self[i].get & " "
    

