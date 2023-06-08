import std/options

type Move = tuple
    nome: string
    power: int

type Pokemon = ref object
    nome: string
    move1: Option[Move]
    move2: Option[Move]
    move3: Option[Move]
    move4: Option[Move]

proc newPokemon(nome: string): Pokemon =
    return Pokemon(nome: nome)

method setMove(self: Pokemon, move: Move) =
    if (self.move1.isNone) :
        self.move1 = some(move)
    elif (self.move1.isNone) :
        self.move1 = some(move)
    elif (self.move1.isNone) :
        self.move1 = some(move)
    elif (self.move1.isNone) :
        self.move1 = some(move)
     
    
