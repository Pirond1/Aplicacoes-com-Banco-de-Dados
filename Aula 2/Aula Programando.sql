--select CONCAT(Nome, Sobrenome) as NomeCompleto,
--case
--	when DATEDIFF(year, DataNac, GETDATE()) between 0 and 20 then 'Jovem'
--	when DATEDIFF(year, DataNac, GETDATE()) between 21 and 50 then 'Adulto'
--	when DATEDIFF(year, DataNac, GETDATE()) between 51 and 70 then 'Velho'
--	when DATEDIFF(year, DataNac, GETDATE()) > 70 then 'Idoso'
--end as IdadeFuncionario
--from Funcionarios

--DECLARE @contador INT = 0;
--	--Criando a tabela que será populada
--CREATE TABLE Numeros (numero INT);
--	WHILE @contador < 50
--	BEGIN
--		SET @contador += 1;
--		INSERT INTO Numeros VALUES (@contador);
--END

--SELECT * FROM Numeros