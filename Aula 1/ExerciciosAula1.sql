--use Aventuras

----1
--select top 1 Nome, DATEDIFF(YEAR, DataNac, GETDATE()) as Idade
--from Funcionarios
--where IDFuncionario in (select IDFuncionario from [Funcionarios-Territorios] where IDTerritorio in (select IDTerritorio from Territorios where IDRegiao in (select IDRegiao from Regiao where DescricaoRegiao='Eastern')))
--order by DataNac asc

----2
--select TipoCliente
--from [Clientes-Tipo]
--where idTipo in (select idTipo from Clientes where IDCliente in (select IDCliente from Ordens where exists 
--(select IDOrdem, SUM(quantidade) from [Ordens-Detalhes] group by IDordem having sum(quantidade) > avg(Quantidade))))

----3
--select CONCAT(nome, ' ', sobrenome)
--from Funcionarios
--where IDFuncionario in (select IDFuncionario from Ordens group by IDFuncionario having COUNT(IDFuncionario) > 15)

----4
----Deletar Ordens Detalhes
--delete from [Ordens-Detalhes] where IDOrdem in
--(select IDOrdem from Ordens where IDCliente in
--(select IDCliente from Clientes where idTipo in
--(select idTipo from [Clientes-Tipo] where idTipo = '1')));
----Deletar Ordens
--delete from Ordens where IDCliente in
--(select IDCliente from Clientes where idTipo in
--(select idTipo from [Clientes-Tipo] where idTipo = '1'));
----Deletar Clientes!!
--delete from Clientes where idTipo in
--(select idTipo from [Clientes-Tipo] where idTipo = '1');	