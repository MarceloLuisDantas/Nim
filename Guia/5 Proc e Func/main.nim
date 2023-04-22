# - Codigo de Proc

# Parametro inutavel
# proc soma(a, b: int) =
#     echo a, " + ", b, " = ", a + b # Efeito colateral
# soma(10, 20)

# Parametro mutavel
var clodsire = (nome: "Clodsire", hp: 464)
proc levarDano(pokemon: var (string, int), dano: int) =
    pokemon[1] -= dano # Efeito colateral
levarDano(clodsire, 152)


# - Codigo de Func

from std/math import sqrt
func calculaRaizes(a, b, c: float): (float, float) =
    let delta = sqrt((b*b) - (4*a*b))
    return (((-b + delta) / (2*b)), ((-b - delta) / (2*b)))
let (r1, r2) = calculaRaizes(2, -4, 4)

var ferrothorn = (nome: "Ferrothorn", hp: 352, def: 361)
func calculaDano(pokemon: (string, int, int), dano: int): int =
    result = pokemon[2] * 100 - dano * 2 # Retorno
ferrothorn.hp -= calculaDano(ferrothorn, 231)


# - Codigo de noSideEffect

# from std/math import sqrt
# proc calculaRaizes(a, b, c: float): (float, float) {.noSideEffect.} =
#     let delta = sqrt((b*b) - (4*a*b))
#     return (((-b + delta) / (2*b)), ((-b - delta) / (2*b)))
# let (r1, r2) = calculaRaizes(2, -4, 4)


# - Funções como parametro

proc multiplica(v1: int): int {.noSideEffect.} = v1 * 2
proc opera(lista: var seq[int], f: proc(v: int): int {.closure.}) =
    for i, v in lista :
        lista[i] = f(v)
        
var lista = @[1, 2, 3, 4, 5]
opera(lista, multiplica)

# Sugar

# import std/sugar
# proc opera(lista: var seq[int], f: (int) -> int) =
#     for i, v in lista :
#         lista[i] = f(v)

# var lista = @[1, 2, 3, 4, 5]
# opera(lista, (x) => x * 2) # lista.apply((x) => x * 2)


# - Codigo sobre Generics 

func soma[T](x, y: T): T = x + y
echo soma(10, 10) # 20
echo soma(3.14, 2.5) # 5.54

func somaSequencias[T](seq1, seq2: seq[T]): seq[T] =
    for i, v in seq1:
        result[i] = v + seq2[i]

let seqInt = somaSequencias(@[1, 2, 3], @[3, 2, 1])
let seqFloat = somaSequencias(@[1.0, 2.0, 3.0], @[3.0, 2.0, 1.0]) 


# — Bônus sobre sintaxe

proc adiciona(alvo: var (int, int), soma: (int, int)) =
    alvo[0] += soma[0]
    alvo[1] += soma[1]

var coordenadas = (x: 0, y: -100)
coordenadas.adiciona((x: 20, y: 10)) # adiciona(coordenadas, movimento)

echo coordenadas.x # 20
echo coordenadas.y # -90


