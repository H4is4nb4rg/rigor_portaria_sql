# rigor_portaria_sql
# Sistema de Gestão de Portaria e Pesagem – Rigor  
Projeto desenvolvido para a disciplina de **Modelagem de Banco de Dados**, contemplando minimundo, DER, normalização, criação de tabelas e manipulação de dados com SQL (DML).

---

## 📌 Funcionalidades do Banco
- Cadastro de motoristas, ajudantes, veículos e transportadoras  
- Controle de pesagens de entrada e saída  
- Registro de acessos de pessoas  
- Geração de tickets  
- Relacionamentos normalizados até 3FN  
- Integridade referencial garantida por chaves estrangeiras  

---

## 🏗️ Estrutura dos Scripts

### `script_create.sql`
Contém:
- Criação do banco de dados  
- Criação de todas as tabelas  
- Definição de chaves primárias e estrangeiras  

### `script_inserts.sql`
Contém:
- Inserção de dados iniciais nas tabelas principais  

### `script_consultas.sql`
Inclui:
- SELECT com WHERE  
- SELECT com JOIN  
- SELECT com ORDER BY  
- SELECT com LIMIT (opcional)  

### `script_updates_deletes.sql`
Inclui:
- 3 comandos UPDATE  
- 3 comandos DELETE  
- Respeitando integridade referencial  

---

## ▶️ Como Executar

1. Instalar MySQL Server e MySQL Workbench  
2. Abrir o Workbench  
3. Criar nova aba SQL  
4. Executar na seguinte ordem:

1- script_create.sql

2- script_inserts.sql

3- script_consultas.sql (opcional para testes)

4 -script_updates_deletes.sql


---

## 🧑‍💻 Ferramentas utilizadas
- MySQL Server 8.x  
- MySQL Workbench  
- GitHub  

---

## 👤 Autor
Projeto desenvolvido por **Diego Pires**.
