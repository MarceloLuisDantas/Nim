import strutils

# Tipo 1 = int
# Tipo 2 = float
# Tipo 0 = str
type Valor* = ref object 
    tipo*: int
    valor*: string

func newValor[T](v: T): Valor =
    when T is int :
        result = Valor(tipo: 1, valor: $v)

    when T is float :
        result = Valor(tipo: 2, valor: $v)
    
    when T is string :
        result = Valor(tipo: 0, valor: v)

method toInt(self: Valor): int {.base.} =
    return self.valor.parseInt

method toFloat(self: Valor): float {.base.} =
    return self.valor.parseFloat

method `$`*(self: Valor): string {.base.} =
    return self.valor

method `type`*(self: Valor): string {.base.} =
    return case self.tipo :
        of 0 : "string"
        of 1 : "int"
        else : "float64"

method `+`*[T](self: Valor, v2: T): T {.base.} =
    var tipoV2 = $T

    if tipoV2 == self.type :
        if tipoV2 == "int" :
            when T is int :
                return self.toInt + v2

        if tipoV2 == "float64" :
            when T is float :
                return self.toFloat + v2

        if tipoV2 == "string" :
            when T is string :
                return self.valor & " " & v2   


method `+=`*[T](self: Valor, v2: T) {.base.} =
    var tipoV2 = $T

    if tipoV2 == self.type :
        if tipoV2 == "int" :
            when T is int :
                self.valor = $(self.toInt + v2)

        if tipoV2 == "float64" :
            when T is float :
                self.valor = $(self.toFloat + v2)

        if tipoV2 == "string" :
            when T is string :
                self.valor &= (" " & v2)
  
#---------------------------------------

type SeqOfEnyType* = ref object 
    valores: seq[Valor]

func newSeqOfEnyType*(): SeqOfEnyType =
    return SeqOfEnyType()

func add*[T](self: SeqOfEnyType, valor: T) =
    self.valores.add(newValor(valor))

method `[]`*(self: SeqOfEnyType, indice: int): Valor {.base.} =
    return self.valores[indice]

method `[]+`*[T](self: SeqOfEnyType, indice: int, valor: T): T {.base.} =
    return self.valores[indice] += valor
    
method `[]=`*[T](self: SeqOfEnyType, indice: int, valor: T) {.base.} =
    self.valores[indice] = newValor(valor)

#---------------------------------------

when isMainModule :
    var v1 = newSeqOfEnyType()

    v1.add(10)
    v1[0] += 20
    echo v1[0]

    v1.add("marcelo")
    v1[1] += "luis"
    echo v1[1]

    v1.add(3.14)
    v1[2] += 3.2
    echo (v1[2] + 1.0).typeof
    echo v1[2] 

    v1[0] = "touhou"
    echo v1[0]