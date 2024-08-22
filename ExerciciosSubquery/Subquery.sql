--use Espetaculo

----1
--select ban_nome as NomeBanda
--from banda
--where cid_codigo in (select cid_codigo from show where sho_ano = 2013)

----2
--select mem_nome as NomeMembro, mem_posicao as Posicao
--from membro_banda
--where ban_codigo not in (select ban_codigo from banda where ban_classificacao < 8)

----3
--select mem_nome, mem_posicao
--from membro_banda
--where men_salario > (select avg(men_salario) from membro_banda where mem_posicao = 'Guitarrista')

----4
--select ban_nome
--from Banda
--where ban_ano > (select ban_ano from banda where ban_nome = 'Mastruz com Leite') and ban_classificacao > 7.5

----5
--select ban_nome as Nome, count(mem_codigo) as Quantidade
--from membro_banda
--join Banda on banda.ban_codigo = membro_banda.ban_codigo
--group by ban_nome
--having count(mem_codigo) > (select avg(contagem) from (select count(mem_codigo) as contagem from membro_banda group by ban_codigo) as Media)