USE rigor_portaria;

-- =====================
-- UPDATES
-- =====================

-- 1) Atualizar telefone de um motorista
UPDATE motorista SET telefone = '11 90000-1234' WHERE id_motorista = 1;

-- 2) Alterar setor de destino em uma pesagem
UPDATE pesagem SET id_setor_destino = 2 WHERE id_pesagem = 1;

-- 3) Atualizar nome do ajudante
UPDATE ajudante SET nome = 'Rafael Dias' WHERE id_ajudante = 1;

-- =====================
-- DELETES
-- =====================

-- 1) Remover acesso de visitante
DELETE FROM acesso_pessoa WHERE tipo_pessoa = 'Visitante';

-- 2) Remover veículo não utilizado em pesagens
DELETE FROM veiculo WHERE id_veiculo = 99; -- exemplo seguro: não vai apagar nada

-- 3) Remover ajudante SEM vinculo a pesagem
DELETE FROM ajudante WHERE id_ajudante NOT IN (SELECT id_ajudante FROM pesagem);
