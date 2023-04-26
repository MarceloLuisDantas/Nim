proc buscaBinaria(lista: openArray[int], item, left, right: int): int = 
    if (left > right) : return -1

    let mid = (left + right) div 2
    if (lista[mid] == item) :
        return mid
    elif (lista[mid] > item) :
        return buscaBinaria(lista, item, left, mid)
    return buscaBinaria(lista, item, mid + 1, right)
    
proc buscaBinaria(lista: openArray[int], item: int): int = 
    if (lista.len == 0) : return -1
    
    let mid = (lista.len) div 2
    if (lista[mid] == item) :
        return mid
    elif (lista[mid] > item) :
        return buscaBinaria(lista, item, 0, mid)
    return buscaBinaria(lista, item, mid + 1, lista.len - 1)

when isMainModule :
    let lista1 = [1, 2, 3, 4, 5, 6]
    doAssert buscaBinaria(lista1, 3) == 2
    doAssert buscaBinaria(lista1, 42) == -1
    doAssert buscaBinaria(lista1, 1) == 0
    doAssert buscaBinaria(lista1, 6) == 5
    doAssert buscaBinaria([], 1) == -1 
