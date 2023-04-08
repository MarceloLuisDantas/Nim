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

var lista = [1, 2, 3] 

# for (int i = 0; i < lista.len; i++)  # Valor: 1
for i in 0..lista.len - 1 :            # Valor: 2
    echo("Valor: ", lista[i])          # Valor: 3

# for (i, v) in enumerate(lista)       # Indice: 0 Valor: 1
for i, v in lista :                    # Indice: 1 Valor: 2
    echo("Indice: ", i, " Valor: ", v) # Indice: 2 Valor: 3

for i in lista : # for (int i : x)     # 1 2 3 
    stdin.write(i, " ")