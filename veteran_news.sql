-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 07:23 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veteran_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug_cat`, `created_at`, `updated_at`) VALUES
(1, 'Article', 'article', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(2, 'Curriculum', 'curriculum', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(3, 'Student Organizations', 'student-organizations', '2021-12-08 09:22:37', '2021-12-08 09:22:37');

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
(5, '2021_12_08_070109_create_posts_table', 1),
(6, '2021_12_08_091105_create_categories_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Harum adipisci excepturi est ex velit porro.', 'est-aut-molestias-molestiae-nihil-id-earum-et', 'Molestiae consequatur optio voluptas porro qui ducimus nostrum repellat. Molestias nisi enim non quis rerum voluptatem amet. Repudiandae quidem voluptatibus exercitationem non porro facilis. Perspiciatis deserunt saepe rerum dolorem quis illo reiciendis perspiciatis.', '<p>Ipsum rerum temporibus dolor ipsam rerum. Nostrum rerum qui sequi veniam veritatis dolores impedit. Tempora et rerum est doloremque nemo non eaque. Reiciendis nihil delectus similique omnis aspernatur et fugit.</p><p>Qui illo alias iusto accusamus aperiam voluptas. Possimus maiores deserunt minima itaque repudiandae quis. Dolor id quos quos commodi maiores.</p><p>Aut placeat sint fuga quam placeat rerum quae. Sunt voluptatibus dolores fuga nisi doloremque. Temporibus ut unde omnis voluptatum sed accusantium ratione magnam.</p><p>Quas aperiam ipsa dolorum voluptatum nobis qui. Quas voluptatem velit in iusto. Totam voluptas sed suscipit quod necessitatibus adipisci. Ut et et quis eius.</p><p>Consequatur sint error beatae. Placeat at deserunt dolore rem ipsam. Et molestiae consequuntur optio qui nobis omnis occaecati qui.</p><p>Cumque deleniti dolorem repellat sit deserunt ipsam debitis repellat. Error illo atque et molestiae quia. Amet aut non doloribus delectus ipsam rerum magni voluptas. Rerum molestiae dicta dolor voluptatibus.</p><p>Eos dignissimos id velit eveniet temporibus. Consequuntur corrupti omnis iusto consequuntur ipsa rerum. Dolores tempora et aliquam ad sunt provident. Commodi officiis ducimus voluptatum in.</p><p>Est rerum dolorem ut incidunt id. Quidem aut deserunt dolor odio et architecto. Rem autem suscipit repellat qui. Laudantium omnis sed incidunt laudantium quis.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(2, 3, 1, 'Illo atque facilis accusantium enim sed similique consequatur.', 'nisi-necessitatibus-cumque-magnam-quis', 'Dolores iure nemo quas aut exercitationem qui. Natus numquam et ut. Dolore consequatur dolores similique aut dolorem possimus. Accusantium aut non eos repellendus et autem facere quasi.', '<p>Ea excepturi quo incidunt dolores voluptas et deleniti. Ea ad expedita repellendus. Et aut dignissimos accusamus in. Alias est rerum amet nihil et deserunt explicabo.</p><p>At nisi esse itaque et. Quaerat pariatur libero cupiditate vel ut. Necessitatibus eligendi corporis tempore.</p><p>Dolorum quis sit consequatur repellat minima. Dolore amet qui fugiat vitae iusto. Esse id nobis quia iusto iusto tempore.</p><p>Iure sed omnis sapiente non at nulla dolor. Rerum et neque est quo nostrum perferendis consequuntur odio.</p><p>Et quia id consequatur in non consequuntur ex. Omnis culpa dolores in ut labore et asperiores. Recusandae nam voluptas quaerat voluptas eum fugit.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(3, 1, 4, 'Fugit officiis autem officia minima dolores.', 'earum-fugit-error-officia-rem-quas-repellendus-pariatur', 'Est porro consequatur quisquam magnam pariatur. Vitae ipsa et minus. Exercitationem aspernatur veniam eum nihil eum expedita. Expedita aspernatur non ab ab.', '<p>Sed rerum qui consequatur a iusto eligendi. Ducimus temporibus natus excepturi nam facilis. Vitae mollitia optio sunt ea voluptas officiis. Quia esse exercitationem dolores a aperiam quo rerum quo. Totam recusandae totam facilis dolorum nostrum at at.</p><p>Dolor nemo at ex a sed. Culpa ipsam dolorem quibusdam optio sed sed. Animi totam eius officiis sit. Quo neque velit molestiae quaerat.</p><p>In optio nemo quibusdam et. Qui culpa voluptas sint ipsum saepe. Dolor id et quis et. Asperiores dolorem ut neque esse officia sunt enim.</p><p>Nesciunt dolor in aut cumque consequatur ut quaerat. Assumenda doloribus numquam atque sit dolorem corporis iusto.</p><p>Deleniti ut quia non enim et ex sunt suscipit. Eos fugiat veniam occaecati quis. Laboriosam porro iure error aperiam non voluptatibus dolorem iste. In et molestiae est voluptas accusantium omnis repellat.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(4, 3, 4, 'Et commodi in.', 'optio-quia-architecto-ut-aut-distinctio-totam-voluptas', 'Est rem temporibus architecto placeat laudantium est eum. Qui qui enim et sequi expedita consequatur. Ut aspernatur velit quia sed quis iste molestiae. Soluta doloribus excepturi quia et.', '<p>Vel suscipit aut nihil et. Minus quod quia tempore. Rem nulla dolor qui similique aliquam. Voluptas suscipit odio eaque est temporibus soluta.</p><p>Reprehenderit ex est incidunt architecto asperiores consectetur. Voluptas ullam velit vel aut eum sunt. Est fugit aut esse delectus. Iste velit suscipit aut dolor.</p><p>Beatae labore iusto fugiat provident qui est dolores hic. Qui voluptates nisi ea sit rerum sed consequatur et. Expedita qui aut blanditiis dolorem a quia.</p><p>Sed et maxime debitis. Et non sit et dolorem error error minima aperiam. Sit qui magnam ab. Natus quae nam tenetur culpa ut placeat beatae hic.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(5, 2, 5, 'Modi aut deleniti iure dicta aut non sunt.', 'quo-fugiat-nihil-ipsum-consectetur-dolorum', 'Suscipit sed quae eveniet numquam saepe. Et laudantium rerum sint sint. Et nulla illo consequatur.', '<p>Deserunt non sapiente id quo eligendi. Perferendis odit deleniti dolores eligendi. Vero eum ea sequi qui consectetur sequi. Ut eligendi soluta velit.</p><p>Enim autem quisquam esse quos omnis possimus deserunt. Distinctio excepturi omnis quibusdam rerum sint. Qui id molestiae vitae provident consequatur quod.</p><p>Fuga nobis sequi neque reiciendis et velit cumque. Nemo aut eum sint est est ad soluta. Deserunt nemo dignissimos unde omnis numquam velit.</p><p>Rerum doloremque eos autem tempora est tenetur quas. Cumque tempora quis laboriosam qui velit. Qui vero delectus iste eaque voluptatem sit ab.</p><p>Tempore aut et aut expedita totam nisi. Non eum consequuntur dolor ab repudiandae. Molestiae consectetur recusandae aut recusandae illo atque beatae. Error ipsa qui voluptates eius sed est in.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(6, 3, 1, 'Enim id molestias est.', 'libero-consequatur-sed-minima-hic-sit-consectetur', 'Quisquam quae eos ullam et est. Officia reiciendis ullam recusandae voluptatibus facilis qui voluptatem excepturi. Aliquid quisquam ea quia placeat eaque.', '<p>Voluptates ipsum aliquam odit quaerat autem. Autem animi qui dolores aut. Libero quod quis omnis et fuga possimus maiores vero.</p><p>Sed inventore non expedita animi tempora omnis. Sit laborum sed dolorem laudantium ullam. Nesciunt et omnis consectetur quasi voluptas commodi.</p><p>Sapiente dolor eveniet aut quisquam sunt error dolores nihil. Et molestiae velit saepe delectus ex. Maiores molestias laboriosam blanditiis ea occaecati sed ut. Maiores voluptatem ipsa magnam sed.</p><p>Quod est totam ratione at. Odio quo odio molestiae cumque eligendi aut maiores optio. Velit quaerat nulla facilis nemo molestiae doloribus officiis.</p><p>Dolores et asperiores sunt accusantium sint saepe iste. At molestias sed sint. Impedit repellendus enim minus quos nesciunt nesciunt at consequatur.</p><p>Qui fuga libero omnis deserunt. Beatae non libero aut sunt iusto et. Sint facilis velit qui voluptas ut.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(7, 1, 2, 'Rerum voluptatibus aut sequi officia sed.', 'aperiam-dicta-similique-cum-et-sunt-blanditiis-repudiandae-consequuntur', 'Fugit repudiandae voluptas sunt tenetur iste hic aperiam. Eos dignissimos enim fugit temporibus dolores. Nulla molestiae quis excepturi nulla voluptatum rerum officiis nam.', '<p>Ipsa quam molestiae minus accusantium. Facere pariatur iste explicabo. Qui placeat voluptatibus saepe distinctio et quo cum.</p><p>Consequatur quia ut cupiditate repellendus. Et omnis consequatur in soluta. Ipsam mollitia dolorem deleniti et ipsum id.</p><p>Eos esse dignissimos dolores incidunt odio voluptates maiores. Quia et perferendis a voluptatum quia repellendus. Repellendus quaerat quae ad magnam deserunt ea voluptate consequatur. Sint dicta sint corporis rem et autem.</p><p>Dolorem eveniet accusamus aut ipsa. Quis et rerum voluptas voluptatem ad ratione. Laboriosam sed necessitatibus facere voluptates nihil nostrum praesentium. Sed tenetur dolores ut sint laudantium. Voluptatem inventore illum eligendi praesentium est et quo.</p><p>Voluptatum magnam voluptas placeat architecto aut. Eos in sapiente animi odio aut ab rerum. Sunt dolorem sapiente sunt. Corrupti alias minima rerum et.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(8, 1, 4, 'Vel qui voluptatem et molestiae ea cupiditate.', 'distinctio-delectus-in-et-quia-iste-rerum-cumque-voluptatem', 'Laudantium autem consequuntur non inventore nihil. Et voluptatem explicabo quia asperiores corporis iste dolores. Ducimus ea possimus quidem voluptas nisi. Rem hic amet nulla in.', '<p>Recusandae debitis odit et et. Qui debitis quidem suscipit earum vel. In harum ipsa soluta reiciendis in odio. Animi molestias qui totam quos.</p><p>Non sunt laboriosam unde consectetur rerum. Sed qui ut accusamus quia totam ut pariatur. Iste sapiente quibusdam est.</p><p>Mollitia officiis ad est maxime quae ut. Sequi voluptas fuga voluptas excepturi minus sed. Provident facilis dolorem eveniet qui voluptas quia quos. Nihil cum reiciendis et nobis qui.</p><p>Non quos rem magnam minus voluptatem sed aut. Recusandae quasi quasi quos tempora. Quis laudantium quisquam accusantium aut error. Iure incidunt magni beatae itaque quos velit molestias.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(9, 2, 2, 'Voluptatibus assumenda cumque perferendis aut voluptatem ipsum beatae.', 'corrupti-odio-vero-iusto-modi-ut-architecto-est-veniam', 'Voluptatem ab sunt vel. Nihil nemo incidunt perferendis voluptas iusto sit magnam. Aut dolor inventore illo natus. Dolorem ducimus quo harum aut. Blanditiis praesentium provident aut et impedit eos.', '<p>Atque reprehenderit fugit quibusdam qui blanditiis. Est harum assumenda at non praesentium velit. Sit qui quam similique omnis. Quod esse laboriosam modi.</p><p>Dolores optio eum numquam quos incidunt. Quis iste sint est enim rerum ex libero. Modi dicta expedita repellat nesciunt similique odit quia consectetur. Velit assumenda eum aut officiis animi et officia impedit.</p><p>Eius aut architecto et accusantium doloremque est. Reprehenderit est delectus et sit odio est soluta. A provident non non dolorem repellat in at esse. Mollitia autem est voluptates officia laudantium ad quia quidem.</p><p>Omnis laboriosam temporibus quo laborum unde. Porro praesentium natus quos sunt quaerat. Delectus enim aspernatur non a. Ea accusantium nobis qui distinctio itaque ut.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(10, 3, 5, 'Repudiandae qui.', 'error-omnis-ratione-itaque-eum-molestiae', 'Est eum enim ut tempora aut et. Modi voluptas voluptas exercitationem natus mollitia. Ea quis dicta deserunt aut omnis quia. Dolores nemo molestiae dolor nobis est fugit.', '<p>Non provident et quis harum. Nulla repellendus corporis molestias aperiam sit nemo. Mollitia repellendus dolores accusantium eaque vitae totam voluptatem. Accusantium in rerum ex non accusantium possimus.</p><p>Minus autem qui placeat placeat rerum. Et expedita illo amet dolores rerum omnis dolorum. Voluptates qui accusamus ipsam consequatur quisquam ipsa in.</p><p>Et necessitatibus autem soluta earum. Consequatur consequuntur delectus deleniti laboriosam aut in est. Architecto molestias sed ut qui quo qui rem.</p><p>Velit commodi voluptas recusandae dolore. Quae commodi est inventore repellat esse deleniti.</p><p>Maxime et recusandae natus voluptates omnis perspiciatis. Magni modi dolores distinctio tempora eius exercitationem eveniet. Facilis impedit possimus id nulla qui. Voluptatem dolor dolor fuga sit adipisci sequi ipsum.</p><p>Sint facilis at minus eveniet ea ad. Non laboriosam nostrum cum sed facilis. Fuga nobis qui ut et. Et ea autem totam. Id porro in tempore officiis beatae corporis.</p><p>Tenetur ad iste porro possimus officia. Explicabo et et nihil repellendus. Ipsa rerum ut delectus rem ea.</p><p>Reprehenderit et et quasi eaque voluptate quia. Consequatur rerum soluta cumque accusamus totam accusantium. Voluptates consequatur voluptatem qui modi quam.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(11, 2, 1, 'Numquam deserunt ea nobis perspiciatis qui.', 'sint-error-culpa-harum-maxime-officia-et-nisi', 'Vel alias provident dolores iusto consequatur architecto. Occaecati voluptas similique quod dicta ut. Animi aut voluptatem dolorum rerum.', '<p>Corporis quo magnam doloremque ea omnis sit accusamus. Ullam sit reprehenderit eos sint quia. Autem voluptas blanditiis eos aut consectetur consequatur quia. Dolor deserunt sed odit ratione dolores dolores.</p><p>Ut iusto asperiores voluptas nam tenetur. Sunt repudiandae rerum iusto eos nisi. Doloremque unde omnis vel sit perferendis id. Officiis unde placeat at soluta expedita doloremque odio. Ratione qui cumque aut qui accusantium doloremque esse.</p><p>Occaecati amet aut odit cupiditate suscipit nobis laborum nobis. Maxime atque laudantium aut amet. Rerum totam ducimus cumque provident. Mollitia amet sequi et quos.</p><p>Tempora distinctio sed tempore perferendis quia. Sit aut porro tempore voluptatibus fugiat itaque. Ex cupiditate ut labore et.</p><p>Iusto nesciunt sunt laudantium quia et. Adipisci consequatur enim rerum et. Architecto saepe quis distinctio error.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(12, 3, 3, 'Dolores impedit sint hic error.', 'commodi-nemo-magnam-dolore-minus', 'Consequatur aut accusamus rem quo sed mollitia. Magni doloribus dolore quis consequuntur. Repellendus ut earum ad unde. Autem mollitia qui aut nulla aut.', '<p>Dicta debitis sint magnam. Aut est qui atque voluptatem quae.</p><p>Accusamus rem natus porro vel modi quo beatae. Mollitia iure est animi cum atque ducimus. Alias debitis corrupti optio autem. Ipsa repudiandae natus quam voluptas autem dicta ducimus.</p><p>Consequatur ut doloremque eius totam placeat. Sapiente debitis a ipsam sunt et velit ipsum. Deleniti aspernatur dolorem quo mollitia unde. Et deserunt quisquam ea voluptatum.</p><p>Maiores voluptatem eos molestiae delectus porro autem. Sed quos molestiae itaque voluptatem itaque optio enim. Distinctio eum rerum assumenda autem ut vel inventore. Doloremque numquam qui ut aliquid.</p><p>Illo reprehenderit neque quibusdam ut vel incidunt. Quasi velit non aut repellendus sequi magni repellendus. Distinctio atque accusantium aut et et consequatur. Doloribus dolores molestiae officiis nemo.</p><p>Et et est totam minima tenetur. Quo consequuntur rem dolorem natus. Assumenda a excepturi velit rerum enim. Sunt voluptatem commodi dignissimos dolorum quod.</p><p>Doloribus voluptatem ut incidunt eos. Laboriosam inventore dicta a nemo est laboriosam est. Consectetur et repellat nemo consequatur.</p><p>Nisi aut laborum quis nisi ad. Voluptas ea rerum eos libero similique commodi. Illo repudiandae amet nisi vel aliquid aperiam. Quo eos cupiditate adipisci non sunt et excepturi.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(13, 3, 4, 'Qui quo mollitia eaque sit.', 'blanditiis-minus-et-sit-minus-qui-repudiandae', 'In dolor ea cupiditate assumenda repellendus. Laborum officiis nobis distinctio esse deserunt ea.', '<p>Ad vitae et nostrum veniam et similique nisi. Voluptatem expedita veritatis et tenetur dolores magnam. Necessitatibus ut aut dolores distinctio dolores vel.</p><p>Dolorem nobis laborum voluptatibus consequatur aut et. Molestiae laborum quo quia rerum velit.</p><p>Quia quo dolorem occaecati adipisci culpa et dolor. Id in maiores qui est soluta esse. Porro autem alias eligendi voluptatum et.</p><p>Ut sunt autem nobis accusamus. Quia et odit minus quibusdam fugit.</p><p>Commodi laboriosam ut ex ea est. Provident hic aspernatur voluptatem modi expedita est corrupti. Id atque eius et ad quis ducimus. Dignissimos et amet ut et odit repellendus.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(14, 1, 3, 'Amet ipsum saepe aut dolore dolorum nisi et qui.', 'fugit-laudantium-doloribus-magni-ut-iste-et', 'Quisquam aut velit maiores molestiae. Modi eaque tempore voluptatum expedita itaque. Non a sed quis voluptas laudantium. Beatae delectus maiores incidunt veniam sunt dolorum aut consequatur.', '<p>Et corrupti facilis ut rerum. Eos eaque voluptatum quis consequatur voluptatem. Natus illo odit fuga maiores vero maiores.</p><p>Minima tempore omnis omnis rerum inventore qui quia. Illum voluptas ducimus omnis molestias qui cum. Numquam illum sequi voluptatibus laborum.</p><p>Autem omnis nobis nihil sed quisquam quia reprehenderit. Architecto et dolor sed. Ut eum exercitationem incidunt odit veritatis adipisci placeat eaque. Dolores eaque corporis repudiandae nulla fugit voluptatem.</p><p>Soluta nihil dolor amet quia. Tempore deleniti et autem optio similique. Qui accusamus fugiat dolores dolor perferendis rerum.</p><p>Corporis officia consequatur ducimus veniam et voluptates. A distinctio eveniet repellendus expedita culpa. Aut et consectetur fugiat voluptas dolor libero. Quidem illum suscipit officia ea ipsam deserunt. Deleniti fugit at iusto.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(15, 3, 2, 'Perspiciatis perspiciatis.', 'architecto-enim-neque-magnam-earum-ut-sint-placeat', 'Quae quam corrupti exercitationem possimus et architecto. Quaerat modi vel ut recusandae ut fugiat quasi.', '<p>Eius voluptas repellat consequatur possimus. Ducimus ut beatae rem asperiores et natus eos eius. Sed temporibus illum dignissimos eos. Qui sint ut reiciendis qui. Tempora nostrum cumque dolorum.</p><p>Quia ipsam reprehenderit eos. Nemo qui accusantium quasi vel voluptas. Voluptate facere ea doloremque.</p><p>Suscipit et magnam vero rem. Ut aut ex similique nihil. Architecto eaque officia ut unde.</p><p>Quia maxime quis est aut nisi. Consequuntur eaque earum mollitia voluptate repudiandae. Eveniet non et quo iusto nemo saepe molestiae.</p><p>Ex aut quia minus et alias doloribus totam. Labore sint ut consequatur.</p><p>Voluptas necessitatibus ut nam fuga sequi. Vero ut eos qui repudiandae accusamus quod quas. Nihil possimus asperiores est velit praesentium.</p><p>Praesentium maxime quis nihil vero. Non impedit vitae voluptatem quisquam a aliquid ut. Omnis id dolorem et rerum iusto laborum possimus iure.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(16, 1, 2, 'Suscipit cumque est quia laboriosam ab ratione.', 'rerum-distinctio-accusantium-et', 'Minus distinctio quibusdam quia optio sint. Laudantium est consequatur sit. Dignissimos maiores eum a explicabo laudantium molestiae.', '<p>Exercitationem voluptatem non autem necessitatibus sint ut quisquam. Voluptatem quia unde ut voluptas magnam est. Aut eius in qui consequatur laudantium. Consequuntur et in qui quae quod blanditiis.</p><p>Et architecto pariatur laborum esse odio minima velit. Neque iste unde facere voluptates voluptas. A architecto aut laudantium eligendi perferendis. Tempora eum sit cupiditate eos.</p><p>Excepturi est veritatis consequuntur temporibus sunt. Praesentium dolor aut quibusdam rem.</p><p>Doloremque molestiae nihil ratione at repellendus possimus dolorum dignissimos. Temporibus ipsum sunt repellat consequatur a iste voluptatem. Et consequatur distinctio eum.</p><p>Optio voluptatem et consequatur. Aut harum libero est qui velit porro aut. Magni recusandae incidunt id. Placeat aut non esse est deleniti eum.</p><p>Nostrum error soluta aut ut a assumenda. Beatae fuga est nam harum ea sint est. Consectetur quibusdam officia dolores voluptas sit voluptatem ad.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(17, 3, 4, 'Quo quos culpa omnis sed quibusdam assumenda.', 'eum-enim-voluptatem-fugiat-labore', 'Vero in dignissimos pariatur ea similique cumque sed. Eius quo et quibusdam odio vel.', '<p>Nihil est distinctio aut officiis. Quas ut tenetur id blanditiis. Blanditiis expedita inventore quia est repudiandae. Quasi asperiores rerum numquam quam provident deleniti.</p><p>Labore vitae facilis in illum voluptatem commodi. Incidunt et praesentium adipisci nihil autem perspiciatis. Possimus nam ea quasi dolor molestiae in et voluptas. Optio doloremque omnis ut sint labore.</p><p>Veritatis dolor dolor reiciendis est quae deleniti. Ut voluptatem qui quam dignissimos quo cupiditate ab velit. Est est corrupti odio voluptas officiis nihil.</p><p>Amet illo repellendus qui et in sed. Quia adipisci rerum voluptatem. Molestiae harum ea libero tempore vitae repellendus suscipit. Sapiente dicta non voluptatibus quia aut corporis. Repellat id consequatur earum doloremque saepe qui eum blanditiis.</p><p>Id officia animi architecto reiciendis accusantium ex. Et magni vero id similique rem. Facere omnis ut quia distinctio non sint. Ducimus eum exercitationem maiores laborum dolorem.</p><p>Saepe libero eius reprehenderit nemo odit. Adipisci non debitis eos tempora ad. Magnam eos quisquam ab molestiae dolorum omnis ut. Esse reiciendis repudiandae id rerum sit quibusdam temporibus.</p><p>Et aliquam fuga tenetur cum. Sit dicta numquam deleniti voluptatem deleniti ipsam.</p><p>Voluptate sit quia autem. Hic omnis placeat illo laboriosam. Dolor ducimus voluptatem illum vitae. Et provident ea maiores aut. Consequatur incidunt harum aliquam accusantium.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(18, 3, 5, 'Ipsum nostrum dignissimos quisquam.', 'ipsum-ullam-excepturi-neque-autem', 'Assumenda doloremque dignissimos nam nisi tempore nam optio. Quo reprehenderit non consequatur omnis. Deleniti neque repudiandae hic ut fugiat.', '<p>Quibusdam dolores asperiores aut dolor quos iusto aspernatur. Praesentium minima et dolores exercitationem. Autem qui velit quidem quia ullam nesciunt in.</p><p>Autem consequatur qui libero. Eius omnis blanditiis unde et voluptatem quis ipsa qui. Officia doloremque aperiam fugiat eligendi rem.</p><p>Quos rerum aut est. Aut est ut inventore voluptatem. Natus excepturi laborum omnis nobis et rerum.</p><p>Sequi corporis ex tempore qui non vel. Eius itaque illum non nulla explicabo. Quia eligendi sapiente hic animi distinctio sunt sint voluptatem.</p><p>Sit et nam quae incidunt voluptatem est. Ratione omnis repellendus rem perferendis inventore perspiciatis.</p><p>Architecto asperiores voluptas expedita sunt soluta sequi. Fugit voluptatem aut quas sequi et.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(19, 1, 4, 'Vel aliquid natus.', 'ducimus-velit-voluptatem-architecto-fugiat-ut-et', 'Consequuntur quasi ratione amet labore tenetur dolorem sint. Ipsa et consequatur dolorum dignissimos sed. Non quaerat autem consequatur. Voluptatem quos nam officiis iure voluptate nihil sint voluptas.', '<p>Consequatur doloremque ea ducimus optio odio eum sit. Quis quo perferendis accusantium consequatur iusto reprehenderit.</p><p>Quia dolorum atque ratione rerum quas voluptatum. Rerum voluptatem nulla illum molestiae sequi odio. Et in voluptas sunt reprehenderit quia eum autem.</p><p>Repudiandae quas recusandae vero illum magnam qui. Cupiditate deserunt ratione ab quo beatae occaecati voluptas. Et voluptate optio ipsum aliquam eveniet.</p><p>Doloribus reprehenderit molestias quo quod. Ea eos culpa quos illum ea fuga consequatur. Deleniti doloribus autem corporis et. Harum nesciunt illo qui aut rem et ratione.</p><p>Explicabo adipisci nisi aspernatur doloribus assumenda veritatis aut. Commodi sit cupiditate et voluptates minima iusto. Recusandae sit nulla earum accusamus. Et expedita recusandae officiis qui dicta.</p><p>Sed consequatur est vel reiciendis. Ex nam minus molestiae illo. Excepturi dolore accusantium dolores rem accusantium. Autem perferendis possimus ut et unde quas.</p><p>Officia quia voluptatem explicabo earum. Dignissimos eum consequatur repellendus omnis ipsum nihil voluptatibus. Possimus non necessitatibus suscipit voluptas facilis. Assumenda laboriosam nesciunt molestiae ducimus consequatur dolorum non.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(20, 3, 3, 'Inventore optio aut aut.', 'corrupti-iste-ea-a-aut-aliquam-iste-qui', 'Sequi corporis distinctio velit unde cum laudantium. Expedita qui et ad sunt harum adipisci. Consequatur quod enim laudantium voluptate.', '<p>Maxime voluptatibus saepe deleniti. Omnis rerum perspiciatis est voluptates. Laborum aperiam tenetur reprehenderit. Nemo aliquam officia eaque et.</p><p>Necessitatibus eos numquam sunt molestiae enim architecto atque nam. Eos quaerat maxime mollitia vero similique est consequatur. Eum dolor provident dolor quisquam ut est consequatur. Dolor nisi est ut velit omnis ut.</p><p>Dolores quis deserunt eos saepe nostrum blanditiis atque voluptatem. Ipsam est sequi et sequi et numquam. Odit porro et porro tenetur. Voluptatum quisquam dolor ut earum reiciendis sunt.</p><p>Rerum at modi aut nulla. Cumque qui corporis ut reiciendis reiciendis voluptates quod. Ad non inventore quis non mollitia. Vel eos incidunt qui.</p><p>Distinctio doloribus aspernatur voluptatem corrupti vel. Qui nam tempore sunt autem similique similique. Aliquid delectus corporis consectetur corrupti consequuntur. Occaecati nulla exercitationem sit hic sed tenetur minima omnis. Illo voluptas sed aliquam accusamus cum explicabo odio.</p><p>Officiis incidunt modi illum quod est. Molestias in facilis animi laudantium tenetur consequatur dolor. Et vel qui maiores id.</p><p>Rerum vel et sit nemo. Consectetur velit praesentium illo laboriosam minus voluptatibus. Sed quia modi dolorem officiis suscipit.</p><p>Dolorum incidunt aut rerum et. Rerum mollitia est ut aliquid rerum. Excepturi qui omnis atque vitae vero velit consequatur. Quas eos minima molestias aut veritatis rerum ullam voluptas.</p>', NULL, '2021-12-08 09:22:37', '2021-12-08 09:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diah Ade Namaga', 'wasita.karta', 'lintang60@example.org', '2021-12-08 09:22:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VCf5L6zVKP', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(2, 'Novi Susanti', 'susanti.leo', 'lhalim@example.org', '2021-12-08 09:22:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CXN7gq3MA6', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(3, 'Ani Laksita', 'cakrabirawa.napitupulu', 'paulin.oktaviani@example.net', '2021-12-08 09:22:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bEk43RLHZH', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(4, 'Bella Suci Mandasari M.Kom.', 'nurul.permadi', 'vsuwarno@example.org', '2021-12-08 09:22:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j4nKLPkV0W', '2021-12-08 09:22:37', '2021-12-08 09:22:37'),
(5, 'Margana Situmorang', 'gkuswandari', 'ilestari@example.com', '2021-12-08 09:22:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rItYE1eLM8', '2021-12-08 09:22:37', '2021-12-08 09:22:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_unique` (`category`),
  ADD UNIQUE KEY `categories_slug_cat_unique` (`slug_cat`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
