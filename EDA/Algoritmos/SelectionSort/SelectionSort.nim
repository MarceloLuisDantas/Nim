proc swap(lista: var openArray[int], i1, i2: int) =
    var sup = lista[i1]
    lista[i1] = lista[i2]
    lista[i2] = sup

# Selection Sort
# Funciona passando pelo array por 2 fors, para comprar com 
# 1 elemento todos os outros elementos, para encontrar o menor
# a cada excecução e trocar o indice do primeiro for.
# O(n^2)  -|-  É In-Place  -|-  Não é estavel 
proc selectionSort(lista: var openArray[int]) =
    if lista.len() != 0 :    
        var menor = 0
        for i, v in lista :
            menor = i
            for i2 in i..lista.len - 1 :
                if (v > lista[i2]) :
                    menor = i2 
            lista.swap(i, menor)

when isMainModule :
    var lista1 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    lista1.selectionSort()
    doAssert lista1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]

    var lista2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    lista2.selectionSort()
    doAssert lista2 == [1, 2, 3, 4, 5, 6, 7, 8, 9] 

    var lista3 = [1, 2, 3, 4, 9, 8, 7, 6, 5]
    lista3.selectionSort()
    doAssert lista3 == [1, 2, 3, 4, 5, 6, 7, 8, 9] 
