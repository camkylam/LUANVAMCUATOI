-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2023 lúc 06:50 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `_id` varchar(255) NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `PartyMemberId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`_id`, `user_name`, `password`, `createdAt`, `updatedAt`, `roleId`, `PartyMemberId`) VALUES
('25701d44-3db5-4492-b782-4216112a19ff', 'f8fe711559659049bbee64e8a17934e3', '2333d67166a42bf94dcdc1f6730dcea28b7aed32742ecdc5670c2f862e701cd0cf4356f9697399ad228b6921b08fef1c1a20a8b7173fbd152f99f58c3e5e08f1', '2023-10-10 03:36:09', '2023-10-10 03:36:09', 'c6ec475d-5ccc-4331-9261-cf35467cfd0a', '1b455c19-3a7e-4ad9-8fd7-ecbd236396a2'),
('2e5493d7-e5cd-4352-a87f-293b248be3cc', '2092373d004a093a5aa1006661d74c6a', 'f51e7b759e3160b296d212caeac9bb95b35057c9a72c77c0b91ebff7c3f1a4ca0af4a10c9a7f330f0cc2ca10f4701799c7efdcd9d624b071252d23b8d36019b3', '2023-08-18 14:40:29', '2023-08-18 14:40:29', NULL, NULL),
('4da15717-36b0-4afd-a042-3994f4c25bb0', '061b152b715d47663bdb1e26aa0506eb', 'f0dcd7e8b96716d3c624df78065571b7c2087d759bfe645bb2164a0968a4a1c03e6f1a85d22205e6e7746f7c57bae0b4b8bf45d13bee10a62d734ed9dcd31e10', '2023-10-10 03:34:48', '2023-10-10 03:34:48', 'c6ec475d-5ccc-4331-9261-cf35467cfd0a', 'b8608b5e-8dc8-4e77-95aa-f61be0440d4f'),
('c001e7b9-b0dc-40c6-b018-2cbd6ae93971', 'ed81698029897ef95df076362c5f224d', '1f25c63fae822b75c7911590e5b44bb91b689b778d6f00d9cad75caed7333ce94f97aef03d0f8551f1f8d0b96188b665466f97dada0534e627bdc551dde60b95', '2023-10-10 01:43:58', '2023-10-10 01:43:58', 'c6ec475d-5ccc-4331-9261-cf35467cfd0a', 'd57c2af5-4877-4736-b80b-ed7c3b1a2b9c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `_id` varchar(255) NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `StatusCommentsId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `confirmed_results`
--

CREATE TABLE `confirmed_results` (
  `_id` varchar(255) NOT NULL,
  `result` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PartymemberId` varchar(255) DEFAULT NULL,
  `commentId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cty_provinces`
--

CREATE TABLE `cty_provinces` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cty_provinces`
--

INSERT INTO `cty_provinces` (`_id`, `name`, `createdAt`, `updatedAt`) VALUES
('355593fe-9f67-49e9-9675-e4803ba59e0d', '95d1a703b97638cdb8a7ae75868d6e51', '2023-10-10 01:43:23', '2023-10-10 01:43:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailed_comments`
--

CREATE TABLE `detailed_comments` (
  `_id` varchar(255) NOT NULL,
  `commentId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `phamchatchinhtri` text DEFAULT NULL,
  `nghiavucongdan` text DEFAULT NULL,
  `cuochopdinhky` text DEFAULT NULL,
  `donggopykien` text DEFAULT NULL,
  `giumoilienhe` text DEFAULT NULL,
  `bieuduong` text DEFAULT NULL,
  `nhanxetkhac` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ctyProvinceId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`_id`, `name`, `createdAt`, `updatedAt`, `ctyProvinceId`) VALUES
('7441e3bb-ed59-4351-b66e-259081fa63a4', 'cedc65a821f143153f159a3f16fdec1b', '2023-10-10 03:35:46', '2023-10-10 03:35:46', '355593fe-9f67-49e9-9675-e4803ba59e0d'),
('9be1d3c2-3d12-4b17-bac9-30f67a34494d', '91deeac0a8354ca908096c54103f2109', '2023-10-10 01:43:33', '2023-10-10 01:43:33', '355593fe-9f67-49e9-9675-e4803ba59e0d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partymembers`
--

CREATE TABLE `partymembers` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `birthday` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `postionId` varchar(255) DEFAULT NULL,
  `wardId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `partymembers`
--

INSERT INTO `partymembers` (`_id`, `name`, `birthday`, `address`, `phone`, `email`, `createdAt`, `updatedAt`, `postionId`, `wardId`) VALUES
('1b455c19-3a7e-4ad9-8fd7-ecbd236396a2', 'f8fe711559659049bbee64e8a17934e3', 'c521bbc92196b80ff78dcee8c05145c8', 'ac68790b107a7ab19956b61bd9e583b9', '105bfff43d33d9c5196afb440637bf31', '4bd91123f79a7c1e61e0279fc68fcae1', '2023-10-10 03:36:09', '2023-10-10 03:36:09', 'd84082ba-83d2-43ee-86df-ad3248cbe53b', 'e02dc9a4-6ad5-487a-91c6-69bddc6cb424'),
('b8608b5e-8dc8-4e77-95aa-f61be0440d4f', '061b152b715d47663bdb1e26aa0506eb', 'f2e0736cafd4a05fa9630c1076f86b68', 'ac68790b107a7ab19956b61bd9e583b9', '105bfff43d33d9c5196afb440637bf31', 'ecf5d5c02e6308dfc00723f870f4a6511b494c0f202d0fd697b0bc80cdb4a678', '2023-10-10 03:34:48', '2023-10-10 03:34:48', '49f448c8-44d5-4ee0-be76-1d190722ab77', '97eda779-ede0-4945-8f48-32a41f7200e4'),
('d57c2af5-4877-4736-b80b-ed7c3b1a2b9c', '424a026667090dfb2e975ed9fb6ef477', '89dcdd61f86d94f1cef11833a7898ee6', 'ac68790b107a7ab19956b61bd9e583b9', '105bfff43d33d9c5196afb440637bf31', '8a6d875c63867dca1940c12a3a439cb0', '2023-10-10 01:43:58', '2023-10-10 01:43:58', 'd84082ba-83d2-43ee-86df-ad3248cbe53b', '97eda779-ede0-4945-8f48-32a41f7200e4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `permissionTypesId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`_id`, `name`, `createdAt`, `updatedAt`, `permissionTypesId`) VALUES
('009e299f-d2c6-421b-9ff7-cd8e280ebae6', 'b50df3bb9f311038ae1f0d31ab54a9f6f6fe7bfa609d3a416216baf8f5e1c596', '2023-08-12 12:33:11', '2023-08-12 12:33:11', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('02260677-e84b-4ae7-a3cf-dd53f2902c87', '5cfbe4a64b6b3e0cb4e032146a3d8c76b4626f9eb9dac8a74022015b7576404f06eaa0faa34148f971a6e97c4737890cad5d5ed9be6e8e9aec7c599838f74548', '2023-08-12 12:58:42', '2023-06-28 12:58:42', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('041c28f7-165e-4f81-a19c-cdace9b98d91', '84d94d3f3356939197d70b6a678996f54cb6045e0158a1f440293c70332ff93c', '2023-08-12 12:25:08', '2023-08-12 12:25:08', 'cf8021b2-9328-4747-936a-f6d34f1f1c5d'),
('066dfa5e-6912-491a-8dd4-ce758d1c433c', 'c5a510d99d38890e07611dcf47cc165c2d653b13060cb37347cf51200ad475fd', '2023-08-12 12:25:08', '2023-08-12 12:25:08', 'cf8021b2-9328-4747-936a-f6d34f1f1c5d'),
('0b1e18d3-5345-4d40-8daa-ae631262b321', '53e4c75d26f7af791ac163f39fc4277ba6a5abeb0add34e6f1c8c00011e3bcbe', '2023-08-12 18:36:52', '2023-08-12 18:36:52', '02b564a4-e427-4236-ae6a-2a2349f056aa'),
('155f96ff-7145-4670-bfd2-3b0f8b786ada', '5cfbe4a64b6b3e0cb4e032146a3d8c768c38188a4b11d06e63542b99354a909b362528149fa1e9daed04ec2d05ce9248490a1fcc9046327058812953816ac851', '2023-08-12 12:58:42', '2023-08-12 12:58:42', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('15e75e62-6bf9-422b-bf85-e3b1b460513e', 'db67100856fad4f6e3ce8b09b28449e421e53dc2a5adb40a756fe81a9cb45e03', '2023-08-12 18:36:52', '2023-08-12 18:36:52', '02b564a4-e427-4236-ae6a-2a2349f056aa'),
('1ca65858-3c0c-4ac5-b2cd-17f7fb313947', '3b17d4a9198b3f9bc95b09c7454d969e', '2023-08-12 12:25:08', '2023-08-12 12:25:08', 'cf8021b2-9328-4747-936a-f6d34f1f1c5d'),
('1da064f3-25fa-46ba-9978-975aae04f2b9', '51725dfb535c4533720f8c158224d3b021c3934d1ca3f1ec2e53f9c5705aa28564eeef7e7b59da4fdc1b2d619251b6cf0e7d6547f8b19a044a756cf89d343f61', '2023-08-12 12:59:56', '2023-08-12 12:59:56', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('23765325-60a9-4c92-ae6b-634f1467757a', 'e7e6050b652e77f76652a5b9dd264b0ab3bef63e04d6bc857df2df3292b8538c', '2023-08-12 12:41:04', '2023-08-12 12:41:04', 'b850b2f8-caf7-41aa-9866-2543608c663f'),
('23a18353-123b-4e22-b123-b607c6aa936d', 'c6abdd2a4c2ee1f7942ee124b2da2fe14189fc30870ccb8ab18434187735bdac', '2023-08-12 12:31:45', '2023-08-12 12:31:45', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('259d3cae-13c7-4c82-b91a-77a74aea2555', 'e71cb1d3d0efcec3cef6b471a27368e5', '2023-08-12 12:39:37', '2023-08-12 12:39:37', 'e54148da-8311-4e02-a826-81fda5745e81'),
('26f76ef1-347e-477c-9d1f-f81ffbf811a9', '53e4c75d26f7af791ac163f39fc4277b49d2bab5f51bee60f7afcc43ccc6a5f5', '2023-08-12 18:37:46', '2023-08-12 18:37:46', 'c9fdcc04-2e42-49a2-8d1a-ebfca2af96eb'),
('2aee947a-cee1-4073-b574-b4d9725777f6', '5ac249676b794412194444788729943f9abf3c22acf215e77b914fc8d93ef7fb', '2023-08-12 18:36:52', '2023-08-12 18:36:52', '02b564a4-e427-4236-ae6a-2a2349f056aa'),
('2eaa0032-6db2-449c-a480-020d270e6d84', '978c818f710dbe97b8501d49c02cbf431c17005cd49c023aa1dcee7819773bba', '2023-08-12 18:37:46', '2023-08-12 18:37:46', 'c9fdcc04-2e42-49a2-8d1a-ebfca2af96eb'),
('2fe0aaf6-fd2e-422d-a11b-c8e31dc47b9c', 'cf9155f101917d2636e208d4b486ecaea74d9b9fcb8cb042fe695275784a5d91', '2023-08-12 12:26:21', '2023-08-12 12:26:21', '5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0'),
('3557864b-1362-452f-b4cd-74f632b890b7', 'fe15ecad777edc65459074ab59838a21', '2023-08-12 12:31:45', '2023-08-12 12:31:45', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('44b0f527-4e3a-403a-9886-fff5bc2896c7', '9e9085a27e85b2aaa5e66c61da803051', '2023-08-12 12:41:04', '2023-08-12 12:41:04', 'b850b2f8-caf7-41aa-9866-2543608c663f'),
('46f4b00c-3449-4dce-8901-9e85fcbca3c4', '978c818f710dbe97b8501d49c02cbf4383bd04f88a0807b675b660e6101843cb', '2023-08-12 18:36:52', '2023-08-12 18:36:52', '02b564a4-e427-4236-ae6a-2a2349f056aa'),
('535e4a72-5afa-450d-81f8-bf92b8d6b6c5', '72339114522efd725b8a77774b2bbad1', '2023-08-12 18:37:46', '2023-08-12 18:37:46', 'c9fdcc04-2e42-49a2-8d1a-ebfca2af96eb'),
('56c6968c-065b-4d09-9b2d-b502453f4b49', '1415f3be68d88c60ec23ec27410a9fb98108d3105d4bf1e150f96c095d11027c', '2023-08-12 12:31:45', '2023-08-12 12:31:45', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('5aba2bf4-ca96-4ecf-983c-e53bc2674a7a', 'a878e6af1a509cf5d2d968012303f874', '2023-08-12 12:54:02', '2023-08-12 12:54:02', 'fc6139ee-0369-4e5d-b791-21dbcca6a8fc'),
('5d2ee44c-2f36-41dc-8881-25d001b0a9c2', '425b129d2394bbca344e1424f05ef2fbc172ed602643b33f12892b7f27031fd7', '2023-08-12 12:26:21', '2023-08-12 12:26:21', '5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0'),
('5e15b6bc-0eb1-4b78-a9c6-4b04bc0b97ae', '5cfbe4a64b6b3e0cb4e032146a3d8c76dcd59f8186e08a2903312faa3bd05d301fd31e290a4bbda1394918c7cec81fc2', '2023-08-12 12:58:42', '2023-08-12 12:58:42', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('5e7697d8-b1b3-49a6-824c-e42f9b3d6796', 'b4ebeec6cc7bb5ebae540f46e45c5cfd757f1e0c68b1f8aae6160e596b437aca', '2023-08-12 12:39:37', '2023-08-12 12:39:37', 'e54148da-8311-4e02-a826-81fda5745e81'),
('5fb8f901-0f5f-4e4f-b532-749f97a6661e', '5cfbe4a64b6b3e0cb4e032146a3d8c76018fa32e0359738d5990850c746786de416130318e62a772d9f4c9786fa590c479de8957d508d0bc5c4e0ae6e5eeca60', '2023-08-12 12:58:42', '2023-08-12 12:58:42', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('68c262f2-d6c8-458e-9a3b-1a4148abd76b', '05e82c4a84451e3bc1dfbfea5dbcab7338b5e233868550254719bba87cb0e662', '2023-08-12 12:26:21', '2023-08-12 12:26:21', '5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0'),
('6a516feb-a3df-42bb-bb6d-5b63923c3928', '772a2bfe73cdfa26ae695966d7d3117c', '2023-08-12 13:10:32', '2023-08-12 13:10:32', 'b850b2f8-caf7-41aa-9866-2543608c663f'),
('6cb7a4db-166b-434d-b8ee-a203efb03acc', '7d9945a0145e3906d911d19c67bc6c76', '2023-08-12 12:39:37', '2023-08-12 12:39:37', 'e54148da-8311-4e02-a826-81fda5745e81'),
('76b80867-2a66-4d02-ac0d-fa9b7dfdb336', 'c3c8b2d99674b78785128d384f0c9b0a', '2023-08-12 12:37:16', '2023-08-12 12:37:16', '98a2b3c8-0191-450c-a3bf-31b9b0bc498b'),
('7b03080b-c88e-45b2-8b50-1ffb0ed6997f', 'cf60329327070b75a3754def71e5a2ea', '2023-08-12 12:26:21', '2023-08-12 12:26:21', '5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0'),
('7b504f41-0317-47ac-bb75-076190f55b31', '4cfb0dbc3636bba20c876a758f68cd3029858c143051d0336be82f406a3ea903', '2023-08-12 14:33:48', '2023-08-12 14:33:48', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('7fe0d10f-868d-411a-9969-201376727b59', '6ad811a7e1b98d1af0e252cba5e689f96037ac1cfb484006b069b4e7405907a9', '2023-08-12 12:34:33', '2023-08-12 12:34:33', 'f835cd79-eff6-4564-8afb-fe9ebe0fd5bb'),
('80e9cdc5-49e8-4c81-addd-7672992fcd16', '3d7df58189012a9e8f91b4a5dbc0cc90a86d58f897ef8683fdc03f9349554bfa', '2023-08-12 12:34:33', '2023-08-12 12:34:33', 'f835cd79-eff6-4564-8afb-fe9ebe0fd5bb'),
('9300f39c-09f0-4dc1-901a-3dc15bdaa2fb', '018437273c1ab876455831dfd84d6806', '2023-08-12 12:41:04', '2023-08-12 12:41:04', 'b850b2f8-caf7-41aa-9866-2543608c663f'),
('9c94ced0-10c6-4ef4-9639-d2614150819e', '4752b754fdf2633ccba1d662e9bc48cd86c1a7d60173b371119ddd525ae85f11', '2023-08-12 12:34:33', '2023-08-12 12:34:33', 'f835cd79-eff6-4564-8afb-fe9ebe0fd5bb'),
('a71760b3-58ab-49fe-914d-88bdd41dbda1', '25f1ec2442bf49d71098839acf28510e2a9d2a390e4c11ce91a2d4b1b76fe1e9', '2023-08-12 12:31:45', '2023-08-12 12:31:45', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('c2607908-716f-40ef-bf53-0bacdd4d65a7', '4c019972d3deec39f30108106aa804c8c4a5f29c250760992746b70316664867', '2023-08-12 12:25:08', '2023-08-12 12:25:08', 'cf8021b2-9328-4747-936a-f6d34f1f1c5d'),
('d057a246-3666-419d-a502-2f15187ab98a', '419dec6284a88ae83605bbd6ce7f28b9f59445799ad86d6dc9283fe315e7f551', '2023-08-12 18:37:46', '2023-08-12 18:37:46', 'c9fdcc04-2e42-49a2-8d1a-ebfca2af96eb'),
('d3ff1c4c-e731-4e34-81d1-f3ff989338e5', '64237320862c59dedb694b250ebcd0c1b61f45b4decb89e32b68aec7fd963dbe', '2023-08-12 12:38:16', '2023-08-12 12:38:16', '1c094f1d-03df-42d6-8589-8e85254b9f14'),
('d747fb4f-085e-41e1-93eb-fd4e4727b668', 'ce5abeda76fe2a1846e821de47d6c72055ebce1f5cdf9fd08386b98c552eaf48', '2023-08-12 12:34:33', '2023-08-12 12:34:33', 'f835cd79-eff6-4564-8afb-fe9ebe0fd5bb'),
('e5cd88c1-5b43-47c0-a00a-7887426a981a', 'e51a9dd9fa4ae1742f7f5ff2308637c6189cb0f1bc34744ca529d07527861660', '2023-08-12 14:15:06', '2023-08-12 14:15:06', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('f10b589c-67cd-4892-a4cc-487915dea288', '5f7358285980bfeef5388df5db4f1c14215ac21ae77c107404029005fc5c11ce', '2023-08-12 12:25:08', '2023-08-12 12:25:08', 'cf8021b2-9328-4747-936a-f6d34f1f1c5d'),
('f47351e6-e942-492f-aa6d-7fda426cf763', 'fca18a17d516d35698716b72a4d608be', '2023-08-12 13:00:36', '2023-08-12 13:00:36', 'eb8bd664-af9e-462a-a9f6-1fe92c8b237b'),
('f65a7167-67e7-4cd2-8b96-0ed1d6f7a782', '216450fe00500bb77caa08481cbebb91d909881f712d431459ecff40451467ef', '2023-08-12 12:33:11', '2023-08-12 12:33:11', '99e70a45-52bb-4042-83ee-5b18d0779536'),
('f9cd6c66-2883-4299-9c0c-cbd7eaaba523', 'a52bed200e5c908af1907fda298bd100', '2023-08-12 12:39:37', '2023-08-12 12:39:37', 'e54148da-8311-4e02-a826-81fda5745e81'),
('fbb924f6-c3b3-4c9d-b02f-889e3396440a', 'a692596cd7911b74d2a3d09319a80f1e', '2023-08-12 12:26:21', '2023-08-12 12:26:21', '5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_types`
--

CREATE TABLE `permission_types` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_types`
--

INSERT INTO `permission_types` (`_id`, `name`, `createdAt`, `updatedAt`) VALUES
('02b564a4-e427-4236-ae6a-2a2349f056aa', 'b4977f978c8bf5ee00bcd911d342393edd9ab423cc33de03317f9b96127bbc44e7d451c6cd46742e78db3504d02e7b77', '2023-08-12 18:31:29', '2023-08-12 18:31:29'),
('1c094f1d-03df-42d6-8589-8e85254b9f14', '3941c23be9b24c3262ad4afd91f7669ebc7760a38f420f8b8cfd3fb854919bcd', '2023-08-12 12:37:27', '2023-08-12 12:37:27'),
('5d4f5afe-f7a8-45b3-a320-1b1eaed59bb0', '9574ee1a4b546ddbb3ab467e492f0be0bc0046bbbbe6dc304be49d2459583634bdf92c7a161b2d79e7abe517271d29a2', '2023-08-12 12:25:36', '2023-08-12 12:25:36'),
('98a2b3c8-0191-450c-a3bf-31b9b0bc498b', '90e725659299666e0aca33afbe6aba05', '2023-08-12 12:37:07', '2023-08-12 12:37:07'),
('99e70a45-52bb-4042-83ee-5b18d0779536', '4b22b5821ab174b2b562594d0cca907c0bdff62146c3683b860e4b37597f7bd8', '2023-08-12 12:31:10', '2023-08-12 12:31:10'),
('b850b2f8-caf7-41aa-9866-2543608c663f', '93ed994fec37717bc57328894e871bccf593bffdf3b0872d0e20be428c3777d0', '2023-08-12 12:40:13', '2023-08-12 12:40:13'),
('c9fdcc04-2e42-49a2-8d1a-ebfca2af96eb', 'b4977f978c8bf5ee00bcd911d342393e3a843ad968bab7cec1289a0fb70c2d781b1584fef584ab9ab663bae0f3375916', '2023-08-12 18:34:32', '2023-08-12 18:34:32'),
('cf8021b2-9328-4747-936a-f6d34f1f1c5d', '29da53f95ec30cd245f8fde7a08331cb9d2edce5759b4d06a6d62c7de4c2bb03817c9deb9c15258cef6ecd74a8a02128', '2023-08-12 12:23:02', '2023-08-12 12:23:02'),
('e54148da-8311-4e02-a826-81fda5745e81', '031cc6a2443720e1ca108cab27309bb00e6b6439fa5eb801a012752cefa1c05e', '2023-08-12 12:38:45', '2023-08-12 12:38:45'),
('eb8bd664-af9e-462a-a9f6-1fe92c8b237b', 'a5246b8e4a70723ae8c9a7caf5de2503ceab85d51c01c87d6121e1e17ded7319', '2023-08-12 12:56:46', '2023-08-12 12:56:46'),
('f835cd79-eff6-4564-8afb-fe9ebe0fd5bb', '965dc403054e73edc810ae55d90118ba6cfb3bfb7c80303fbf8f178ea8f1108abe797ecede4932cfa98f1aca3ebef403', '2023-08-12 12:33:57', '2023-08-12 12:33:57'),
('fc6139ee-0369-4e5d-b791-21dbcca6a8fc', 'fc2107d508a51c0c10742cad5ae93bc85dc701b61ed289932a85cedbcd429237fe9db73c9175ab3866c4c47187033ca0', '2023-08-12 18:33:35', '2023-08-12 18:33:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`_id`, `name`, `createdAt`, `updatedAt`) VALUES
('49f448c8-44d5-4ee0-be76-1d190722ab77', '697c3efcd485c42766ee87890a0c6aee', '2023-10-10 03:34:22', '2023-10-10 03:34:22'),
('d84082ba-83d2-43ee-86df-ad3248cbe53b', '0dd6164a4c47a193c96ebdd1ce31070c', '2023-10-10 01:43:14', '2023-10-10 01:43:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`_id`, `name`, `createdAt`, `updatedAt`) VALUES
('c6ec475d-5ccc-4331-9261-cf35467cfd0a', '97dad03f239544a652b2b06fb8f9547c', '2023-08-22 14:42:49', '2023-08-22 14:42:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permissions`
--

CREATE TABLE `role_permissions` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `PermissionId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `single_introductions`
--

CREATE TABLE `single_introductions` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PartymemberId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_comments`
--

CREATE TABLE `status_comments` (
  `_id` varchar(255) NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `districtId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`_id`, `name`, `createdAt`, `updatedAt`, `districtId`) VALUES
('97eda779-ede0-4945-8f48-32a41f7200e4', '11d11b951857b8a930a7d58399f23bc1', '2023-10-10 01:43:43', '2023-10-10 01:43:43', '9be1d3c2-3d12-4b17-bac9-30f67a34494d'),
('e02dc9a4-6ad5-487a-91c6-69bddc6cb424', 'ddb833005645aa3dace172cf75573f5d', '2023-10-10 03:35:56', '2023-10-10 03:35:56', '7441e3bb-ed59-4351-b66e-259081fa63a4');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `roleId` (`roleId`),
  ADD KEY `PartyMemberId` (`PartyMemberId`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `StatusCommentsId` (`StatusCommentsId`);

--
-- Chỉ mục cho bảng `confirmed_results`
--
ALTER TABLE `confirmed_results`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `PartymemberId` (`PartymemberId`),
  ADD KEY `commentId` (`commentId`);

--
-- Chỉ mục cho bảng `cty_provinces`
--
ALTER TABLE `cty_provinces`
  ADD PRIMARY KEY (`_id`);

--
-- Chỉ mục cho bảng `detailed_comments`
--
ALTER TABLE `detailed_comments`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `commentId` (`commentId`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `ctyProvinceId` (`ctyProvinceId`);

--
-- Chỉ mục cho bảng `partymembers`
--
ALTER TABLE `partymembers`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `postionId` (`postionId`),
  ADD KEY `wardId` (`wardId`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `permissionTypesId` (`permissionTypesId`);

--
-- Chỉ mục cho bảng `permission_types`
--
ALTER TABLE `permission_types`
  ADD PRIMARY KEY (`_id`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`_id`);

--
-- Chỉ mục cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`RoleId`,`PermissionId`),
  ADD KEY `PermissionId` (`PermissionId`);

--
-- Chỉ mục cho bảng `single_introductions`
--
ALTER TABLE `single_introductions`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `PartymemberId` (`PartymemberId`);

--
-- Chỉ mục cho bảng `status_comments`
--
ALTER TABLE `status_comments`
  ADD PRIMARY KEY (`_id`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `districtId` (`districtId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`PartyMemberId`) REFERENCES `partymembers` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`StatusCommentsId`) REFERENCES `status_comments` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `confirmed_results`
--
ALTER TABLE `confirmed_results`
  ADD CONSTRAINT `confirmed_results_ibfk_1` FOREIGN KEY (`PartymemberId`) REFERENCES `partymembers` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `confirmed_results_ibfk_2` FOREIGN KEY (`commentId`) REFERENCES `comments` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `detailed_comments`
--
ALTER TABLE `detailed_comments`
  ADD CONSTRAINT `detailed_comments_ibfk_1` FOREIGN KEY (`commentId`) REFERENCES `comments` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`ctyProvinceId`) REFERENCES `cty_provinces` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `partymembers`
--
ALTER TABLE `partymembers`
  ADD CONSTRAINT `partymembers_ibfk_1` FOREIGN KEY (`postionId`) REFERENCES `positions` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partymembers_ibfk_2` FOREIGN KEY (`wardId`) REFERENCES `wards` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`permissionTypesId`) REFERENCES `permission_types` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`PermissionId`) REFERENCES `permissions` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `single_introductions`
--
ALTER TABLE `single_introductions`
  ADD CONSTRAINT `single_introductions_ibfk_1` FOREIGN KEY (`PartymemberId`) REFERENCES `partymembers` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_ibfk_1` FOREIGN KEY (`districtId`) REFERENCES `districts` (`_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
