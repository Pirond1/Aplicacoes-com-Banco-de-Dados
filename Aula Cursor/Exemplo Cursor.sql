use Universidade


--declare cur_aluno cursor
-- local
-- for select nome from alunos
--open cur_aluno
--fetch cur_aluno
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- for select nome from alunos
--declare @nome_aluno varchar(50)
--open cur_aluno
--fetch cur_aluno into @nome_aluno
--print @nome_aluno
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- for select ra,nome from alunos
--declare @ra int, @nome_aluno varchar(50)
--open cur_aluno
--fetch cur_aluno into @ra, @nome_aluno
--print concat(@ra, ' / ' + @nome_aluno)
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- for select nome from alunos
--declare @nome_aluno varchar(50), @contador int
--open cur_aluno
--set @contador=1
--while @contador <=3
--Begin
-- fetch next from cur_aluno into @nome_aluno
-- print @nome_aluno
-- set @contador = @contador +1
--End
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- for select nome from alunos
--declare @nome_aluno varchar(50), @contador int
--open cur_aluno
--fetch next from cur_aluno into @nome_aluno
--while @@FETCH_STATUS = 0
--Begin
-- fetch cur_aluno into @nome_aluno
-- print @nome_aluno
--  fetch next from cur_aluno into @nome_aluno
--End
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- for select ra,nome from alunos
--declare @nome_aluno varchar(50), @contador int, @ra int
--open cur_aluno
--fetch next from cur_aluno into @ra, @nome_aluno
--while @@FETCH_STATUS = 0
--Begin
-- fetch cur_aluno into @ra, @nome_aluno
-- print concat(@ra, ' / ' + @nome_aluno)
--  fetch next from cur_aluno into @ra, @nome_aluno
--End
--close cur_aluno
--deallocate cur_aluno


--declare cur_aluno cursor
-- local
-- keyset
-- for select nome from alunos
-- for update
--declare @nome_aluno varchar(50)
--open cur_aluno
--fetch first from cur_aluno into @nome_aluno
--update alunos set nome = 'MARIA DA PAZ ALTERADO**' where current of cur_aluno
--close cur_aluno
--deallocate cur_aluno

--select * from alunos