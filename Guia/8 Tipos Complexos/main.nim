type age = int

var idade: age = 17
proc aniversario(idade: var int) =
    idade += 1

idade.aniversario()
echo idade # 18
    
type Metros = distinct int
type Centimetros = distinct int

func metrosToCent(metros: Metros): Centimetros =
    return Centimetros(int(metros) * 100)

func `+`(cm1, cm2: Centimetros): Centimetros =
    return Centimetros(int(cm1) + int(cm2))

func `+`(m: Metros, cm: Centimetros): Centimetros = 
    return cm + metrosToCent(m)

type Move = tuple
    nome: string
    desc: string
    base: int

func newMove*(nome, desc: string, base: int): Move = 
    (nome, desc, base)

let scald = newMove("Scald", "Pode queimar o oponente", 80)
echo scald.nome

type Pokemon* = ref object 
    nome*: string
    stats: seq[int]
    moves: seq[Move]

func newPokemon*(nome: string, stats: seq[int], moveset: seq[Move]): Pokemon =
    Pokemon(nome: nome, stats: stats, moves: moveset)

proc addMove*(self: Pokemon, move: Move) =
    var index = self.moves.len
    # if index >= 4 :
    #     index = escolherMoveParaRemover()
    self.moves.insert(move, index)

var leavanny = newPokemon("Leavanny", @[], newSeqOfCap[Move](4))
var retorno = newMove("Return", "---", 120)
leavanny.addMove(retorno)


type Pessoa = ref object of RootObj
    nome*: string
    idade: int

func `$`(p: Pessoa): string =
    return p.nome

type Estudante = ref object of Pessoa
    curso: string
    id: int

func newEstudante(nome, curso: string, idade, id: int): Estudante = 
    Estudante(nome: nome, idade: idade, curso: curso, id: id)

var estudante = newEstudante("Marcelo", "Computação", 21, 123)
echo estudante

when isMainModule :
    var retorno2 = newMove("Return", "---", 120)
    var leavanny2 = newPokemon("Leavanny", @[75, 103, 80, 70, 80, 92], newSeqOfCap[Move](4))
    leavanny2.addMove(retorno2)
    echo leavanny2.moves