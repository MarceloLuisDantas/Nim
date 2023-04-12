Agora que já sabemos como receber e mostrar informações, esta na hora de lidar com esses dados e controlar o fluxo do nosso código. Esse post vai ser bem curso pois Nim não possui grandes diferença em relação a outras linguagens em relação ao controle de fluxo.

1º - If Elif Else
Assim como em Python, Nim utiliza elif invés de else if, o que pouco faz diferença. A sintaxe de colocar o comando na frente dos 2 pontos é uma opção, a outra é fazer igual no Python e colocar sempre em baixo indentando. "Ok, mas qual o padrão de escrita?" Não sei, pelo o que eu vi em exemplos e em códigos de terceiros, quando o bloco só possui 1 linha você pode escrever na frente, porem se a linha for muito grande é bom indentar, o mesmo se repete para as outras operações que geram um novo bloco de indentação. Nim ainda não possui uma padrão bem estabelecido para essas coisas.

2º - Switch Case
Não possui muitas diferenças de outras linguagens, basta dar um valor e dizer os casos. Eu pessoalmente não gosto de usar Switch Case em outras linguagens, porem em Nim, não fica parecendo que é um If Else mais feio. Pelos exemplos que eu vi, o uso padrão de case é para retornar algo ou realizar operações de uma única linha. Sintas-se a vontade para usar como bem entender. Fica o aviso que Nim possui o conceito de Pattern Matching, não vou falar sobre agora, porem caso queira dar uma olhada fique a vontade.

3º - While Loop
While Loop em Nim não tem muito o que ser digo, coloca a condição do While, e se preciso coloca um break na condição de parada, simples.

4.1º - For Loop
O For em Nim sempre funcionar em cima de iteradores. O que? Não sabe o que é um iterador? Tudo bem, irei explicar daqui a alguns posts, por hora, pense em iteradores como listas ou arrays que você vai passando de valor em valor sem precisar fazer o for(int i = ....) como em outras linguagens,

Ai estão os 3 usos mais básicos do For, no primeiro exemplo usamos 0..100 para gerar uma sequencia de números que vão de 0 a 100, diferente do Python por exemplo que iriam de 0 a 99. No segundo exemplo, criamos uma sequencia(falarei mais sobre no próximo post) e diferente de outras linguagens, que caso queiramos tanto o índice, quanto o valor, precisamos usar uma função como Enumerate, em Nim, basta usar 2 valores, o primeiro recebe o índice, e o segundo o valor. E o ultimo exemplo é o mesmo do segundo porem pegando apenas o valor.

4.2º - Melhor uso do For
Nim possui uma quantidade enorme de funções par iterar sobre listas de todos os tipos. Ao nível de, como mostrei no meu primeiro post, é possível criar nossos próprios iteradores muito facilmente para lidar com listas de uma forma especifica, ou para lidar com listas de objetos ou tipos próprios, pois Nim sim permite uso de objetos e criação de tipos complexos. E sendo sincero, essa é a parte de Nim que mais estou animado para aprender.

5º - Papo furado
Ok, já cobrimos tipos primitivos, entrada e saída, e agora, controle de fluxo. Os próximos post provavelmente serão sobre sequencias, arrays e tuplas, e depois entraremos em funções, assim basicamente teremos completado o básico de programação em Nim. Após isso, os assuntos a serem abordados seriam criação de módulos, testes e por fim tipos complexos/objetos e so então iteradores e adianta. Por hoje é so, continuem estudando e nos ajudem a tornar Nim algo real no Brasil.