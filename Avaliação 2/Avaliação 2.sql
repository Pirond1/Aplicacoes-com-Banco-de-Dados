--create table [log] (
--    log_codigo int identity(1,1) primary key,
--    log_data date,
--    log_descricao varchar(50)
--);


----1
--create trigger trg_logReserva on Reserva
--for insert as
--Begin
--	Declare
--	@data date
--	select @data = GETDATE()
--	insert into [log] (log_data, log_descricao) values (@data,'Nova Reserva')
--End

--insert into Reserva values (12,4,5,6)
--select * from Reserva
--select * from [log]


----2
--create trigger trg_logFinalizar on Hospedagem
--for update as
--Begin
--	IF UPDATE(hpg_status)
--	BEGIN
--      declare
--		@data date
--		select @data = GETDATE() from Hospedagem
--		insert into [log] (log_data, log_descricao) values (@data,'Fechamento de Reserva')
--    END
--End

--update hospedagem set hpg_status = 'F' where hpg_codigo = 7
--select * from hospedagem
--select * from [log]


----3
--create function fve_ValorMensagem (@status CHAR(1))
--returns table as
--return
--(
--    select hpg_codigo, hpg_status, hpg_valorTotal,
--        case 
--            when hpg_valorTotal < 1200.00 then 'Resultado de Prejuízo'
--            when hpg_valorTotal BETWEEN 1200.00 AND 3000.00 then 'Atingiu o ponto de equilíbrio'
--            when hpg_valorTotal > 3000.00 then 'Resultado com lucro'
--            else 'Sem valor registrado'
--        end as Mensagem
--    from Hospedagem
--    where hpg_status = @status
--);

--select * from fve_ValorMensagem ('F')


----4
--create function fve_InfosHospede (@codigo int)
--returns table as
--return
--(
--	select hos_nome, tph_descricao, qua_numero, tpq_descricao from Reserva
--	inner join Hospede on Hospede.hos_codigo = Reserva.hos_codigo
--	inner join TipoHospede on TipoHospede.tph_codigo = Hospede.tph_codigo
--	inner join Quarto on Quarto.qua_numero = Reserva.qua_codigo
--	inner join TipoQuarto on TipoQuarto.tpq_codigo = Quarto.tpq_codigo
--	where @codigo = res_codigo
--);

--select * from fve_InfosHospede (9)


----5
--create function fve_Quartos (@funcionario int)
--returns int as
--Begin
--	Declare
--	@Quantidade int
--	select @Quantidade = COUNT(res_codigo) from Reserva where @funcionario = fun_codigo

--	return @Quantidade
--end

--select dbo.fve_Quartos (3)