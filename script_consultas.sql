USE rigor_portaria;

-- 1) Listar todos os veículos
SELECT * FROM veiculo;

-- 2) Motoristas ordenados por nome
SELECT * FROM motorista ORDER BY nome ASC;

-- 3) Veículos com transportadora
SELECT v.placa, v.modelo, t.nome AS transportadora
FROM veiculo v
JOIN transportadora t ON v.id_transportadora = t.id_transportadora;

-- 4) Pesagens com motorista, veículo e peso líquido
SELECT p.id_pesagem, m.nome AS motorista, v.placa, p.peso_liquido
FROM pesagem p
JOIN motorista m ON m.id_motorista = p.id_motorista
JOIN veiculo v ON v.id_veiculo = p.id_veiculo;

-- 5) Filtrar acessos sem saída registrada
SELECT * FROM acesso_pessoa WHERE data_hora_saida IS NULL;
