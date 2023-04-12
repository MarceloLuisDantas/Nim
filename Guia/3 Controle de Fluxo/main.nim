# If Elif Else

stdout.write("Nim é a melhor linguagem? ")
let resposta = stdin.readLine()
if resposta == "sim" : 
    echo "Vejo refino em suas escolhas" 
else : 
    echo "Terei que lhe convencer... nem que seja na base do soco"

# Switch Case

stdout.write("Qual sua Main Tier no Pokemon? ")
let resposta2 = stdin.readLine()
case resposta2 :
    of "uu", "ru", "nu" : echo "Você sabe aprecisar um meta saldavel"
    of "pu", "zu" : echo "Você é muito corajoso, lhe adimiro"
    of "ou", "ubers" : echo "Como é jogar com um meta tão toxico?"
    else : echo "Temos um adimirador de old meta entre nôs"

# While Loop

while true :
    stdout.write("Qual a melhor eeveelution?")
    var chute = stdin.readLine()
    if chute == "leafeon" :
        break;
    echo "Resposta errada"

echo "Resposta Correta"

# For Loop

for i in 0..100 :
    stdout.write i, " "             # 0 1 2 3 ... 98 99 100

var sequencia = @[1, 2, 3]             # Indice: 0 Valor: 1
for i, v in sequencia :                # Indice: 1 Valor: 2
    echo("Indice: ", i, " Valor: ", v) # Indice: 2 Valor: 3

for i in sequencia : 
    stdin.write(i, " ")             # 1 2 3

