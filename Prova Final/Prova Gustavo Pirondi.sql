----1
--create function infosAdv ()
--returns table as return 
--(
--	select concat(adv_nome, ' ' + adv_sobrenome) as NomeAdvogado, pro_numero as NumeroProcesso, var_nome as NomeVara, aud_data as DataAudiência from Advogado
--	inner join Processo_Advogado on Advogado.adv_codigo = Processo_Advogado.adv_codigo
--	inner join Processo on Processo_Advogado.pro_codigo = Processo.pro_codigo
--	inner join Vara on Processo.pro_vara = Vara.var_codigo
--	inner join Audiencia on Processo.aud_codigo = Audiencia.aud_codigo
--);


----2
--create procedure valorTotal (@processo as int, @horasTra as int, @horasHono as int) as
--Begin
--	declare @valorTotal as decimal(8,2)
--	declare @valorTra as decimal(8,2)
--	declare @valorHono as decimal(8,2)
--	set @valorTra = @horasTra * (select adv_valorHora from Advogado where adv_codigo = (select adv_codigo from Processo_Advogado where pro_codigo = @processo))
--	set @valorHono = @horasHono * (select adv_valorHonorarios from Advogado where adv_codigo = (select adv_codigo from Processo_Advogado where pro_codigo = @processo))
--	set @valorTotal = @valorTra + @valorHono
--	select concat(adv_nome, ' ' + adv_sobrenome) as NomeAdvogado, @valorTotal as ValorTotal from Advogado
--	where adv_codigo = (select adv_codigo from Processo_Advogado where pro_codigo = @processo)
--end


----3
--create table #acompanhamento (nomeCli varchar(100), dataAud date, nomeJuiz varchar(100), valorHonorario decimal(8,2))
--insert into #acompanhamento (nomeCli, dataAud, nomeJuiz, valorHonorario)
--select CONCAT(cli_nome, ' ' + cli_sobrenome), aud_data, var_juiz, (adv_valorHonorarios * pro_horas) from Cliente
--inner join Processo_cliente on Cliente.cli_codigo = Processo_cliente.cli_codigo
--inner join Processo on Processo_cliente.pro_codigo = Processo.pro_codigo
--inner join Audiencia on Processo.aud_codigo = Audiencia.aud_codigo
--inner join Vara on Processo.pro_vara = Vara.var_codigo
--inner join Processo_Advogado on Processo.pro_codigo = Processo_Advogado.pro_codigo
--inner join Advogado on Processo_Advogado.adv_codigo = Advogado.adv_codigo


----4
--create trigger novoProcesso on Processo
--after insert as
--Begin
--	insert into LogSistema(log_descricao,log_data)
--	select top 1 concat(pro_numero, ' / ' + concat(adv_nome, ' ' + adv_sobrenome)), getdate() from Processo
--	left join Processo_Advogado on Processo.pro_codigo = Processo_Advogado.pro_codigo
--	left join Advogado on Processo_Advogado.adv_codigo = Advogado.adv_codigo
--	order by Processo.pro_codigo desc
--end

--insert into Processo (pro_codigo,aud_codigo, pro_numero, pro_status,pro_vara, pro_horas) values (7, 4, 7000, 'A', 4, 15)


----5
--create view advEspecializacao as
--select concat(adv_nome, ' ' + adv_sobrenome) as NomeAdvogado, esp_nome as Especializacao, ((adv_valorHora * 32) + (adv_valorHonorarios* 32)) as ValorTotal_32h from Advogado
--inner join Advogado_Especializacao on Advogado.adv_codigo = Advogado_Especializacao.adv_codigo
--inner join Especializacao on Advogado_Especializacao.esp_codigo = Especializacao.esp_codigo


----6
--create procedure reajusteValor as
--Begin
--	update Advogado
--	set adv_valorHora = case
--		when adv_valorHora >= 10.00 and adv_valorHora <= 14.99 then adv_valorHora * 1.02
--		when adv_valorHora >= 15.00 and adv_valorHora <= 18.99 then adv_valorHora * 1.052
--		when  adv_valorHora >= 19.00 then adv_valorHora * 1.07
--	end
--end