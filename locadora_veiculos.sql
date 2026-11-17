-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2026 às 02:28
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora_veiculos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adicional`
--

CREATE TABLE `adicional` (
  `id_adicional` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `valor_diaria` decimal(7,2) NOT NULL
) ;

--
-- Despejando dados para a tabela `adicional`
--

INSERT INTO `adicional` (`id_adicional`, `nome`, `descricao`, `valor_diaria`) VALUES
(1, 'GPS Navegador', 'Aparelho GPS com mapas atualizados do Brasil', 19.90),
(2, 'Cadeirinha Infantil', 'Cadeira de seguranca para criancas de 1 a 4 anos', 24.90),
(3, 'Bebe Conforto', 'Assento para bebes de ate 13 kg', 24.90),
(4, 'Assento de Elevacao', 'Assento para criancas de 4 a 10 anos', 19.90),
(5, 'Seguro Total', 'Protecao completa contra colisao, roubo e terceiros', 45.00),
(6, 'Protecao de Vidros e Farois', 'Cobertura de vidros, farois e lanternas', 15.00),
(7, 'Protecao de Pneus', 'Cobertura para danos em pneus e rodas', 12.00),
(8, 'Motorista Adicional', 'Inclusao de um segundo condutor habilitado', 29.90),
(9, 'Wi-Fi Portatil', 'Roteador 4G portatil com 20 GB por dia', 18.90),
(10, 'Porta-Bagagem de Teto', 'Bagageiro externo para bagagem extra', 22.00),
(11, 'Rack para Bicicleta', 'Suporte para ate 2 bicicletas', 20.00),
(12, 'Assistencia 24h Plus', 'Guincho e socorro mecanico ilimitados', 14.90),
(13, 'Tag de Pedagio', 'Passagem automatica em pedagios (pedagio cobrado a parte)', 9.90),
(14, 'Isencao de Franquia', 'Zera a franquia em caso de sinistro', 35.00),
(15, 'Suporte de Celular', 'Suporte veicular para smartphone', 4.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `valor_diaria_base` decimal(8,2) NOT NULL,
  `capacidade_passageiros` tinyint(4) NOT NULL DEFAULT 5
) ;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`, `descricao`, `valor_diaria_base`, `capacidade_passageiros`) VALUES
(1, 'Economico', 'Hatch de entrada, ideal para uso urbano e baixo consumo', 89.90, 5),
(2, 'Compacto', 'Hatch compacto com mais conforto e ar-condicionado digital', 109.90, 5),
(3, 'Hatch Premium', 'Hatch de segmento superior com acabamento e conectividade', 139.90, 5),
(4, 'Sedan Medio', 'Sedan com porta-malas amplo para viagens', 169.90, 5),
(5, 'Sedan Executivo', 'Sedan de alto conforto para viagens de negocios', 249.90, 5),
(6, 'SUV Compacto', 'Utilitario esportivo compacto, posicao de dirigir elevada', 199.90, 5),
(7, 'SUV Medio', 'SUV de porte medio com bom espaco interno', 279.90, 5),
(8, 'SUV Grande', 'SUV de 7 lugares para familias e grupos', 389.90, 7),
(9, 'Picape Leve', 'Picape compacta com cacamba para pequenas cargas', 219.90, 5),
(10, 'Picape Grande', 'Picape cabine dupla diesel 4x4 para estrada e trabalho', 329.90, 5),
(11, 'Van de Passageiros', 'Van para transporte de ate 15 pessoas', 459.90, 15),
(12, 'Utilitario de Carga', 'Furgao para transporte de carga e mudancas', 249.90, 3),
(13, 'Luxo', 'Veiculo premium importado com pacote completo', 599.90, 5),
(14, 'Eletrico', 'Veiculo 100% eletrico com autonomia urbana e rodoviaria', 349.90, 5),
(15, 'Esportivo/Conversivel', 'Veiculo esportivo de dois lugares', 799.90, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `uf` char(2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `email`, `telefone`, `data_nasc`, `cidade`, `uf`, `status`) VALUES
(1, 'Ana Beatriz Souza', '31245678901', 'ana.souza@email.com', '(38) 99812-3401', '1992-04-17', 'Montes Claros', 'MG', 'A'),
(2, 'Carlos Eduardo Lima', '42356789012', 'carlos.lima@email.com', '(31) 98821-4502', '1985-09-02', 'Belo Horizonte', 'MG', 'A'),
(3, 'Mariana Ferreira Costa', '53467890123', 'mariana.costa@email.com', '(34) 99733-5603', '1990-01-25', 'Uberlandia', 'MG', 'A'),
(4, 'Joao Pedro Almeida', '64578901234', 'joao.almeida@email.com', '(38) 99644-6704', '1998-11-08', 'Montes Claros', 'MG', 'A'),
(5, 'Fernanda Ribeiro Dias', '75689012345', 'fernanda.dias@email.com', '(61) 98555-7805', '1983-06-30', 'Brasilia', 'DF', 'A'),
(6, 'Rafael Gomes Pereira', '86790123456', 'rafael.pereira@email.com', '(62) 99466-8906', '1988-03-12', 'Goiania', 'GO', 'A'),
(7, 'Juliana Martins Rocha', '97801234567', 'juliana.rocha@email.com', '(71) 98377-9007', '1995-12-19', 'Salvador', 'BA', 'A'),
(8, 'Lucas Henrique Barbosa', '18912345678', 'lucas.barbosa@email.com', '(27) 99288-0108', '1991-07-04', 'Vitoria', 'ES', 'A'),
(9, 'Patricia Nogueira Alves', '29023456789', 'patricia.alves@email.com', '(21) 98199-1209', '1979-02-21', 'Rio de Janeiro', 'RJ', 'A'),
(10, 'Marcos Vinicius Teixeira', '30134567890', 'marcos.teixeira@email.com', '(11) 99110-2310', '1987-10-15', 'Sao Paulo', 'SP', 'A'),
(11, 'Camila Duarte Cardoso', '41245678901', 'camila.cardoso@email.com', '(41) 98021-3411', '1994-05-27', 'Curitiba', 'PR', 'A'),
(12, 'Bruno Cavalcanti Melo', '52356789012', 'bruno.melo@email.com', '(51) 99932-4512', '1982-08-09', 'Porto Alegre', 'RS', 'B'),
(13, 'Larissa Moreira Santos', '63467890123', 'larissa.santos@email.com', '(32) 98843-5613', '1996-01-14', 'Juiz de Fora', 'MG', 'A'),
(14, 'Gustavo Araujo Pinto', '74578901234', 'gustavo.pinto@email.com', '(31) 99754-6714', '1989-09-23', 'Contagem', 'MG', 'A'),
(15, 'Tatiane Oliveira Freitas', '85689012345', 'tatiane.freitas@email.com', '(31) 98665-7815', '1993-03-06', 'Belo Horizonte', 'MG', 'I');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filial`
--

CREATE TABLE `filial` (
  `id_filial` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `uf` char(2) NOT NULL,
  `endereco` varchar(120) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `ativa` tinyint(1) NOT NULL DEFAULT 1
) ;

--
-- Despejando dados para a tabela `filial`
--

INSERT INTO `filial` (`id_filial`, `nome`, `cidade`, `uf`, `endereco`, `telefone`, `ativa`) VALUES
(1, 'LocaFacil Montes Claros Centro', 'Montes Claros', 'MG', 'Av. Cel. Prates, 1200 - Centro', '(38) 3200-1001', 1),
(2, 'LocaFacil Montes Claros Aeroporto', 'Montes Claros', 'MG', 'Rod. MG-308, km 2 - Aeroporto', '(38) 3200-1002', 1),
(3, 'LocaFacil Belo Horizonte Savassi', 'Belo Horizonte', 'MG', 'Rua Pernambuco, 950 - Savassi', '(31) 3300-2001', 1),
(4, 'LocaFacil Confins Aeroporto', 'Confins', 'MG', 'Rod. MG-010, km 39 - Aeroporto de Confins', '(31) 3300-2002', 1),
(5, 'LocaFacil Uberlandia Centro', 'Uberlandia', 'MG', 'Av. Afonso Pena, 2100 - Centro', '(34) 3400-3001', 1),
(6, 'LocaFacil Juiz de Fora', 'Juiz de Fora', 'MG', 'Av. Rio Branco, 1800 - Centro', '(32) 3500-4001', 1),
(7, 'LocaFacil Contagem', 'Contagem', 'MG', 'Av. Joao Cesar de Oliveira, 400 - Eldorado', '(31) 3300-2003', 1),
(8, 'LocaFacil Brasilia Asa Sul', 'Brasilia', 'DF', 'SGAS 906, Bloco B - Asa Sul', '(61) 3600-5001', 1),
(9, 'LocaFacil Goiania Setor Bueno', 'Goiania', 'GO', 'Av. T-9, 1500 - Setor Bueno', '(62) 3700-6001', 1),
(10, 'LocaFacil Salvador Aeroporto', 'Salvador', 'BA', 'Av. Luis Eduardo Magalhaes, s/n - Aeroporto', '(71) 3800-7001', 1),
(11, 'LocaFacil Vitoria Praia do Canto', 'Vitoria', 'ES', 'Av. Saturnino de Brito, 700 - Praia do Canto', '(27) 3900-8001', 1),
(12, 'LocaFacil Rio de Janeiro Galeao', 'Rio de Janeiro', 'RJ', 'Av. Vinte de Janeiro, s/n - Galeao', '(21) 3100-9001', 1),
(13, 'LocaFacil Sao Paulo Guarulhos', 'Guarulhos', 'SP', 'Rod. Helio Smidt, s/n - Cumbica', '(11) 3200-1101', 1),
(14, 'LocaFacil Curitiba Agua Verde', 'Curitiba', 'PR', 'Av. Republica Argentina, 1300 - Agua Verde', '(41) 3300-1201', 1),
(15, 'LocaFacil Porto Alegre Moinhos', 'Porto Alegre', 'RS', 'Rua Dr. Timoteo, 600 - Moinhos de Vento', '(51) 3400-1301', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `cargo` varchar(40) NOT NULL,
  `salario` decimal(9,2) NOT NULL,
  `data_admissao` date NOT NULL,
  `id_filial` int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `cpf`, `email`, `cargo`, `salario`, `data_admissao`, `id_filial`) VALUES
(1, 'Roberto Carvalho Mendes', '10120230301', 'roberto.mendes@locafacil.com.br', 'Gerente de Filial', 8200.00, '2019-02-04', 1),
(2, 'Silvia Helena Pacheco', '10120230302', 'silvia.pacheco@locafacil.com.br', 'Atendente', 2650.00, '2021-03-15', 1),
(3, 'Diego Fonseca Ramos', '10120230303', 'diego.ramos@locafacil.com.br', 'Agente de Locacao', 3100.00, '2020-08-10', 2),
(4, 'Priscila Andrade Lopes', '10120230304', 'priscila.lopes@locafacil.com.br', 'Gerente de Filial', 7900.00, '2018-05-21', 3),
(5, 'Thiago Monteiro Reis', '10120230305', 'thiago.reis@locafacil.com.br', 'Atendente', 2700.00, '2022-01-17', 3),
(6, 'Renata Batista Guedes', '10120230306', 'renata.guedes@locafacil.com.br', 'Agente de Locacao', 3200.00, '2021-09-06', 4),
(7, 'Felipe Azevedo Cunha', '10120230307', 'felipe.cunha@locafacil.com.br', 'Atendente', 2600.00, '2023-02-13', 5),
(8, 'Vanessa Coelho Prado', '10120230308', 'vanessa.prado@locafacil.com.br', 'Gerente de Filial', 7600.00, '2019-11-04', 8),
(9, 'Anderson Pires Machado', '10120230309', 'anderson.machado@locafacil.com.br', 'Agente de Locacao', 3050.00, '2022-06-20', 9),
(10, 'Leticia Barros Viana', '10120230310', 'leticia.viana@locafacil.com.br', 'Atendente', 2580.00, '2024-04-01', 10),
(11, 'Eduardo Salles Brito', '10120230311', 'eduardo.brito@locafacil.com.br', 'Gerente de Filial', 7500.00, '2020-01-27', 12),
(12, 'Natalia Tavares Borges', '10120230312', 'natalia.borges@locafacil.com.br', 'Agente de Locacao', 3150.00, '2023-07-10', 13),
(13, 'Rodrigo Queiroz Faria', '10120230313', 'rodrigo.faria@locafacil.com.br', 'Atendente', 2620.00, '2024-09-02', 14),
(14, 'Bianca Lacerda Rangel', '10120230314', 'bianca.rangel@locafacil.com.br', 'Auxiliar Administrativo', 2400.00, '2025-02-10', 15),
(15, 'Marcio Dutra Sampaio', '10120230315', 'marcio.sampaio@locafacil.com.br', 'Supervisor de Frota', 4300.00, '2019-06-03', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `habilitacao`
--

CREATE TABLE `habilitacao` (
  `id_habilitacao` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `numero_registro` char(11) NOT NULL,
  `categoria` varchar(2) NOT NULL,
  `data_emissao` date NOT NULL,
  `data_validade` date NOT NULL
) ;

--
-- Despejando dados para a tabela `habilitacao`
--

INSERT INTO `habilitacao` (`id_habilitacao`, `id_cliente`, `numero_registro`, `categoria`, `data_emissao`, `data_validade`) VALUES
(1, 1, '04512367890', 'B', '2015-03-10', '2030-03-10'),
(2, 2, '04623478901', 'AB', '2012-06-22', '2027-06-22'),
(3, 3, '04734589012', 'B', '2018-09-05', '2028-09-05'),
(4, 4, '04845690123', 'B', '2019-01-15', '2029-01-15'),
(5, 5, '04956701234', 'B', '2010-11-30', '2026-11-30'),
(6, 6, '05067812345', 'AB', '2016-04-18', '2031-04-18'),
(7, 7, '05178923456', 'B', '2020-07-07', '2030-07-07'),
(8, 8, '05289034567', 'B', '2017-02-25', '2027-02-25'),
(9, 9, '05390145678', 'D', '2014-08-12', '2029-08-12'),
(10, 10, '05401256789', 'B', '2013-12-01', '2028-12-01'),
(11, 11, '05512367890', 'AB', '2021-05-20', '2031-05-20'),
(12, 12, '05623478901', 'B', '2011-10-09', '2026-10-09'),
(13, 13, '05734589012', 'B', '2019-03-03', '2029-03-03'),
(14, 14, '05845690123', 'C', '2015-09-14', '2030-09-14'),
(15, 15, '05956701234', 'B', '2022-01-28', '2032-01-28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_locacao`
--

CREATE TABLE `item_locacao` (
  `id_item` int(11) NOT NULL,
  `id_locacao` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `valor_diaria_contratada` decimal(8,2) NOT NULL,
  `km_retirada` int(11) DEFAULT NULL,
  `km_devolucao` int(11) DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `item_locacao`
--

INSERT INTO `item_locacao` (`id_item`, `id_locacao`, `id_veiculo`, `valor_diaria_contratada`, `km_retirada`, `km_devolucao`) VALUES
(1, 1, 1, 89.90, 26900, 27350),
(2, 2, 4, 109.90, 18200, 19650),
(3, 2, 5, 139.90, 15900, 16980),
(4, 3, 8, 199.90, 34100, 34980),
(5, 4, 3, 109.90, 32500, 32900),
(6, 5, 7, 249.90, 25200, 26300),
(7, 6, 9, 279.90, 20500, 22100),
(8, 7, 10, 389.90, 44400, 45900),
(9, 8, 6, 169.90, 40100, 41200),
(10, 9, 13, 459.90, 77200, 78900),
(11, 10, 14, 249.90, 47700, 49500),
(12, 11, 15, 599.90, 13400, 14200),
(13, 12, 11, 219.90, 18200, 19800),
(14, 13, 2, 84.90, 13900, 15210),
(15, 14, 4, 109.90, 21500, NULL),
(16, 15, 16, 349.90, 9500, NULL),
(17, 16, 12, 329.90, NULL, NULL),
(18, 17, 10, 389.90, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `locacao`
--

CREATE TABLE `locacao` (
  `id_locacao` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_filial_retirada` int(11) NOT NULL,
  `id_filial_devolucao` int(11) NOT NULL,
  `data_retirada` date NOT NULL,
  `data_prevista_devolucao` date NOT NULL,
  `data_devolucao_real` date DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'R'
) ;

--
-- Despejando dados para a tabela `locacao`
--

INSERT INTO `locacao` (`id_locacao`, `id_cliente`, `id_funcionario`, `id_filial_retirada`, `id_filial_devolucao`, `data_retirada`, `data_prevista_devolucao`, `data_devolucao_real`, `status`) VALUES
(1, 1, 2, 1, 1, '2026-01-05', '2026-01-08', '2026-01-08', 'F'),
(2, 2, 5, 3, 3, '2026-01-12', '2026-01-19', '2026-01-19', 'F'),
(3, 3, 7, 5, 5, '2026-01-20', '2026-01-25', '2026-01-26', 'F'),
(4, 4, 3, 2, 2, '2026-02-02', '2026-02-05', '2026-02-05', 'F'),
(5, 5, 8, 8, 8, '2026-02-10', '2026-02-17', '2026-02-17', 'F'),
(6, 6, 9, 9, 9, '2026-02-14', '2026-02-21', '2026-02-22', 'F'),
(7, 7, 10, 10, 10, '2026-02-26', '2026-03-02', '2026-03-02', 'F'),
(8, 8, 6, 4, 11, '2026-03-07', '2026-03-12', '2026-03-12', 'F'),
(9, 9, 11, 12, 12, '2026-03-15', '2026-03-20', '2026-03-20', 'F'),
(10, 10, 12, 13, 13, '2026-03-28', '2026-04-04', '2026-04-04', 'F'),
(11, 11, 13, 14, 14, '2026-04-10', '2026-04-13', '2026-04-13', 'F'),
(12, 13, 2, 1, 1, '2026-04-18', '2026-04-25', '2026-04-24', 'F'),
(13, 1, 1, 1, 1, '2026-05-02', '2026-05-09', '2026-05-09', 'F'),
(14, 14, 5, 3, 3, '2026-06-24', '2026-07-01', NULL, 'A'),
(15, 2, 14, 15, 15, '2026-06-25', '2026-06-30', NULL, 'A'),
(16, 4, 3, 2, 2, '2026-07-10', '2026-07-14', NULL, 'R'),
(17, 7, 10, 10, 10, '2026-06-01', '2026-06-05', NULL, 'C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `locacao_adicional`
--

CREATE TABLE `locacao_adicional` (
  `id_locacao_adicional` int(11) NOT NULL,
  `id_locacao` int(11) NOT NULL,
  `id_adicional` int(11) NOT NULL,
  `quantidade` tinyint(4) NOT NULL DEFAULT 1,
  `valor_diaria_contratada` decimal(7,2) NOT NULL
) ;

--
-- Despejando dados para a tabela `locacao_adicional`
--

INSERT INTO `locacao_adicional` (`id_locacao_adicional`, `id_locacao`, `id_adicional`, `quantidade`, `valor_diaria_contratada`) VALUES
(1, 1, 1, 1, 19.90),
(2, 2, 5, 2, 45.00),
(3, 2, 12, 1, 14.90),
(4, 3, 5, 1, 45.00),
(5, 3, 8, 1, 29.90),
(6, 4, 2, 1, 24.90),
(7, 5, 5, 1, 45.00),
(8, 5, 13, 1, 9.90),
(9, 6, 1, 1, 19.90),
(10, 6, 14, 1, 35.00),
(11, 7, 9, 1, 18.90),
(12, 8, 10, 1, 22.00),
(13, 9, 12, 1, 14.90),
(14, 10, 5, 1, 45.00),
(15, 11, 5, 1, 45.00),
(16, 12, 3, 1, 24.90),
(17, 13, 11, 1, 20.00),
(18, 14, 6, 1, 15.00),
(19, 15, 15, 1, 4.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `manutencao`
--

CREATE TABLE `manutencao` (
  `id_manutencao` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `data_entrada` date NOT NULL,
  `data_saida` date DEFAULT NULL,
  `custo` decimal(9,2) NOT NULL DEFAULT 0.00,
  `oficina` varchar(80) NOT NULL
) ;

--
-- Despejando dados para a tabela `manutencao`
--

INSERT INTO `manutencao` (`id_manutencao`, `id_veiculo`, `tipo`, `descricao`, `data_entrada`, `data_saida`, `custo`, `oficina`) VALUES
(1, 1, 'REVISAO', 'Revisao dos 25.000 km', '2025-12-10', '2025-12-11', 480.00, 'Auto Center Minas'),
(2, 2, 'PREVENTIVA', 'Troca de oleo e filtros', '2026-04-02', '2026-04-02', 280.00, 'Auto Center Minas'),
(3, 3, 'CORRETIVA', 'Troca de pastilhas de freio', '2026-02-08', '2026-02-09', 610.00, 'Hyundai Autoport'),
(4, 4, 'PREVENTIVA', 'Alinhamento e balanceamento', '2026-01-08', '2026-01-08', 190.00, 'Pneus e Cia BH'),
(5, 5, 'REVISAO', 'Revisao dos 15.000 km', '2026-01-25', '2026-01-26', 520.00, 'Volkswagen Pampulha'),
(6, 6, 'PREVENTIVA', 'Troca dos quatro pneus', '2026-03-14', '2026-03-15', 2200.00, 'Pneus e Cia BH'),
(7, 7, 'REVISAO', 'Revisao dos 20.000 km', '2026-03-03', '2026-03-04', 890.00, 'Honda Brasilia Sul'),
(8, 8, 'CORRETIVA', 'Reparo no sistema de arrefecimento', '2026-01-30', '2026-02-04', 1750.00, 'Jeep Triangulo'),
(9, 9, 'PREVENTIVA', 'Higienizacao do ar-condicionado', '2026-03-01', '2026-03-01', 220.00, 'Toyota Goiania'),
(10, 10, 'REVISAO', 'Revisao dos 45.000 km', '2026-03-05', '2026-03-07', 1980.00, 'Chevrolet Salvador Norte'),
(11, 11, 'CORRETIVA', 'Substituicao dos amortecedores traseiros', '2026-05-12', '2026-05-14', 1320.00, 'Auto Center Minas'),
(12, 12, 'REVISAO', 'Revisao dos 50.000 km', '2026-05-20', '2026-05-22', 2450.00, 'Toyota Montes Claros'),
(13, 13, 'CORRETIVA', 'Reparo de embreagem (orcamento aprovado)', '2026-06-18', NULL, 4800.00, 'Mercedes Rio Truck Center'),
(14, 14, 'PREVENTIVA', 'Troca de oleo e filtros', '2026-04-08', '2026-04-08', 410.00, 'Renault Guarulhos'),
(15, 15, 'REVISAO', 'Revisao dos 10.000 km', '2026-04-15', '2026-04-16', 1150.00, 'BMW Curitiba Prime');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `id_locacao` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `forma` varchar(15) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'P'
) ;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `id_locacao`, `valor`, `forma`, `data_pagamento`, `status`) VALUES
(1, 1, 329.40, 'PIX', '2026-01-08', 'P'),
(2, 2, 1000.00, 'CARTAO_CREDITO', '2026-01-12', 'P'),
(3, 2, 1482.90, 'CARTAO_CREDITO', '2026-01-19', 'P'),
(4, 3, 1648.80, 'CARTAO_CREDITO', '2026-01-26', 'P'),
(5, 4, 404.40, 'DINHEIRO', '2026-02-05', 'P'),
(6, 5, 2133.60, 'PIX', '2026-02-17', 'P'),
(7, 6, 2678.40, 'CARTAO_CREDITO', '2026-02-22', 'P'),
(8, 7, 1635.20, 'CARTAO_DEBITO', '2026-03-02', 'P'),
(9, 8, 959.50, 'PIX', '2026-03-12', 'P'),
(10, 9, 2374.00, 'BOLETO', '2026-03-22', 'P'),
(11, 10, 2064.30, 'CARTAO_CREDITO', '2026-04-04', 'P'),
(12, 11, 1934.70, 'PIX', '2026-04-13', 'P'),
(13, 12, 1468.80, 'CARTAO_DEBITO', '2026-04-24', 'P'),
(14, 13, 734.30, 'PIX', '2026-05-09', 'P'),
(15, 14, 300.00, 'PIX', '2026-06-24', 'P'),
(16, 15, 500.00, 'CARTAO_CREDITO', '2026-06-25', 'P'),
(17, 16, 200.00, 'PIX', '2026-06-20', 'P'),
(18, 17, 300.00, 'PIX', '2026-05-30', 'E'),
(19, 14, 574.30, 'BOLETO', '2026-07-01', 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id_veiculo` int(11) NOT NULL,
  `placa` char(7) NOT NULL,
  `chassi` char(17) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `ano_fabricacao` smallint(6) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `km_atual` int(11) NOT NULL DEFAULT 0,
  `status` char(1) NOT NULL DEFAULT 'D',
  `id_categoria` int(11) NOT NULL,
  `id_filial` int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`id_veiculo`, `placa`, `chassi`, `marca`, `modelo`, `ano_fabricacao`, `cor`, `km_atual`, `status`, `id_categoria`, `id_filial`) VALUES
(1, 'QRS1A23', '9BWZZZ377VT000001', 'Volkswagen', 'Gol', 2023, 'Branco', 27350, 'D', 1, 1),
(2, 'PKT2B34', '9BD195A32P0000002', 'Fiat', 'Mobi', 2024, 'Prata', 15210, 'D', 1, 1),
(3, 'RTY3C45', '9BHBG51CAPP000003', 'Hyundai', 'HB20', 2023, 'Cinza', 32900, 'D', 2, 2),
(4, 'LMN4D56', '9BGEA48C0RG000004', 'Chevrolet', 'Onix', 2024, 'Preto', 21900, 'L', 2, 3),
(5, 'BCD5E67', '9BWAA05U8RP000005', 'Volkswagen', 'Polo', 2024, 'Vermelho', 16980, 'D', 3, 3),
(6, 'EFG6F78', '9BRBLWHE0P0000006', 'Toyota', 'Corolla', 2023, 'Prata', 41200, 'D', 4, 11),
(7, 'HIJ7G89', '93HFC2650RZ000007', 'Honda', 'Civic', 2024, 'Preto', 26300, 'D', 5, 8),
(8, 'KLM8H90', '98MKBHAC0PK000008', 'Jeep', 'Renegade', 2023, 'Branco', 34980, 'D', 6, 5),
(9, 'NOP9J01', '9BRKZAAG0R0000009', 'Toyota', 'Corolla Cross', 2024, 'Cinza', 22100, 'D', 7, 9),
(10, 'QWE0K12', '9BGKS26L0PG000010', 'Chevrolet', 'Trailblazer', 2023, 'Preto', 45900, 'D', 8, 10),
(11, 'ASD1L23', '9BD578A12RY000011', 'Fiat', 'Strada', 2024, 'Branco', 19800, 'D', 9, 1),
(12, 'ZXC2M34', '8AJKB3CD0P0000012', 'Toyota', 'Hilux', 2023, 'Prata', 52300, 'D', 10, 2),
(13, 'VBN3N45', '8AC907655NE000013', 'Mercedes-Benz', 'Sprinter', 2022, 'Branco', 78900, 'M', 11, 12),
(14, 'YUI4P56', '93YMAF4CHPJ000014', 'Renault', 'Master', 2023, 'Branco', 49500, 'D', 12, 13),
(15, 'TGB5Q67', 'WBA20AK00R0000015', 'BMW', '320i', 2024, 'Azul', 14200, 'D', 13, 14),
(16, 'UJM6R78', 'LC0CE4DB0R0000016', 'BYD', 'Dolphin', 2024, 'Cinza', 9800, 'L', 14, 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adicional`
--
ALTER TABLE `adicional`
  ADD PRIMARY KEY (`id_adicional`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id_filial`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_funcionario_filial` (`id_filial`);

--
-- Índices de tabela `habilitacao`
--
ALTER TABLE `habilitacao`
  ADD PRIMARY KEY (`id_habilitacao`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`),
  ADD UNIQUE KEY `numero_registro` (`numero_registro`);

--
-- Índices de tabela `item_locacao`
--
ALTER TABLE `item_locacao`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `uq_item_locacao_veiculo` (`id_locacao`,`id_veiculo`),
  ADD KEY `fk_item_veiculo` (`id_veiculo`);

--
-- Índices de tabela `locacao`
--
ALTER TABLE `locacao`
  ADD PRIMARY KEY (`id_locacao`),
  ADD KEY `fk_locacao_cliente` (`id_cliente`),
  ADD KEY `fk_locacao_funcionario` (`id_funcionario`),
  ADD KEY `fk_locacao_filial_ret` (`id_filial_retirada`),
  ADD KEY `fk_locacao_filial_dev` (`id_filial_devolucao`);

--
-- Índices de tabela `locacao_adicional`
--
ALTER TABLE `locacao_adicional`
  ADD PRIMARY KEY (`id_locacao_adicional`),
  ADD UNIQUE KEY `uq_locadic` (`id_locacao`,`id_adicional`),
  ADD KEY `fk_locadic_adicional` (`id_adicional`);

--
-- Índices de tabela `manutencao`
--
ALTER TABLE `manutencao`
  ADD PRIMARY KEY (`id_manutencao`),
  ADD KEY `fk_manutencao_veiculo` (`id_veiculo`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `fk_pagamento_locacao` (`id_locacao`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD UNIQUE KEY `chassi` (`chassi`),
  ADD KEY `fk_veiculo_categoria` (`id_categoria`),
  ADD KEY `fk_veiculo_filial` (`id_filial`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adicional`
--
ALTER TABLE `adicional`
  MODIFY `id_adicional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filial`
--
ALTER TABLE `filial`
  MODIFY `id_filial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `habilitacao`
--
ALTER TABLE `habilitacao`
  MODIFY `id_habilitacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_locacao`
--
ALTER TABLE `item_locacao`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locacao`
--
ALTER TABLE `locacao`
  MODIFY `id_locacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locacao_adicional`
--
ALTER TABLE `locacao_adicional`
  MODIFY `id_locacao_adicional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `manutencao`
--
ALTER TABLE `manutencao`
  MODIFY `id_manutencao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_filial` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id_filial`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `habilitacao`
--
ALTER TABLE `habilitacao`
  ADD CONSTRAINT `fk_habilitacao_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `item_locacao`
--
ALTER TABLE `item_locacao`
  ADD CONSTRAINT `fk_item_locacao` FOREIGN KEY (`id_locacao`) REFERENCES `locacao` (`id_locacao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_veiculo` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `locacao`
--
ALTER TABLE `locacao`
  ADD CONSTRAINT `fk_locacao_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_locacao_filial_dev` FOREIGN KEY (`id_filial_devolucao`) REFERENCES `filial` (`id_filial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_locacao_filial_ret` FOREIGN KEY (`id_filial_retirada`) REFERENCES `filial` (`id_filial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_locacao_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `locacao_adicional`
--
ALTER TABLE `locacao_adicional`
  ADD CONSTRAINT `fk_locadic_adicional` FOREIGN KEY (`id_adicional`) REFERENCES `adicional` (`id_adicional`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_locadic_locacao` FOREIGN KEY (`id_locacao`) REFERENCES `locacao` (`id_locacao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `manutencao`
--
ALTER TABLE `manutencao`
  ADD CONSTRAINT `fk_manutencao_veiculo` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_pagamento_locacao` FOREIGN KEY (`id_locacao`) REFERENCES `locacao` (`id_locacao`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `fk_veiculo_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_veiculo_filial` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id_filial`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
