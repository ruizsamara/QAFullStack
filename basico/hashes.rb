# Hashes -> objetos onde temos uma coleção de dados. Essa coleção é feita
# através de chave e valor, muito parecida com array. A diferença entre Hash e Array é que
# no array temos acesso a um registro através de um índice do tipo inteiro e no Hash
# temos acesso a um registro através de chave.

carro = Hash[nome: "HB20", marca: "Hiunday", cor: "Prata"]

puts carro[:nome]

carro[:ano] = "2017"

puts carro
