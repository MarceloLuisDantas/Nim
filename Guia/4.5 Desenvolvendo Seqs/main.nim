# # Recap

# var persoangens = newSeq[string](3)
# # = @["", "", ""] Alocada e preenchida
# persoangens.add("Reimu")
# # = @["", "", "", "Reimu"] Adicionado no final da lista

# var personagens = newSeqOfCap[string](10)
# # = @[] Alocada porem não prenchida
# persoangens.add(@["Marisa", "Alice"])
# # = @["Marisa", "Alice"] Adicionado no inicio da lista

# # Adicionar 

# var hakurei = newSeqOfCap[string](10)
# hakurei.add("Reimu")            # @["Reimu"]
# hakurei.add(@["Genji", "Mima"]) # @["Reimu", "Genji", "Mina"]
# hakurei.insert("Suika", 1)      # @["Reimu", "Suika", "Genji", "Mina"]

# # Remover

# var time = @["Lycanroc", "Wo-Chien", "Slither Wings"]
# time.del(1) # @["Lycanroc", "Slither Wings"]

# let indice = time.find("Lycanroc") # 0
# time.del(indice) # @["Lycanroc"]

# proc del*[T](x: var seq[T], i: Natural) {.noSideEffect.} =

# proc del(s: var seq[string], item: string) =
#     let indice = s.find(item)
#     if indice != -1 :
#         s.del(indice)

# var time = @["Lycanroc", "Wo-Chien", "Slither Wings"]
# time.del("Slither Wings") # @["Lycanroc", "Wo-Chien"]

# var moriya = @["Senae", "Kunako", "Suwako", "Aunn"]
# moriya.del("Aunn") # @["Senae", "Kunako", "Suwako"]

# # Mapeando

# # Map Apply

# import sequtils

# var lista = @[1, 2, 3, 4, 5, 6]

# proc quadrado(x: int): int = x * x
# var quadrados = lista.map(quadrado) # @[1, 4, 9, 16, 25. 36]

# # Ou sem declara a função anteriormente
# var quadrados = lista.map(proc (x: int): int = x * x)
# # Ou de forma mais limpa
# var quadrados = lista.map do (x: int) -> int: x * x


# import sequtils
# var lista = @[1, 2, 3, 4, 5, 6]

# proc quadrado(x: int): int = x * x
# lista.apply(quadrado) # @[1, 4, 9, 16, 25. 36]

# # Ou sem declara a função
# lista.apply(proc (x: int): int = x * x)
# # Ou de forma mais limpa
# lista.apply do (x: int) -> int: x * x

# # Filter 

# import sequtils
# proc par(num: int): bool = num mod 2 == 0

# var numeros = @[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
# var pares = numeros.filter(par) # @[2, 4, 6, 8, 10, 12]

# import sequtils
# proc par(num: int): bool = num mod 2 == 0

# var numeros = @[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
# numeros.keepIf(par) # @[2, 4, 6, 8, 10, 12]

# # Recude

# import sequtils

# var numeros = @[1, 2, 3, 4, 5, 6, 7, 8]
# var soma = numeros.foldl(a + b, 0) # 36
# var maior = numeros.foldl(if a > b : a else: b, 0) # 8

# import sequtils
# import sugar

# proc reduce(s: seq[int], redutor: (int, int) -> int, inicial: int): int =
#     result = inicial
#     for i in s :
#         result = redutor(result, i)

# var numeros = @[1, 2, 3, 4, 5, 6, 7, 8]
# echo numeros.reduce(proc (a: int, b: int): int = a + b, 0)

# # Extras

# import sequtils

# var atributos = @["hp", "def", "atk", "spd"]
# var ivs = @[4, 0, 252, 252]
# var stats = atributos.zip(ivs)
# # = @[("hp", 4), ("def", 0), ("atk", 252), ("spd", 252)]

# import sequtils

# var stats = @[("hp", 4), ("def", 0), ("atk", 252), ("spd", 252)]
# var (atributos, ivs) = stats.unzip()

# import sequtils

# var numeros = @[1, 1, 3, 1, 5, 7, 4, 4]
# var repeticoes = numeros.count(1) # 3

# import sequtils

# var numeros = @[1, 2, 3, 9, 4, 5, 6, 0]
# var maior = numeros.maxIndex() # 3
# var menor = numeros.minIndex() # 7






