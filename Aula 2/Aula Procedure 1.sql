----1
--create procedure NomeIdadeFuncionario
--as
--Begin
--	select concat(nome,sobrenome) as NomeCompleto, DATEDIFF(YEAR, DataNac, GETDATE()) as Idade from Funcionarios
--End

----2
--alter procedure NomeIdadeFuncionario (@cod_funcionario as varchar(10))
--as
--Begin
--	select concat(nome,sobrenome) as NomeCompleto, DATEDIFF(YEAR, DataNac, GETDATE()) as Idade from Funcionarios where IDFuncionario=@cod_funcionario
--End

----3
--create procedure TresTabelas (@desconto as money, @frete as money)
--as
--Begin
--	select * from Ordens
--	inner join [Funcionarios-Territorios] on [Funcionarios-Territorios].IDFuncionario = Ordens.IDFuncionario
--	inner join [Ordens-Detalhes] on [Ordens-Detalhes].IDOrdem = Ordens.IDOrdem
--	where desconto > @desconto and frete > @frete
--end

--exec TresTabelas 0, 61.50