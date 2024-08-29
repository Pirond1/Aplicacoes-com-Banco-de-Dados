--create procedure nome_procedure (@tipo_cliente as int)
--as
--Begin
--	select * from Clientes where idTipo=@tipo_cliente
--End

--exec nome_procedure 1

--create procedure nome_procedure2 (@cod_cliente as varchar(10), @nome_cliente as varchar(50) output)
--as
--Begin
--	select @nome_cliente= NomeContato from Clientes where IDCliente=@cod_cliente
--End

--declare @nomeCliente as varchar(50)
--exec nome_procedure2 'ALFKI' , @nomeCliente output
--print @nomeCliente

--create procedure sp_teste (@cod_cliente as varchar(10), @nome_cliente as varchar(50) output) with encryption
--as
--Begin
--	select @nome_cliente= NomeContato from Clientes where IDCliente=@cod_cliente
--End

--exec sp_helptext sp_teste