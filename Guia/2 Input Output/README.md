Ok, agora que já sabemos os tipos primitivos hora de usar eles, e para isso precisamos saber como conseguir entrada do usuário e mostrar coisas a ele.
1º - Printar texto no console
A forma que é mostrada no guia oficial, usa o comando echo para mostra coisas na tela, porem ele tem o """problema""" de sempre mostrar o \n mesmo que você não queira, logo ele sempre ira pular linhas após escrever. Então para evitar esse """problema""" eu vou seguir usando o stdout.write, que á função do pacote "stdout"(standard output) que é o que o echo usa por baixo dos panos, eles tem o mesmo funcionamento, porem o stdout.write não pula linha caso a gente não queira, o que na minha opinião fica melhor.

2º - Recebendo texto pelo terminal
Para entrada de dados é usado stdin.readLine, que no caso vai ler vai ler do buffer do terminal o que foi digitado. Para receber uma simples string não é tão mais complicado que em outras linguagens como Rust (e MUITO mais simples do que em Java).

3º - Receber números
Receber strings é fácil, porem para converter elas para int ou float, meu amigo. É tão fácil quanto, nem sei porque to tentando fazer drama, basta importar a biblioteca strutils que disponibiliza inúmeras funções para lidar com strings, dentre elas, funções para converter para int e float, so precisar usar .parseInt ou .parseFloat em alguma string valida.

4º - Verificar se pode converter
Sempre, sempre e sempre, independente do nível de alfabetização, nacionalidade, gênero e religião. O usuário sempre ira dizer que sua idade é Alice e sue nome é 32. A abordagem de Nim para evitar esse problema é, nada…. Ele quebra e lança um erro. Por isso precisamos verificar as entradas, existem infinitas formas de se fazer isso, desde mais simples as mais rocket science. Porem a que eu achei mais confortável, foi utilizando, infelizmente, try catch, para quem não conhece, é uma estrutura que tentar executar algo, e caso esse algo de erro, invés de quebrar o programa, ele vai para o catch e faz algo sobre isso. - Fazendo uma pequena tangente, Eu não curto muito o uso de Try Catch, prefiro muito mais como é feito em Rust ou Go, onde é retornado um option caso seja possível acontecer um erro em Rust, ou retorno de 2 valores como em Go, um para o resultado e um para um possível erro. Sim eu sei que no final isso é so estetica, e Sim, Nim tem options similar a Rust, porem veremos isso depois, aguardem ansiosos, ate 2032 eu posto.

Eu sei, vc deve estar pensando "O que ca****os significa 'proc inputInt(label: string): int ='?", isso é como funções são declaradas em Nim(na real proc é de procedimentos, porem detalhe), eu so vou explicar sobre isso daqui a 4 ou 5 posts acredito, porem não precisa se assustar, o que essa função faz é pedir uma entrada ao usuário, e dentro do try ele tenta converter para int, caso de ValueError, que é o erro lançado caso uma string tente ser convertida sem ser compatível com o tipo escolhido, o programa não vai quebrar, e sim apenas mostrar uma mensagem de erro na tela caso o usuário digite "2kg de Arroz".

E pronto, agora temos um lindo loop infinito que ira parar apenas quando o usuário aprender o básico de interpretação de texto.

4º - Papo furado
Agora que o básico de entrada e saída foi explicado, o próximo passo é seguir para fluxo de dados, coleções, funções e assim por diante. Por hoje é so, continuem estudando e nos ajudem a tornar Nim algo real no Brasil.

