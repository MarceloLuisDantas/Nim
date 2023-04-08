# Print 

echo "Hello World"
stdout.write "Hello World, But Cooler \n"

# Input 

stdout.write "Qual o seu nome: "
var nome = stdin.readLine()
echo "Bem vindo ao Nim ", nome

# Input de numero

import strutils
stdout.write "Qual a sua idade: "
var idade = stdin.readLine().parseInt()
echo """Ainda não ensinei a usar else if então 
    so sei que vc tem """", idade, """ anos"""

# Entrada com verificação

proc inputInt(label: string): int =
    stdout.write(label)
    try :
        result = stdin.readLine().parseInt()
    except ValueError :
        echo "Entrada invalida"
        result = -1

while true :
    let quantidade = inputInt("Quatidade desejada em Kilos: ")
    if quantidade == -1 :
        echo "May you have the stupid?"
    else :
        echo "Pedido recebido, e sendo enviado"
        break



