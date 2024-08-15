use Aventuras

----1
--select top 1 Nome, DATEDIFF(YEAR, DataNac, GETDATE()) as Idade
--from Funcionarios
--where IDFuncionario in (select IDFuncionario from [Funcionarios-Territorios] where IDTerritorio in (select IDTerritorio from Territorios where IDRegiao in (select IDRegiao from Regiao where DescricaoRegiao='Eastern')))
--order by DataNac asc

--2