import std/options

type Result = enum
    Ok, Err

type Stack[T] = object
    corpo: seq[T]
    cursor: int
    limite: int

func newStack*[T](limite: int): Stack[T] =
    result.corpo = newSeqOfCap[T](limite)
    result.cursor = 0
    result.limite = limite

func `[]`[T](self: Stack[T], index: int): Option[T] =
    if index < self.cursor :
        return some(self.corpo[index])
    return none(T)

proc push*[T](self: var Stack[T], valor: T): Result = 
    if self.cursor < self.limite :
        self.corpo.add(valor)
        self.cursor += 1
        return Ok
    return Err

proc pop*[T](self: var Stack[T]): Option[T] =
    if self.cursor > 0 :
        self.cursor -= 1
        return some(self.corpo.pop)
    return none(T)
    

# TESTES ----------------
when isMainModule :
    var stack = newStack[int](2)

    doAssert stack.cursor == 0
    doAssert stack.limite == 2
    doAssert stack.corpo.len == 0
    doAssert stack[0] == none(int)
    doAssert stack.push(10) == Ok
    doAssert stack[0] == some(10)
    doAssert stack.push(10) == Ok
    doAssert stack.push(10) == Err
    doAssert stack.push(10) == Err
    doAssert stack.cursor == 2
    doAssert stack.limite == 2
    doAssert stack.pop == some(10)
    doAssert stack.pop == some(10)
    doAssert stack.pop == none(int)
    doAssert stack.pop == none(int)
    doAssert stack.cursor == 0
    doAssert stack.limite == 2
    doAssert stack.push(10) == Ok
    doAssert stack.cursor == 1
    doAssert stack.limite == 2
    doAssert stack[102] == none(int)






