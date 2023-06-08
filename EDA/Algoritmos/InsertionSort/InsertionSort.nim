type Teste = tuple 
    nome: string
    valor: int

func `<`(t1, t2: Teste): bool =
    return t1.valor < t2.valor

func newTeste(nome: string, valor: int): Teste =
    return (nome: nome, valor: valor)

proc swap[T](lista: var openArray[T], i1, i2: int) =
    var sup = lista[i1]
    lista[i1] = lista[i2]
    lista[i2] = sup

# Insertion Sort
# Percorre o arrai, sempre procurando por um valor menor
# maior do que o atual V e sempre realizando a troca.
# Ate chegar ao começo do array ou um valor menor que V. 
# Pois ao encontar V estara no seu lugar correto.
# O(n^2)  -|-  É In-PLace  -|-  É estavel
proc insertionSort[T](lista: var openArray[T]) =
    for i, v in lista :
        var sup = i
        while sup > 0 and v < lista[sup - 1] : 
            lista.swap(sup, sup - 1)
            sup -= 1

var listaEstavel = newSeq[Teste]()
listaEstavel.add(newTeste("Marcelo", 9))
listaEstavel.add(newTeste("Daniella", 8))
listaEstavel.add(newTeste("Fernanda", 7))
listaEstavel.add(newTeste("Vitor", 2))
listaEstavel.add(newTeste("Renato", 5))
listaEstavel.add(newTeste("Giulia", 4))
listaEstavel.add(newTeste("Willian", 3))
listaEstavel.add(newTeste("Mirra", 2))
listaEstavel.add(newTeste("Alekim", 2))
listaEstavel.insertionSort()

for i in listaEstavel :
    echo i 

when isMainModule :
    var lista1 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    lista1.insertionSort()
    doAssert lista1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]

    var lista2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    lista2.insertionSort()
    doAssert lista2 == [1, 2, 3, 4, 5, 6, 7, 8, 9] 

    var lista3 = [1, 2, 3, 4, 9, 8, 7, 6, 5]
    lista3.insertionSort()
    doAssert lista3 == [1, 2, 3, 4, 5, 6, 7, 8, 9] 
