----1
--create function fve_Estado (@sigla varchar(50))
--Returns varchar(50) as Begin
--	declare @estado varchar(50) =''
--	set @estado = case
--		when @sigla = 'AC' then 'Acre'
--		when @sigla = 'AL' then 'Alagoas'
--		when @sigla = 'AP' then 'Amapá'
--		when @sigla = 'AM' then 'Amazonas'
--		when @sigla = 'BA' then 'Bahia'
--		when @sigla = 'CE' then 'Ceará'
--		when @sigla = 'ES' then 'Espírito Santo'
--		when @sigla = 'GO' then 'Goiás'
--		when @sigla = 'MA' then 'Maranhão'
--		when @sigla = 'MT' then 'Mato Grosso'
--		when @sigla = 'MS' then 'Mato Grosso do Sul'
--		when @sigla = 'MG' then 'Minas Gerais'
--		when @sigla = 'PA' then 'Pará'
--		when @sigla = 'PB' then 'Paraíba'
--		when @sigla = 'PR' then 'Paraná'
--		when @sigla = 'PE' then 'Pernanbuco'
--		when @sigla = 'PI' then 'Piauí'
--		when @sigla = 'RJ' then 'Rio de Janeiro'
--		when @sigla = 'RN' then 'Rio Grande do Norte'
--		when @sigla = 'RS' then 'Rio Grande do Sul'
--		when @sigla = 'RO' then 'Rondônia'
--		when @sigla = 'RR' then 'Roraima'
--		when @sigla = 'SC' then 'Santa Catarina'
--		when @sigla = 'SP' then 'São Paulo'
--		when @sigla = 'SE' then 'Sergipe'
--		when @sigla = 'TO' then 'Tocantins'
--		when @sigla = 'DF' then 'Distrito Federal'
--	end
--	Return @estado
--end

--select dbo.fve_Estado ('PI') as Estado

----2
--create function fve_MaiorNota (@ra varchar(50))
--Returns varchar(50) as Begin
--	declare @nota int
--	select top 1 @nota = nota from historico where ra=@ra
--	order by nota desc
--	return @nota
--End

--select dbo.fve_MaiorNota ('6130001')

----3
--create function fve_AreaTriangulo (@base decimal(8,2), @altura decimal(8,2))
--Returns decimal (8,2) as Begin
--	declare @area decimal(8,2) = ((@base * @altura) / 2)
--	return @area
--End

--select dbo.fve_AreaTriangulo (2,3)

----4
--create function fve_Maiusculas (@palavra varchar(50))
--Returns varchar(50) as Begin
--	declare @alterada varchar(50)
--	if(len(@palavra) = 1)
--		set @alterada = upper(@palavra)
--	else
--		set @alterada = upper(left(@palavra, 1)) + lower(substring(@palavra,2, len(@palavra) - 2)) + upper(right(@palavra,1))
--	return @alterada
--End

--select dbo.fve_Maiusculas('gUsTaVo')

----5
--create function fun_ProfessorDisciplina (@disciplina varchar(50))
--returns table as
--return(
--	select nome_pro, nome_disc from professores
--	inner join turmas on turmas.cod_pro = professores.cod_pro
--	inner join disciplinas on disciplinas.cod_disc = turmas.cod_disc
--	where nome_disc = @disciplina
--	)

--select * from fun_ProfessorDisciplina ('História')

--6


----7
--create function fun_DisciplinasAno (@ano int)
--Returns table as
--return(
--	select nome_disc, carga_hor from disciplinas
--	inner join turmas on turmas.cod_disc = disciplinas.cod_disc
--	where ano = @ano
--	group by nome_disc, carga_hor
--	)

--select * from fun_DisciplinasAno (2019)

----8
--create function fun_AlunosInferiorAno (@ano int, @media decimal(8,2))
--Returns table as
--return(
--	select alunos.ra, nome from alunos
--	inner join historico on historico.ra = alunos.ra
--	inner join turmas on turmas.cod_turma = historico.cod_turma
--	where ano = @ano
--	group by alunos.ra, alunos.nome
--	having avg(nota) < @media
	
--	)

--select * from fun_AlunosInferiorAno(2019, 9.0)

----9
--create function fun_DisciplinaProfessor (@professor varchar(50))
--Returns table as
--return(
--	select nome_disc from disciplinas
--	inner join turmas on turmas.cod_disc = disciplinas.cod_disc
--	inner join professores on professores.cod_pro = turmas.cod_pro
--	where nome_pro = @professor
--	)

--select * from fun_DisciplinaProfessor ('Ana Paula')

----10
--create function fun_Frequencia (@frequencia int)
--Returns table as
--return(
--	select alunos.ra, nome, frequencia, nota from alunos
--	inner join historico on alunos.ra = historico.ra
--	where frequencia > @frequencia
--	)

--select * from fun_Frequencia (80)