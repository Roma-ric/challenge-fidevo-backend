-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 18 mai 2024 à 22:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `walmart`
--

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `nom`, `imageUrl`, `image_id`) VALUES
(1, 'Grocery', 'https://i5.walmartimages.com/dfw/4ff9c6c9-6406/k2-_987b6e28-ac24-4c30-a150-afe57033daf2.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(2, 'Fashion', 'https://i5.walmartimages.com/dfw/4ff9c6c9-48f6/k2-_7aed4b13-f076-4785-8b0c-2a8343c2b70c.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(3, 'Electronics', 'https://i5.walmartimages.com/dfw/4ff9c6c9-9674/k2-_cd6b8be4-8bfb-47bc-9843-49e8ed571106.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(4, 'Patio & Garden', 'https://i5.walmartimages.com/dfw/4ff9c6c9-16a3/k2-_f9b2f53c-a2c0-40bf-8e25-692c544b3baf.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(5, 'Home Improvement', 'https://i5.walmartimages.com/dfw/4ff9c6c9-a077/k2-_02b361d9-ab7b-45e9-95fb-3060dd6be190.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(6, 'Sports & outdoors', 'https://i5.walmartimages.com/dfw/4ff9c6c9-7e3f/k2-_e7f5b77c-efd9-4d88-b100-fe4ea540158c.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF', NULL),
(7, 'Toys', 'https://i5.walmartimages.com/dfw/4ff9c6c9-6897/k2-_9d771225-ddc0-4ae4-8302-1921a8ace961.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF', NULL),
(8, 'Health & wellness', 'https://i5.walmartimages.com/dfw/4ff9c6c9-547e/k2-_b6bb4378-2e73-4d4e-a787-90577b6f334d.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF', NULL),
(9, 'Auto & tires', 'https://i5.walmartimages.com/dfw/4ff9c6c9-e091/k2-_5abd632e-14d1-44b2-8361-fd23d6198365.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(10, 'Baby', 'https://i5.walmartimages.com/dfw/4ff9c6c9-648f/k2-_c76e7139-cecb-4d48-893d-686d9bbbbfbe.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(11, 'Beauty', 'https://i5.walmartimages.com/dfw/4ff9c6c9-5ae9/k2-_d40ab856-ee32-437c-9a44-c9b93df4aff0.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL),
(12, 'Personal Care', 'https://i5.walmartimages.com/dfw/4ff9c6c9-2281/k2-_240ae09f-fd48-4b80-aa8d-7bbed28ae7ea.v1.jpg?odnHeight=120&odnWidth=120&odnBg=FFFFFF', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Hero`
--

CREATE TABLE `Hero` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `useButtonLInk` tinyint(4) NOT NULL,
  `textLink` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Image`
--

CREATE TABLE `Image` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `produit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `nouveau_prix` int(11) NOT NULL,
  `ancien_prix` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `imageUrl` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Produit`
--

INSERT INTO `Produit` (`id`, `nom`, `description`, `nouveau_prix`, `ancien_prix`, `categorie_id`, `imageUrl`) VALUES
(6, '', 'JPHOME King Size Quilted Fitted Mattress Pad Cover, 100% Waterproof Mattress Protector, Deep Pocket Fitted.', 310, 350, 2, 'https://i5.walmartimages.com/seo/JPHOME-King-Size-Quilted-Fitted-Mattress-Pad-Cover-100-Waterproof-Protector-Deep-Pocket-8-21-Breathable-Noiseless-Soft-Comfortable-78-x-80-White_05541976-c7da-4b61-8d25-5b65e78f80a9.f385f296e75327b1c4020f403f0b7e5d.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(7, '', 'UBesGoo 12V Licensed Mercedes-Benz Electric Ride on Car Toy for Toddler Kid w/ Remote Control, LED Lights, Green.', 240, 280, 2, 'https://i5.walmartimages.com/seo/UBesGoo-12V-Licensed-Mercedes-Benz-Electric-Ride-on-Car-Toy-for-Toddler-Kid-w-Remote-Control-LED-Lights-Green_6cf88ba6-a098-4b7b-b1fd-afc44c82248f.529d0318631e907a68eaf8dde16bcd71.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(8, '', 'LINKChef Immersion Blender, 20-Speed 1000W 5-in-1 Immersion Hand Blender, Stick Blender with Turbo Mode, Baby Food Processor with Chopper, Blender for Kitchen with 600ml Beaker (White).', 290, 320, 2, 'https://i5.walmartimages.com/seo/LINKChef-Immersion-Blender-20-Speed-1000W-5-in-1-Hand-Stick-Blender-Turbo-Mode-Baby-Food-Processor-Chopper-Kitchen-600ml-Beaker-White_ddfda958-3816-43ca-9b37-a1015126ae3d.37e160dcb871967e5b6c926b900e5ec1.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(9, '', 'Restored Apple iPhone 14 Plus - Carrier Unlocked - 128GB Midnight - MQ3R3LL/A (Refurbished).', 270, 300, 2, 'https://i5.walmartimages.com/seo/Restored-Apple-iPhone-14-Plus-Carrier-Unlocked-128GB-Midnight-MQ3R3LL-A-Refurbished_f354e171-aec4-481e-a4bf-bd56eb4ac572.e5078dd851c57b211147f292ffedd472.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(10, '', 'BEAUTYPEAK 71\'x26\' Full Length Mirror Oversized Rectangle Body Dressing Floor Mirrors for Standing Leaning, Gold.', 220, 250, 2, 'https://i5.walmartimages.com/seo/BEAUTYPEAK-71-x26-Full-Length-Mirror-Oversized-Rectangle-Body-Dressing-Floor-Mirrors-for-Standing-Leaning-Gold_7dfca4b0-4729-462b-a066-795ea07fd4ac.18a53cc64ededf0882b9596f220d9197.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(11, '', 'Collapsible Garden Wagon Cart with Removable Canopy, VECUKTY Foldable Wagon Utility Carts with Wheels and Rear Storage, Wagon Cart for Garden Camping Grocery Shopping Cart,Blue.', 240, 280, 2, 'https://i5.walmartimages.com/seo/Collapsible-Garden-Wagon-Cart-Removable-Canopy-VECUKTY-Foldable-Utility-Carts-Wheels-Rear-Storage-Camping-Grocery-Shopping-Cart-Blue_7fc8aa82-0555-4332-b78d-b238c7eba3ab.2ae6826c32dc624763bf0e460b5cc258.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(12, '', 'SERWALL Extra Thick Queen Mattress Topper, Cooling Mattress Pad Cover, 2\' Mattress Topper with 8-21 Inch Deep Pocket Soft Comfortable Breathable, White.', 270, 300, 2, 'https://i5.walmartimages.com/seo/SERWALL-Extra-Thick-Queen-Mattress-Topper-Cooling-Pad-Cover-2-Topper-8-21-Inch-Deep-Pocket-Soft-Comfortable-Breathable-White_667c45df-8ed5-4bf9-be4b-761cccc8cfe7.a9a41695b9bd3fdc02e5d46c63b994b6.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(13, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 2, 'https://i5.walmartimages.com/seo/Slsy-Folding-Lounge-Chair-5-Position-Adjustable-Outdoor-Reclining-Sleeping-Bed-Cot-Chaise-Chair-Pool-Beach-Patio-Sunbathing_a0bd159a-ac4a-4371-a9ae-f17767f70c01.c0de943b55ce39105ab1075760efc61c.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(14, '', 'Tripcomp Luggage 3 Piece Set,Suitcase Set with Spinner Wheels Hardside Lightweight Luggage Set 20in24in28in.(Golden).', 290, 320, 2, 'https://i5.walmartimages.com/seo/Tripcomp-Luggage-3-Piece-Set-Suitcase-Set-with-Spinner-Wheels-Hardside-Lightweight-Luggage-Set-20in24in28in-Golden_66e567ca-8bf4-4c0c-9abb-59500defffa4.84459c3adcc2f0ce5f6fce899123dd73.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(15, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 2, 'https://i5.walmartimages.com/seo/Ktaxon-Smart-WiFi-Enabled-8250BTU-12000BTU-ASHRAE-Portable-Air-Conditioner-Dehumidifier-Function-w-Remote_def77f5b-5276-49cc-8972-5ee65cfdc5df.6191fb89ae77f81bfd2f61ef61f20325.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(16, '', 'FDW Memory Foam Mattress in a Box Mattresses CertiPUR-US Certified Pressure Relieving (10 in, Twin).', 109, 385, 1, 'https://i5.walmartimages.com/asr/93f06618-13f4-4b41-8d0a-2e9c4dd1e3fe.c240ccc2efe6a8b8c44a1dcb58e230ee.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(17, '', 'Carote Nonstick Pots and Pans Set, 13 Pcs Induction Kitchen Cookware Sets(Taupe Granite).', 290, 320, 1, 'https://i5.walmartimages.com/asr/6a6978ed-82bc-4cee-ad4d-93160401d4a1.09744ac48acfc99eb0d291af0ad10476.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(18, '', 'Michael Kors Jet Set Large East West Crossbody Black MK Signature.', 240, 280, 1, 'https://i5.walmartimages.com/asr/276bb0f5-fcb9-4b0e-9106-451df70c4840.ed004c68233c81d238e42b8246d6c55f.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(19, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 1, 'https://i5.walmartimages.com/asr/7a7a46ff-530c-4a87-b203-763cf9e5aa81.49f3b46facb68fca1c47bda19e9fc254.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(20, '', 'Tripcomp Luggage 3 Piece Set,Suitcase Set with Spinner Wheels Hardside Lightweight Luggage Set 20in24in28in.(Golden).', 290, 320, 1, 'https://i5.walmartimages.com/asr/adf3edee-6081-4dc8-a401-1512d7ab629b.5f3575d48e397294b70069d9c6dcfbff.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(21, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 1, 'https://i5.walmartimages.com/asr/23cacedb-25f7-4706-9000-39ed193a61f1.1e14423447c059874f3263dfc9d5ec11.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(22, '', 'FDW Memory Foam Mattress in a Box Mattresses CertiPUR-US Certified Pressure Relieving (10 in, Twin).', 109, 385, 5, 'https://i5.walmartimages.com/asr/c43556d4-0965-4ebe-a28b-b66102d36572.d012f13cc513f5dfc7eb66e845cd75a2.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(23, '', 'Carote Nonstick Pots and Pans Set, 13 Pcs Induction Kitchen Cookware Sets(Taupe Granite).', 290, 320, 5, 'https://i5.walmartimages.com/seo/Full-Bed-Frame-HAIIDE-Full-Size-Platform-Bed-With-Fabric-Upholstered-Headboard-Dark-Grey_2a06c7cf-f406-4086-9c46-9c9ffe2eb6f1.a4e40956a16b3120cf753f173ef60679.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(24, '', 'Michael Kors Jet Set Large East West Crossbody Black MK Signature.', 240, 280, 5, 'https://i5.walmartimages.com/seo/Color-Sense-Brushed-Cotton-Blend-Percale-Sheet-Set-Twin-XL-Dotted-Tear-Drop_6b08efad-9918-426b-b76b-4f370c2503a9.cefe59c36043401bdff7860ac8afaa8d.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(25, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 5, 'https://i5.walmartimages.com/asr/880edec0-b3ec-4524-878f-d15a67724a35.d4656b2feeb5fdc61bffed5b73153c95.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(26, '', 'Tripcomp Luggage 3 Piece Set,Suitcase Set with Spinner Wheels Hardside Lightweight Luggage Set 20in24in28in.(Golden).', 290, 320, 5, 'https://i5.walmartimages.com/asr/d5a4a61e-d771-4cd1-851d-279671a44cd3.1ae5a799bf26db2466f3425f39820494.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(27, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 5, 'https://i5.walmartimages.com/seo/Black-Radiance-Brilliant-Effects-Eye-Shadow-Palette-Midnight-Magic_ce97e223-0aca-45fd-9dd2-4cc5f4b1799f.b22105889b76c7f40616b90d1ee886d3.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(28, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 5, 'https://i5.walmartimages.com/seo/Mobil-1-Advanced-Fuel-Economy-Full-Synthetic-Motor-Oil-0W-20-5-Quart_2a71ff9c-021c-416a-8a4c-476ec6e6ffd3.d80eaa25bc00345f9dc95ebe0325250d.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(29, '', 'Tripcomp Luggage 3 Piece Set,Suitcase Set with Spinner Wheels Hardside Lightweight Luggage Set 20in24in28in.(Golden).', 290, 320, 5, 'https://i5.walmartimages.com/asr/0362ce71-354b-466a-8239-b10e751f6f1b.82273ac88ac5e892df0ef545d1a63b76.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(30, '', 'FDW Memory Foam Mattress in a Box Mattresses CertiPUR-US Certified Pressure Relieving (10 in, Twin).', 109, 385, 8, 'https://i5.walmartimages.com/seo/XSCAPE-Womens-Coral-Sleeveless-Sweetheart-Neckline-Midi-Cocktail-Hi-Lo-Dress-2_23216aa8-856b-452e-967a-60117a616664.70b4d586fa5d38dab22e32c291247a7f.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(31, '', 'Carote Nonstick Pots and Pans Set, 13 Pcs Induction Kitchen Cookware Sets(Taupe Granite).', 290, 320, 8, 'https://i5.walmartimages.com/seo/Labakihah-headbands-for-women-Tea-Party-Fascinator-Kentuckys-Derbys-Hat-Fascinator-Pillbox-Hat-Headband-For-Purple_b19bd967-3efa-45a4-909f-c0ef0aa0c028.745db90c9957358c9286d10e45bb320a.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(32, '', 'Michael Kors Jet Set Large East West Crossbody Black MK Signature.', 240, 280, 8, 'https://i5.walmartimages.com/seo/Journee-Collection-Womens-Lottey-Tru-Comfort-Foam-Mid-Heel-Ankle-Strap-Sandals_5cc34ce9-054c-4d83-b341-b87048955bff.a496ff5060dc69dc0489f506b4c05832.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(33, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 8, 'https://i5.walmartimages.com/asr/bca4fa02-7d64-4286-b7dc-fbafe7531474.274614dacb22ca0a90b03e3e5e91abf8.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(34, '', 'Tripcomp Luggage 3 Piece Set,Suitcase Set with Spinner Wheels Hardside Lightweight Luggage Set 20in24in28in.(Golden).', 290, 320, 8, 'https://i5.walmartimages.com/asr/174f8618-9666-4b7f-b128-c95d54245503.e3569bb839d78cc8bc188f074c1ffa8a.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(35, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 8, 'https://i5.walmartimages.com/seo/City-Studio-Womens-Juniors-Satin-Floral-Evening-Dress-White-3_bbea02ff-5f8f-4aff-ad13-4ffda8f3a6f2.7d70da1cae8195ffce2cd5117f029fc5.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(36, '', 'Mainstays 30oz Outdoor Citronella Candle, Sage Green.', 0, 385, 4, 'https://i5.walmartimages.com/seo/Mainstays-30oz-Outdoor-Citronella-Candle-Sage-Green_dd29ce4c-6b83-486f-9c95-ab91735c87aa.938f727a382ca3960702fb9a7f5a9ea6.jpeg?odnHeight=264&odnWidth=264&odnBg=FFFFFF'),
(37, '', '', 0, 320, 4, 'https://i5.walmartimages.com/seo/Mainstays-Solar-Powered-Black-Square-Design-LED-Path-Light-5-Lumens_aec30343-bdb9-4e01-97f9-1403dfed9e3d_1.3bd7d284c11c4a9e001df0602923ebc5.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(38, '', 'The Pink Double Knock Out® Rose Live Shrubs with Pink Blooms and Rich Green Foliage (2 Gallon).', 240, 280, 4, 'https://i5.walmartimages.com/seo/The-Pink-Double-Knock-Out-Rose-Live-Shrubs-with-Pink-Blooms-and-Rich-Green-Foliage-2-Gallon_98eedcee-2947-4ccc-8f21-ce1bb24fe5f0.a3d81b30a939e7f6bcdf3b8151079d08.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(39, '', 'Expert Gardener Potting Mix for Potted Plants, 8 q.', 270, 300, 4, 'https://i5.walmartimages.com/seo/Expert-Gardener-Potting-Mix-for-Potted-Plants-8-qt_539f87cc-3186-4f0a-a971-4cc5401470d7.9819bc67eaa00e596816450f2d649ddf.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(40, '', 'Mainstays Black Metal 2 Tier Shelves Plant Stand.', 240, 280, 4, 'https://i5.walmartimages.com/asr/7d964d16-042f-454f-b86f-57de4611e6cc.02cfb1ab570d158dc213a8ccf913a26f.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(41, '', 'JPHOME King Size Quilted Fitted Mattress Pad Cover, 100% Waterproof Mattress Protector, Deep Pocket Fitted.', 310, 350, 4, 'https://i5.walmartimages.com/seo/JPHOME-King-Size-Quilted-Fitted-Mattress-Pad-Cover-100-Waterproof-Protector-Deep-Pocket-8-21-Breathable-Noiseless-Soft-Comfortable-78-x-80-White_05541976-c7da-4b61-8d25-5b65e78f80a9.f385f296e75327b1c4020f403f0b7e5d.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(42, '', 'UBesGoo 12V Licensed Mercedes-Benz Electric Ride on Car Toy for Toddler Kid w/ Remote Control, LED Lights, Green.', 240, 280, 4, 'https://i5.walmartimages.com/seo/UBesGoo-12V-Licensed-Mercedes-Benz-Electric-Ride-on-Car-Toy-for-Toddler-Kid-w-Remote-Control-LED-Lights-Green_6cf88ba6-a098-4b7b-b1fd-afc44c82248f.529d0318631e907a68eaf8dde16bcd71.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(43, '', 'LINKChef Immersion Blender, 20-Speed 1000W 5-in-1 Immersion Hand Blender, Stick Blender with Turbo Mode, Baby Food Processor with Chopper, Blender for Kitchen with 600ml Beaker (White).', 290, 320, 4, 'https://i5.walmartimages.com/seo/LINKChef-Immersion-Blender-20-Speed-1000W-5-in-1-Hand-Stick-Blender-Turbo-Mode-Baby-Food-Processor-Chopper-Kitchen-600ml-Beaker-White_ddfda958-3816-43ca-9b37-a1015126ae3d.37e160dcb871967e5b6c926b900e5ec1.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(44, '', 'Restored Apple iPhone 14 Plus - Carrier Unlocked - 128GB Midnight - MQ3R3LL/A (Refurbished).', 270, 300, 4, 'https://i5.walmartimages.com/seo/Restored-Apple-iPhone-14-Plus-Carrier-Unlocked-128GB-Midnight-MQ3R3LL-A-Refurbished_f354e171-aec4-481e-a4bf-bd56eb4ac572.e5078dd851c57b211147f292ffedd472.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(45, '', 'BEAUTYPEAK 71\'x26\' Full Length Mirror Oversized Rectangle Body Dressing Floor Mirrors for Standing Leaning, Gold.', 220, 250, 4, 'https://i5.walmartimages.com/seo/BEAUTYPEAK-71-x26-Full-Length-Mirror-Oversized-Rectangle-Body-Dressing-Floor-Mirrors-for-Standing-Leaning-Gold_7dfca4b0-4729-462b-a066-795ea07fd4ac.18a53cc64ededf0882b9596f220d9197.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(46, '', 'Collapsible Garden Wagon Cart with Removable Canopy, VECUKTY Foldable Wagon Utility Carts with Wheels and Rear Storage, Wagon Cart for Garden Camping Grocery Shopping Cart,Blue.', 240, 280, 4, 'https://i5.walmartimages.com/seo/Collapsible-Garden-Wagon-Cart-Removable-Canopy-VECUKTY-Foldable-Utility-Carts-Wheels-Rear-Storage-Camping-Grocery-Shopping-Cart-Blue_7fc8aa82-0555-4332-b78d-b238c7eba3ab.2ae6826c32dc624763bf0e460b5cc258.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(47, '', 'SERWALL Extra Thick Queen Mattress Topper, Cooling Mattress Pad Cover, 2\' Mattress Topper with 8-21 Inch Deep Pocket Soft Comfortable Breathable, White.', 270, 300, 4, 'https://i5.walmartimages.com/seo/SERWALL-Extra-Thick-Queen-Mattress-Topper-Cooling-Pad-Cover-2-Topper-8-21-Inch-Deep-Pocket-Soft-Comfortable-Breathable-White_667c45df-8ed5-4bf9-be4b-761cccc8cfe7.a9a41695b9bd3fdc02e5d46c63b994b6.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(48, '', 'Slsy Folding Lounge Chair, 5-Position Adjustable Outdoor Reclining Chair, Folding Sleeping Bed Cot, Folding Chaise Lounge Chair for Pool Beach Patio Sunbathing.', 240, 280, 4, 'https://i5.walmartimages.com/seo/Slsy-Folding-Lounge-Chair-5-Position-Adjustable-Outdoor-Reclining-Sleeping-Bed-Cot-Chaise-Chair-Pool-Beach-Patio-Sunbathing_a0bd159a-ac4a-4371-a9ae-f17767f70c01.c0de943b55ce39105ab1075760efc61c.jpeg?odnHeight=264&amp;odnWidth=264&amp;odnBg=FFFFFF'),
(49, '', 'Time and Tru Women\'s Button Front Drawstring Waist Dress with Long Sleeves, Sizes XS-3XL.', 109, 385, 2, 'https://i5.walmartimages.com/seo/Time-and-Tru-Women-s-Button-Front-Drawstring-Waist-Dress-with-Long-Sleeves-Sizes-XS-3XL_7454a5ae-cd9c-43b0-87b3-01cf83bd8965.a9c23ee0e290d59f3ea6e05c9e3f1ad3.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(50, '', 'Scoop Women’s Pleated Handkerchief Hem Dress with Long Sleeves, Sizes XS-XXL.', 290, 320, 2, 'https://i5.walmartimages.com/seo/Scoop-Women-s-Pleated-Handkerchief-Hem-Dress-with-Long-Sleeves-Sizes-XS-XXL_8af8c4c4-c02a-4144-bd50-03fd00b665d3.958d94dca80c50c4347f0fda3dd71859.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(51, '', 'Beaquicy 24\' Round Wall Mirror for Bathroom Circle Wall Mirror with Towel Rack.', 240, 280, 2, 'https://i5.walmartimages.com/seo/Beaquicy-24-Round-Wall-Mirror-for-Bathroom-Circle-Wall-Mirror-with-Towel-Rack_dbc30c37-2512-4234-a7b6-d38a301878d8.2990334898e7721ea8558166496a9a23.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(52, '', 'Better Homes &amp; Gardens Pottery 6\' Chinooke Ceramic Bubble Planter, Pin.', 240, 280, 2, 'https://i5.walmartimages.com/seo/Better-Homes-Gardens-Pottery-6-Chinooke-Ceramic-Bubble-Planter-Pink_5d7d953d-69a1-461e-ab4f-963e16f1e6d6.531afc58f21b8d3deed92c86cbd3944a.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(53, '', 'Better Homes &amp; Gardens Pottery 12\' Fischer Round Ceramic Planter, White.', 290, 320, 2, 'https://i5.walmartimages.com/seo/Better-Homes-Gardens-Pottery-12-Fischer-Round-Ceramic-Planter-White_a1055025-8826-4499-8362-ebda14cc006a_2.102d5b4bf7e14501df3597477b044eaf.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(54, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 2, 'https://i5.walmartimages.com/seo/City-Studio-Womens-Juniors-Satin-Floral-Evening-Dress-White-3_bbea02ff-5f8f-4aff-ad13-4ffda8f3a6f2.7d70da1cae8195ffce2cd5117f029fc5.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(55, '', 'Better Homes &amp; Gardens Plastic Arch 21-Ounce Tumbler, Smoke.', 109, 385, 11, 'https://i5.walmartimages.com/seo/Better-Homes-Gardens-Plastic-Arch-21-Ounce-Tumbler-Smoke_2882b0af-7a8e-4645-b8a2-ca4770215373.144a80ca1abc51b6889a0c4a7b6194e4.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(56, '', 'Jessica Simpson Women\'s Flounce Hem Romper.', 290, 320, 11, 'https://i5.walmartimages.com/seo/Jessica-Simpson-Women-s-Flounce-Hem-Romper_e6a17ad5-e76e-44fe-b4bd-85fb0ea7dadb.720863916e8fddd6a7c8351fb570a5e3.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(57, '', 'Home Decor Collection Brass Table Lamp with Pleated Shade, 21\'H.', 240, 280, 11, 'https://i5.walmartimages.com/asr/69a8586f-2593-4567-9213-0e99f13b0148.df90eacd9f0c551e42a99796f17fbdf4.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(58, '', 'Beautiful Rattan &amp; Glass Coffee Table with Solid Wood Frame by Drew Barrymore, Warm Honey Finish.', 240, 280, 11, 'https://i5.walmartimages.com/seo/Beautiful-Rattan-Glass-Coffee-Table-with-Solid-Wood-Frame-by-Drew-Barrymore-Warm-Honey-Finish_8cafadfc-faea-42f8-a390-bd4768be6a68.43e8a4506be22f392ec2d01953924c4e.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(59, '', 'Better Homes &amp; Gardens Juliet Curved Sofa, Ivory.', 290, 320, 11, 'https://i5.walmartimages.com/asr/0871cd8b-bcc9-4086-9747-6e12893a6ab0.c3d8039d69db007400386ab842735253.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(60, '', 'Jessica Simpson Fashion Metal Faux Turquoise Stone Drop Earring.', 310, 350, 11, 'https://i5.walmartimages.com/asr/adaa8f57-7699-4484-9255-35641ac4ea84.2be78f60d475538f76925b4b386a9fe0.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(61, '', 'Stylehouse 18\'x18\' Rainbow Pillow.', 290, 320, 11, 'https://i5.walmartimages.com/asr/cbc1a8bb-d179-4dae-90dd-548413618815.88ec67f46c040ebf235b8471022a87bc.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(62, '', 'NYX Professional Makeup Ultimate Eye Shadow Palette, Warm Neutrals.', 310, 350, 11, 'https://i5.walmartimages.com/seo/NYX-Professional-Makeup-Ultimate-Eye-Shadow-Palette-Warm-Neutrals_45124b71-607e-475d-84f0-b2fcfacc5e44.7171f3c12670e5c9ea03073b51dda853.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(63, '', 'Better Homes &amp; Gardens Pottery 12\' Fischer Round Ceramic Planter, White.', 290, 320, 11, 'https://i5.walmartimages.com/seo/Better-Homes-Gardens-Pottery-12-Fischer-Round-Ceramic-Planter-White_a1055025-8826-4499-8362-ebda14cc006a_2.102d5b4bf7e14501df3597477b044eaf.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(64, '', 'Ktaxon Smart WiFi Enabled 8250BTU (12000BTU ASHRAE) Portable Air Conditioner.', 310, 350, 11, 'https://i5.walmartimages.com/seo/City-Studio-Womens-Juniors-Satin-Floral-Evening-Dress-White-3_bbea02ff-5f8f-4aff-ad13-4ffda8f3a6f2.7d70da1cae8195ffce2cd5117f029fc5.jpeg?odnHeight=350&odnWidth=350&odnBg=FFFFFF'),
(65, '', 'Hero Cosmetics Rescue Balm Post-Blemish Recovery Cream (15 ml).', 109, 385, 12, 'https://i5.walmartimages.com/asr/21ba90bf-c30f-45b7-a60d-220bdc069a72.52b1a648351af71725746b4ee2a93de7.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(66, '', 'Ocean\'s Halo Organic Pacific Wakame Seaweed, Great for Seaweed Salad, Shelf-Stable, 1.76 Ounces.', 290, 320, 12, 'https://i5.walmartimages.com/asr/91eb5c71-9bd3-4045-87f6-c208fc0c1884.12062f6989d0e09c3c301cf3f5a9461c.png?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(67, '', 'Catalina Crunch Sandwich Cookies Variety Pack (4 Flavors), 6.8 oz boxes.', 240, 280, 12, 'https://i5.walmartimages.com/seo/Catalina-Crunch-Sandwich-Cookies-Variety-Pack-4-Flavors-6-8-oz-boxes-Chocolate-Mint-Peanut-Butter-Vanilla-Creme-Keto-Cookies-Snacks-Vegan_9c8c078d-2675-4796-ba4c-d30a84de041d.8a851401aff41ee1222795fd2c57962e.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(68, '', 'The Only Bean Crunchy Roasted Edamame Snacks (Sriracha), Protein Keto Snacks, Vegan, Low.', 240, 280, 12, 'https://i5.walmartimages.com/seo/The-Only-Bean-Crunchy-Roasted-Edamame-Snacks-Sriracha-Protein-Keto-Snacks-Vegan-Low-Calorie-Gluten-Free-Healthy-Adults-Kids-100-Calorie-Snack-Pack-0_696039ca-0189-4042-8e24-a94b5f64238d.716df81e9aa08d1f66171d033dfd0811.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(69, '', 'Rani Garam Masala Indian 11-Spice Blend 3oz (85g) PET Jar ~ All Natural, Salt-Free | Vegan |.', 290, 320, 12, 'https://i5.walmartimages.com/asr/99eba411-d6ac-4aaf-bc43-56e0bb93c357.cc95b26f5b7f3763506e06a08861aea4.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(70, '', 'Melatonin Lotion with Magnesium - 100ml.', 310, 350, 12, 'https://i5.walmartimages.com/asr/bac33239-875e-4cd5-a0ab-eb296451c353.d660c389ba0ad92864a4a9f3b065a814.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(71, '', 'Lavender Body Butter with Magnesium.', 290, 320, 12, 'https://i5.walmartimages.com/seo/Lavender-Body-Butter-with-Magnesium_e39d21f8-2908-40dd-9945-1b8bf0e92515.e4c0993269cd80bcff655a3305117bdb.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF'),
(72, '', 'The Only Bean - Soy, Black Bean, and Edamame Spaghetti &amp; Fettuccine - Gluten Free Pasta,.', 310, 350, 12, 'https://i5.walmartimages.com/asr/8da4a98d-64c3-4f42-9f00-6c42ee9145c4.e488ca2467ac585b1f9e569775b46667.jpeg?odnHeight=350&amp;odnWidth=350&amp;odnBg=FFFFFF');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_9ce6d356894144e54291208232` (`image_id`);

--
-- Index pour la table `Hero`
--
ALTER TABLE `Hero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_9b89fbc0bff032fc943cfae308` (`image_id`);

--
-- Index pour la table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5446670e12cb568333efa1fa0ca` (`produit_id`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_63a1d4c160394a7b31d16ca1936` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `Hero`
--
ALTER TABLE `Hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD CONSTRAINT `FK_9ce6d356894144e542912082326` FOREIGN KEY (`image_id`) REFERENCES `Image` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Hero`
--
ALTER TABLE `Hero`
  ADD CONSTRAINT `FK_9b89fbc0bff032fc943cfae3085` FOREIGN KEY (`image_id`) REFERENCES `Image` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `FK_5446670e12cb568333efa1fa0ca` FOREIGN KEY (`produit_id`) REFERENCES `Produit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD CONSTRAINT `FK_63a1d4c160394a7b31d16ca1936` FOREIGN KEY (`categorie_id`) REFERENCES `Categorie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
