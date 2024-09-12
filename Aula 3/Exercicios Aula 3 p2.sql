--use Estacionamento

----1
--create procedure sp_RetornaCliente (@top int)
--as
--Begin
--	 select top (@top) * from Cliente
--end

--exec sp_RetornaCliente 5

----2
--create procedure sp_InserirCliente (@cli_cpf varchar(50), @cli_nome varchar(250), @cli_dtNascimento date)
--as
--Begin
--	insert into Cliente (cli_cpf, cli_nome, cli_dtNascimento)
--    values (@cli_cpf, @cli_nome, @cli_dtNascimento)
--end

--exec sp_InserirCliente '123', 'Gustavo Pirondi', '09-09-2005' 

----3
--create procedure sp_AlterarData (@cpf varchar(50), @dataNasc date)
--as
--Begin
--	update Cliente set cli_dtNascimento = @dataNasc
--	where cli_cpf = @cpf
--end

--exec sp_AlterarData '123', '12-08-2004'

----4
--create procedure sp_NovaTabela (@nomeTabela varchar(50))
--as
--Begin
--	exec ('select * into ' + @nomeTabela + ' from Cliente')
--end

--exec sp_NovaTabela 'Copia'

----5
--create procedure sp_Capacidade (@bairro varchar(50))
--as
--Begin
--	if (select pat_capacidade from patio where pat_bairro = @bairro) >= 50
--		print 'Patio Grande'
--	else
--		print 'Patio Pequeno'
--end

--exec sp_Capacidade 'Centro'