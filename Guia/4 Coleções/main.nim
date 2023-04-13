# # Arrays

# var lista: array[4, int] = [1, 2, 3, 4]  ✔️

# var lista2: array[12, int] = [1, 2, 3]   ❌
# var lista3: array[12, int]               ✔️
# [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

# var tamanho = input("Qual o tamanho?")
# var lista: array[tamanho, int]

# # Sequencias 

# var sequencia: seq[int]
# var iniciais: seq[string] = @["Meowscarada", "Quaquaval", "Skeledirge"]
# var time = newSeq[string](6)
# var ubers = newSeqOfCap[string](10)

# import std/sequtils
# ubers = concat(ubers, @["Miraidon", "Koraidon", "Flutter Mane", "Annihilape"])


# var sequencia = newSeq[int](6)
# # resulta em @[0, 0, 0, 0, 0, 0]
# var sequencia = newSeqOfCap[int](6)
# # resulta em @[]

# # Array 2 Seq

# var lista: array[5, int] = [1, 2, 3, 4, 5]
# var sequencia: seq[int] = @lista 

# var lista2 = seqToArray(sequencia)

# # Slice

# var lista = [1, 2, 3, 4, 5]
# var sequencia = @[9, 8, 7, 6, 5]

# echo sequencia[2..4]  # @[7, 6, 5]
# echo lista[3]         # 4


# sequencia[2..4] = [1]          ✔️
# sequencia[2..4] = [1, 2, 3, 4] ✔️

# lista[1..3] = [4, 2, 5]  ✔️
# lista[1..3] = [4, 2]     ❌

# # Tuplas

# var move = (nome: "Gigaton Hammer", poder: 160)
# # var move = ("Gigaton Hammer", 160)
# echo move.nome  # retorna 'Gigaton Hammer'
# echo move[1]    # retorna 160


