-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 06:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_27_092147_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '1a4f48dbf34d783cf85b387a291ffc1c2418fdde09d7feeeeb872a6be57f6ae7', '[\"*\"]', NULL, '2022-01-28 10:39:59', '2022-01-28 10:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Distinctio quia est et laborum.', 'Sit reprehenderit libero quas dolorem perferendis corrupti qui quia. Porro adipisci beatae ipsam est deleniti placeat vitae. Ut modi corporis incidunt architecto ducimus veniam impedit.', '2022-01-27 11:24:54', '2022-01-27 11:24:54'),
(2, 'Veniam doloremque aut blanditiis iure non.', 'Ea voluptatibus in voluptas dolorem sint. Iure optio amet ullam. Vel doloremque nulla placeat quaerat qui officia atque. Exercitationem quisquam aut et veritatis accusantium omnis.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(3, 'Vel rerum vel consequatur voluptatem.', 'Qui doloribus animi tempore. Eveniet enim dolores dolore repudiandae quo eum. Possimus reiciendis consectetur quas qui. Est fugiat voluptatum ut nisi.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(4, 'Nemo libero voluptatem veniam beatae.', 'Id et consequatur qui explicabo. Iusto aut fuga assumenda id omnis nihil temporibus voluptatem. Similique soluta harum ipsa reprehenderit. Veniam laboriosam quae odio ut.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(5, 'Est voluptatum voluptas at quo.', 'Nostrum omnis est quae laborum architecto ex voluptate. Explicabo commodi maiores neque explicabo nulla aliquid earum. Minima quia est rem enim.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(6, 'Deleniti modi mollitia dignissimos praesentium.', 'Rerum omnis dolorem voluptatem id qui perspiciatis. Odio sit aut veritatis quis cupiditate nam. Et vitae recusandae fuga amet ut. Accusamus aperiam eveniet quos non est accusamus neque.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(7, 'Omnis eos molestiae quidem dicta veniam.', 'Necessitatibus blanditiis pariatur labore nam corporis. Atque aut aut accusantium laboriosam beatae. Eum iste et magni enim nihil et suscipit.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(8, 'Sequi quo deleniti expedita illo natus vel.', 'Maiores inventore dolorem rem voluptas voluptates et in. Nobis est velit aperiam quae et. Non magni libero voluptas adipisci tenetur.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(9, 'Est alias assumenda laudantium.', 'Voluptatem quia iure reiciendis deserunt qui ipsam ullam. Cum hic officiis quis. Beatae voluptas id eos ipsam quos vel.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(10, 'Voluptatem illum ratione autem.', 'Consequatur adipisci et inventore voluptate atque quia unde. Sequi non iusto eius et est nihil. Voluptates rem nulla aut sequi.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(11, 'Et libero ducimus provident ipsa eum in.', 'Minus sint velit odit veniam nostrum quibusdam. Laboriosam id asperiores reiciendis consequatur consequatur. Consectetur officia consequatur officia. Non dicta sunt eum ipsam rem nihil illum.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(12, 'Est alias sit aut quis.', 'Molestiae et in ea ad impedit ex porro. Autem molestiae provident id maiores sit nostrum.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(13, 'At sit soluta quas suscipit omnis error.', 'Quia fugiat quo nesciunt et. Odio quia error provident quia cum. Assumenda temporibus voluptas ut ipsam.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(14, 'Rerum et hic asperiores libero.', 'Repudiandae necessitatibus ea veniam quae cupiditate. In nesciunt rerum eaque aspernatur nemo necessitatibus. Rerum ipsam veritatis ut aut sed.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(15, 'Suscipit minima culpa sit eaque ut est.', 'Similique minus ut sit reprehenderit. Autem qui veniam tempora temporibus rerum. Possimus ut facere velit ratione aut.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(16, 'Ipsa dolor dolorem omnis qui ab.', 'Ut omnis veritatis qui sint. Tempore fuga ad enim consequatur. Ut saepe ea labore rerum iure eligendi. Quia et in sapiente cum aperiam. Facere vero ut veniam est.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(17, 'Nulla quia quo sunt veritatis vitae et.', 'Dolor beatae inventore libero amet voluptatem qui recusandae delectus. Deleniti aut et modi totam ut. Architecto aut nisi et rerum. Inventore eligendi ipsum nostrum ratione repellendus.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(18, 'Odit corrupti aperiam non velit.', 'Voluptas hic laborum aut consequatur. Repellendus ea quidem nemo illum consectetur iusto. Ad at ab dolorum iste quas numquam.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(19, 'Rerum qui ut non.', 'Doloribus ea voluptas et quo beatae optio sapiente. Sunt ut enim aut in vel. Est veniam quia atque aliquid eum.', '2022-01-27 11:24:55', '2022-01-27 11:24:55'),
(20, 'Veniam sint commodi veritatis illum labore.', 'Soluta vero dolore laborum fugit velit delectus. Est aut esse voluptas similique aut saepe. Autem deleniti nisi est voluptas.', '2022-01-27 11:24:55', '2022-01-27 11:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Smith', 'noman@gmail.com', NULL, '$2y$10$Vk/YyL6X8DKJHb7U9ltGAuz6Om18AUBDujlheppstLWAseR2s15ti', NULL, '2022-01-28 10:33:57', '2022-01-28 10:33:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
