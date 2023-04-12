Aprendendo Nim Part 1º — Tipos Primitivos.

AVISO: Esse post é feito sem revisão ou supervisão de um adulto. Erros no meu entendimento sobre o assunto são esperados, estou escrevendo esses posts para registra meu aprendizado(ou tentativa de). Esses posts são pensando para quem já sabe programar ou já sabe o básico e quer aprender/ver sobre Nim, não para programadores de primeira viagem. Agradecimento e Créditos a Pamela Yeung Ribeiro por disponibilizar as artes para as capas.

Com a minha pouca experiência com outras linguagens com Java e Rust, eu sempre pensei “Tipos primitivos é fácil, não preciso para para estudar”, e como resultado eu ia perturbar quem sabia mais que eu nos grupos do Telegram tentado entender o que tava dando errado. Então desta vez eu não irei cometer o mesmo erro, e como primeiro passo, vou tentar entender os tipos primitivos e como eles podem se relacionar.

1º — Números
A) — Tipos numericos

Nim possui 3 tipos numéricos com variações de tamanho: int8 ~ int64 e uint8 ~ uint64 com int sendo com sinal e uint sem sinal, sendo int8/utin8 inteiros de 8 bit, passando por 16, 32 e 64 bits. Você pode perguntar "Existe Big Int em Nim?" não por padrão, mas sim com o uso de bibliotecas. Ja falando sobre float, existe apenas o float32 e float64. Por padrão existe o int, uint e float, sem necessitar declarar o tamanho, pelo o que eu entendi eles usam o padrão do sistema, uma arquitetura 32 usara 32bits e uma 64 usara 64bits, porem para float pelo o que me foi dito e entendido ele é sempre 64. Não me pergunte sobre o uso em arquiteturas de 8 bits ou similares, não saberia dizer neste caso qual seria o padrão. Mas para curiosidade existe o Natu, um framework para criar jogos de Game Boy Advance em Nim, caso tenha duvidas pode dar uma olhada na documentação.

B) — Relações

B.1 - Int Com Int
Cada tipo pode se relacionar diretamente com suas determinadas variações de maior potencia, como converter um int8 ou 16 para um 64. Pessoalmente acredito que seja melhor converter tudo para a sua versão 64 para evitar algum problema de overflow ou algo do tipo, caso você não esteja lidando com embarcados com memória limitada ou querendo fazer o sistema mais otimizado em memória possível.

B.2 - Int Com Float
Não se pode realizar operações entre int e float, por sorte Nim tem essa característica dita por alguns como um “problema”, porem eu pessoalmente prefiro assim, ate acharia melhor não permitir operações entre diferentes tamanhos como em Rust, porem do modo que Nim implementa já esta bom o suficiente, só de eu não acabar fazendo int + float sem querer e só descobrir quando o usuário comprar 4 laranjas e 1 terço já é o suficiente.

B.3 - Some To Some
Para converter um tipo para o outro não é complicado, basta chamar a função com o valor, claro, você não vai converter -32 para um uint, ou um valor que ultrapasse o limite do tipo que você esta tentando converter para, como tentar converter 300 para int8. E no caso de converter float para int o valor será arredondado para baixo, caso não use uma função especifica.

2º — Strings

Nim assim como a grande maioria das linguagens possui tanto char quanto string, nessa parte não tem muito o que falar sobre, afinal Strings não costumam ter grandes diferenças entre cada linguagem, exceto em C ou, que ai elas nem existem. Tudo que se pode fazer com Strings em outras linguagens se pode fazer em Nim, com algumas diferenças como utilizar $ servindo como toString de Java para converter outros tipos para String e & para concatenar Strings.

Não vale a pena falar sobre conversões de String para outros tipos agora pois isso é apenas questão de procurar no google “string to X nim”. Apenas saibam que Nim possui muita coisa para lidar com Strings na stdlib, o suficiente para no futuro ter um post apenas sobre isso.

3º — Papo furado

Acredito que fui capaz de compreender e passar o básico e mais importante para um iniciante sobre os tipos primitivos, sim, existem Booleanos em Nim, porem o que muda de linguagem pra linguagem é que em uma é "True" com "T" maiúsculo e na outra é minúsculo, então apenas deixei por fora. Por hoje é so, continuem estudando e nos ajude ma tornar Nim algo real no Brasil.