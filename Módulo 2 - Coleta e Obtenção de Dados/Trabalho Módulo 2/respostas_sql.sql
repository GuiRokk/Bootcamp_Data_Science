-- 1)CONtagem de estados que começam com 'P' = 5
SELECT count(NomeEstado)'Estados que começam com P' FROM estado 
WHERE NomeEstado LIKE 'P%';

-- 2)Contagem geral de entradas na tabela 'caracteristicasgerais' = 13
SELECT count(*) 'Contagem de registros'FROM caracteristicasgerais;

-- 3)Contagem de Imóveis cadastrado no Rio Grande do Sul = 8
SELECT count(idImovel) 'Imóveis no estado RS'FROM imovel im
INNER JOIN cidade cd ON cd.CodigoCompletoIBGE = im.CodigoCompletoIBGE
INNER JOIN estado es ON es.CodEstadoIBGE = cd.CodEstadoIBGE
WHERE SiglaEstado = 'RS';

-- 11)Contagem de quantos imoveis possuem valor de CONdomínio R$0,00 (essa questão anteriormente pedia o valor de IPTU, mas era um erro do enunciado) = 7
SELECT count(DISTINCT es.SiglaEstado) 'Estados com imóveis CONdominio R$0,00' FROM imovel im
INNER JOIN cidade cd ON cd.CodigoCompletoIBGE = im.CodigoCompletoIBGE
INNER JOIN estado es ON es.CodEstadoIBGE = cd.CodEstadoIBGE
WHERE im.valorCONdominio = 0;

-- 14)Contagems de registros ta tabela 'caracteristicageralimovel' = 104 (opção mais próxima é 103, deve estar errado no questionário)
SELECT count(*) 'Contagem de Registros' FROM caracteristicageralimovel;

-- 15)Qual o registro do imovel com o maior valor de condomínio = 8004320000000
SELECT * FROM imovel;
SELECT codRegistro, valorCondominio FROM imovel
ORDER BY valorCondominio DESC
limit 1;
