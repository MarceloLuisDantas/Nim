type Stack[T] = tuple
    corpo: seq[T]
    cursor: int
    len: int

func newStack*[T](len: int): Stack[T] =
    result.corpo = newSeqOfCap[T](len)
    result.cursor = 0
    result.len = len

func `[]`[T](self: Stack[T], index: int): T =
    return self.corpo[index]

proc push*[T](self: Stack[T], valor: T) = 
    self.corpo[self.cursor] = valor
    self.cursor += 1

proc pop*[T](self: Stack[T]): T =
    return self.corpo.pop
    

# TESTES ----------------
when isMainModule :
    var stack = newStack[int](10)

    doAssert stack.cursor == 0
    doAssert stack.len == 10
    doAssert stack.corpo.len == 0
    doAssert stack[0] == 0






