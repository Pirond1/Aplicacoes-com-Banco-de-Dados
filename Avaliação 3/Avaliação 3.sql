----1
--CREATE TABLE ocorrencias (
--    oco_codigo INT IDENTITY PRIMARY KEY,
--    oco_tabela VARCHAR(100),
--    oco_descricao VARCHAR(100)
--);

--CREATE TRIGGER trg_after_update
--ON modelo
--AFTER UPDATE
--AS
--BEGIN
--    DECLARE @nomemodelo VARCHAR(100)

--    SELECT @nomemodelo = nomeModelo FROM modelo;

--    INSERT INTO ocorrencias (oco_tabela, oco_descricao)
--    VALUES ('Modelo', 'Modelo Deletado: ' + CAST(@nomemodelo AS VARCHAR(100)));
--END;


----2
--SELECT nomeMarca, nomeModelo, numeroChassi, cor
--INTO #temporaria
--FROM marca
--JOIN modelo ON  marca.id= modelo.idMarca
--JOIN automovel  ON modelo.id = automovel.idModelo;


----3
--CREATE PROCEDURE diminuirValor
--AS
--BEGIN
--    DECLARE @valor DECIMAL(8,2);

--    SELECT @valor = SUM(valorVenda) FROM automovel;

--    WHILE @valor >= 10.00
--    BEGIN
--        UPDATE automovel
--        SET valorVenda = valorVenda * 0.9;

--        SELECT @valor = SUM(valorVenda) FROM automovel;
--    END
--END;

--EXEC diminuirValor