# - OpenArrays

func somaArrays(lista: openArray[int]): int =
    for i in lista :
        result += i

echo somaArrays(@[1, 2, 3, 4])   # 10
echo somaArrays([1, 2, 3, 4, 6]) # 16

# - Varargs

func concatena(palavras: varargs[string]): string =
    for i in palavras :
        result &= i & " "

echo concatena("Meowscarada", "melhor", "inicial") # Meowscarada melhor inicial
echo concatena(["Nim", "melhor", "linguagem"]) # Nim melhor linguagem

import std/sugar

func quadrado(x: int): int = x * x
func somaQuadrados(valores: varargs[int, quadrado]): int =
    for i in valores : result += i

echo somaQuadrados(1, 2, 3, 4) # 30
echo somaQuadrados(@[1, 2, 3]) # 6

# - HashMap

# var startesGrama = {
#     1: "Venusaur", 2: "Meganium", 3: "Sceptile"
# }.toTable

# var startesAgua = initTable[int, string]()
# startesAgua[1] = "Blastoise"
# startesAgua[2] = "Feraligatr"
# startesAgua[3] = "Swampert"

# var pokedex = initTable[int, string]()

import std/tables
import std/sequtils

let posicao = @[1, 2, 3]
let pokemon = @["Sprigatito", "Floragato", "Meowscarada"]

var pokedex = initOrderedTable[int, string]()
for (key, value) in zip(posicao, pokemon) :
    pokedex[key] = value
echo pokedex[3] # Meowscarada

pokedex[4] = "Fuecoco"

# pokemon.hasKey(5) == false
echo pokedex.hasKeyOrPut(5, "Crocalor") # false

# pokedex[6] == Erro
echo pokedex.getOrDefault(6) # ""

pokedex.del(4) 

# Agora possui a ordem correta
# Pokemon Nº 1 - Meoscarada
#   ...
# Pokemon Nº 3 - Fuecoco
for (key, value) in pokedex.mpairs :
    echo "Pokemon Nº ", key, " - ", value 

pokedex.clear() 
echo pokedex.len() # 0


# HashMap não possui uma sequencia
# Pokemon Nº 3 - Fuecoco
#   ...
# Pokemon Nº 1 - Meoscarada
