----1
--create procedure media_geral (@num_turma as int)
--as
--Begin
--	select AVG(nota) from historico where cod_turma=@num_turma
--End

--exec media_geral 1

----2
--create procedure aprovacao
--as
--Begin
--	select alunos.ra, nome, 
--	case
--	when avg(nota) >= 7 then 'Aprovado'
--	when avg(nota) < 7 then 'Reprovado'
--	end as Aprovacao
--	from alunos
--	inner join historico on historico.ra = alunos.ra
--	group by alunos.ra, nome
--end

--exec aprovacao

----3
--create procedure nome_professor (@disciplina int)
--as
--Begin
--	select nome_pro from professores 
--	inner join turmas on turmas.cod_pro = professores.cod_pro
--	where cod_disc=@disciplina
--end

--exec nome_professor 1

----4
--create procedure cidade_quantidade
--as
--begin
--	select cidade, count(nota) as reprovados from alunos
--	inner join historico on alunos.ra = historico.ra
--	where nota < 7
--	group by cidade
--end

--exec cidade_quantidade

----5
--create procedure disciplina_reprovados
--as
--begin
--	select nome_disc from disciplinas
--	inner join turmas on turmas.cod_disc = disciplinas.cod_disc
--	inner join historico on historico.cod_turma = turmas.cod_turma
--	where nota < 7
--	group by nome_disc
--end

--exec disciplina_reprovados

----6
--create procedure alunos_desmatriculados
--as
--begin
--	select nome, alunos.ra from alunos
--	where alunos.ra not in (select ra from historico)
--end

--exec alunos_desmatriculados

