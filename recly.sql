-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Mar-2023 às 16:51
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `recly`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, 'database\\migrations\\1_users', 1, '2023-02-20 16:40:37'),
(2, 'database\\migrations\\2_shedule', 1, '2023-02-20 16:40:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `shedules`
--

CREATE TABLE `shedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `weigth` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `shedules`
--

INSERT INTO `shedules` (`id`, `type`, `weigth`, `date`, `city`, `uf`, `address`, `number`, `created_at`, `updated_at`) VALUES
(1, 'papel', '15', '20/03/23 - 10:30', 'Rio de Janeiro', 'RJ', 'Rua Teste teste', '788', '2023-02-20 17:15:47', '2023-02-20 18:30:05'),
(2, 'Vidro', '25', '15/03/2023 - 12:00', 'Rio de Janeiro', 'RJ', 'Rua Teste', '88', '2023-02-20 18:56:21', '2023-02-20 18:56:21'),
(3, 'Metal', '10', '20/02/2023 - 10:30', 'Nova Iguaçu', 'RJ', 'Rua Teste', '88', '2023-02-20 19:09:25', '2023-02-20 19:09:25'),
(4, 'Papelāo', '5', '15/08/2020 - 10:30', 'Rio de Janeiro', 'RJ', 'Rua Tetse', '88', '2023-02-20 20:02:30', '2023-02-20 20:02:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ercik Ferrera', NULL, 'erick@gmail.com', '82944452', '2023-02-20 16:58:22', NULL),
(2, 'Teste Teste', NULL, 'teste@gmail.com', '82944452', '2023-02-20 17:06:47', '2023-02-20 17:06:47'),
(3, 'Erick Tetse', NULL, 'erick@teste.com', '82944452', '2023-02-20 18:13:03', '2023-02-20 18:13:03'),
(4, 'Erick teste2', NULL, 'teste@teste.com', '82944452', '2023-02-20 18:15:35', '2023-02-20 18:15:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `shedules`
--
ALTER TABLE `shedules`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `shedules`
--
ALTER TABLE `shedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
