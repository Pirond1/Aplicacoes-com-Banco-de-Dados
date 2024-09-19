----1
--create procedure AdicionarCat (@nome varchar(100), @desconto decimal(8,2))
--as
--Begin
--	insert into Categoria (cat_nome, cat_desconto)
--	values (@nome, @desconto)
--end

--exec AdicionarCat 'Tênis', 20.00

----2
--create procedure ClienteSJ (@nome varchar(100), @cpf varchar(15), @idade int, @cidade varchar(100))
--as
--Begin
--	if @cidade = 'São Jerônimo'
--		insert into Cliente (cli_nome, cli_cpf, cli_idade, cli_cidade)
--		values (@nome, @cpf, @idade, @cidade)
--	else
--		print 'Não Foi Possivel Cadastrar o Cliente Informado'
--end

--exec ClienteSJ 'Gustavo Pirondi', '12345678900', 19, 'Presidente Prudente'
--exec ClienteSJ 'Gustavo Pirondi', '12345678900', 19, 'São Jerônimo'

----3
--create procedure DescontoGinastica
--as
--Begin
--	update Produto
--	set pro_preco = pro_preco - (pro_preco * (select cat_desconto from Categoria where cat_nome = 'Ginástica')/100)
--	where cat_codigo = (select cat_codigo from Categoria where cat_nome = 'Ginástica')
--end

--exec DescontoGinastica

----4
--create procedure ProdutosCidade (@cidade varchar(100))
--as
--Begin
--	select pro_nome from Produto
--	Inner Join Pedido on Pedido.pro_codigo = Produto.pro_codigo
--	Inner Join Cliente on Cliente.cli_codigo = Pedido.cli_codigo
--	where cli_cidade = @cidade
--end

--exec ProdutosCidade 'Tarabai'

----5
--select cli_nome, cli_cpf from Cliente
--where Cliente.cli_codigo = (select cli_codigo from Pedido where pro_codigo = (select pro_codigo from Produto where cat_codigo = (select cat_codigo from Categoria where cat_nome = 'Capacetes')))

----6
--create view ClientePedidos as
--select cli_nome, count(ped_codigo) as QuantidadePedidos
--from Cliente
--inner join Pedido on Pedido.cli_codigo = Cliente.cli_codigo
--group by cli_nome