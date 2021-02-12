-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 12 fév. 2021 à 12:03
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog-ecrivain`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'Abou Simbel', '<p>Les temples d\'Abou Simbel sont deux temples de l\'Égypte antique creusés dans la roche situés près d\'Abou Simbel (en arabe أبو سمبل), dans le Sud de l\'Égypte, au nord du Lac Nasser, sur le Nil, à environ 70 kilomètres de la deuxième cataracte.\r\n\r\nConstruits par le pharaon Ramsès II, (XIXe dynastie) vers 1260 av. J.-C. pour commémorer sa victoire à la bataille de Qadesh, ils étaient destinés à son culte ainsi qu\'à celui de dieux égyptiens et de son épouse Néfertari.\r\n\r\nRamsès II lance le chantier dès le début de son règne, il tient à reprendre l’œuvre du pharaon qui lui sert de modèle, Amenhotep III, qui avait fait bâtir des sanctuaires monumentaux en haute Nubie. Il souhaite ainsi renouer avec la prospérité qui régnait sous le règne de son prédécesseur, les temples doivent combler les dieux, assurer grâce au bon cycle des crues du Nil la sécurité alimentaire de ses sujets.\r\n\r\nC\'est le fils royal de Koush3 de Nubie qui est chargé des travaux : Iouny puis son successeur Hékanakht.\r\n\r\nLe petit temple consacré à Néfertari fut le premier à être découvert4. Quant au grand temple dédié à Ramsès II, il fut découvert le 22 mars 1813 par l’historien suisse Johann Ludwig Burckhardt. Celui-ci le découvrit par hasard, en s’éloignant quelque peu du petit temple qu’il était venu visiter. À une centaine de mètres à l’est, il aperçut la façade du grand temple à moitié ensablée qui ne laissait transparaître que le haut des quatre statues à l’effigie de Ramsès II. Ce n’est que quatre ans plus tard, le 1er août 1817, que l’explorateur italien Giovanni Battista Belzoni parvint à désensabler et ouvrir l’entrée du grand temple.\r\n\r\nLe grand temple est un hémispéos construit à l\'origine dans la colline de Méha. Il est voué au culte d\'Amon, de Rê, de Ptah et de Ramsès II déifié. Il est taillé dans le grès de la roche pour sa majeure partie, y compris la façade composée de quatre statues colossales de Ramsès II assis ainsi que d\'autres statues, bas-reliefs et frises. Les parties non taillées dans la roche sont un péribole et un pylône en briques de limon du Nil. Au-dessus de la porte du temple, une statue en demi-ronde bosse dans une niche rectangulaire représente Rê-Horakhty reconnaissable au Disque solaire posé sur sa tête.\r\n\r\nAu lever du soleil, ses rayons éclairent le fond du sanctuaire et, à l\'époque du pharaon, trois statues sur les quatre les 21 février et 21 octobre, qui sont actuellement éclairées les 23 février et 23 octobre ; un décalage d\'une journée du lever du soleil fait un décalage de 40 cm de la partie éclairée dans le sanctuaire. Cette partie du temple est le naos. La quatrième statue jamais éclairée et située à l’une des extrémités du sanctuaire est celle de Ptah, un dieu funéraire et dieu des ténèbres, devant toujours rester dans l’ombre.\r\n</p>', 'dbc6c17187_89546_616-abou-simbel.jpg', '2018-02-03 16:08:55'),
(24, 'Le Sphinx', '<p>Le Sphinx de Gizeh est la statue thérianthrope qui se dresse devant les grandes pyramides du plateau de Gizeh, en Basse-Égypte. Sculpture monumentale monolithique la plus grande du monde1 avec 73,5 mètres de longueur, 14 mètres de largeur et 20,22 mètres de hauteur, elle représente un sphinx couchant. Réalisée vers 2500 av. J.-C., elle est attribuée à Khéphren, l\'un des pharaons de la IVe dynastie de l\'Ancien Empire, voire à son père, Khéops.\r\n\r\nSes principales dimensions sont : longueur de 73,5 mètres, hauteur de 20,22 mètres, largeur maximale de 14 mètres ; hauteur de la tête 5,20 m, largeur du visage 4,15 m, largeur de la bouche seule 2,32 m, hauteur de l\'oreille 1,40 m, hauteur du nez : 1,70 m.\r\n\r\nLe Sphinx de Gizeh, d\'une masse d\'environ 20 000 tonnes, est une sculpture monumentale taillée dans un promontoire naturel de quarante mètres de hauteur dans de la roche calcaire de la formation de Mokattam (calcaire nummulitique déposé au Cénozoïque puis buriné par le Nil6 de meilleure qualité que les formations qui l\'encadrent). Sa tête est taillée dans un piton de calcaire dur et gris sur lequel sont construites les trois pyramides, un piton qui était vraisemblablement déjà vénéré aux temps pré-pharaoniques. Il se trouve en avant de la grande carrière qui a fourni nombre de blocs à la pyramide. Sa tête est tournée vers le levant.\r\n\r\nLe corps du Sphinx, sculpté dans la couche sous-jacente de calcaire plus tendre (il est plus précisément constitué de couches tendres et de couches relativement plus dures, d\'où les marques d\'érosion différentielle), pourrait être celui d\'un lion couché, et la tête celle d\'un souverain portant le némès, le front orné d\'un uræus (on distingue encore l\'endroit du front où celui-ci était fixé). La transition entre la tête et le corps est masquée par la coiffure. Les côtés de son corps sont flanqués de quatre piédestaux (supports en maçonnerie de construction tardive par rapport à celle du Sphinx) découverts lors du désensablement par Auguste Mariette vers 1850, l\'égyptologue français mettant au jour à cette occasion les fragments d\'une statue d’Osiris qui devait être installée sur le piédestal principal.\r\n\r\nLongtemps identifié au pharaon Khéphren, fils de Khéops, son visage pourrait en fait représenter Khéops lui-même, comme l\'affirme l\'archéologue de l\'Institut français d\'archéologie orientale Vassil Dobrev. Plusieurs indices lui ont permis d\'élaborer sa théorie, comme l\'observation de sa coiffe, la largeur de son menton carré, la forme de ses oreilles ou sa barbe de cérémonie. Cependant, les comparaisons morphologiques et stylistiques révèlent leurs limites, la tête du Sphinx étant trop endommagée (nez absent, yeux rapiécés, bouche et oreille abîmées). Un autre argument avancé en faveur de Khéops est l\'hypothèse selon laquelle les Égyptiens arrivaient de Memphis par le sud, via un canal du Nil, et observaient le profil droit du Sphinx, avec en arrière la pyramide de Khéops.\r\n\r\nOn pense que le Sphinx assurait une fonction de gardien du site, ou peut-être plus précisément du temple solaire édifié à côté de la pyramide de Khéops.\r\n\r\nThoutmôsis fit désensabler le Sphinx pour satisfaire le dieu qui lui serait apparu en rêve, lui promettant en échange le trône du royaume d\'Égypte. Il fit également construire une série de murs d\'enceinte en briques de terre enduit de plâtre de neuf mètres de hauteur pour protéger la statue d\'un nouvel ensablement. Cet événement légendaire, consigné sur la stèle, lui servit de propagande pour asseoir sa légitimité en étant associé à la postérité du Sphinx.\r\n</p>', 'rsz_1sphinx-of-Giza-Egypte.jpg', '2018-02-03 18:33:05'),
(40, 'La grande pyramide de Gizeh', '<p>La pyramide de Khéops ou grande pyramide de Gizeh est un monument construit par les Égyptiens de l\'Antiquité, formant une pyramide à base carrée. Tombeau présumé du pharaon Khéops, elle fut édifiée il y a plus de 4 500 ans, sous la IVe dynastie, au centre du complexe funéraire de Khéops se situant à Gizeh en Égypte. Elle est la plus grande des pyramides de Gizeh.\r\n\r\nElle était considérée dans l\'Antiquité comme la première des Sept Merveilles du monde. Seule des Sept Merveilles du monde à avoir survécu jusqu\'à nos jours, elle est également la plus ancienne. Durant des millénaires, elle fut la construction humaine de tous les records : la plus haute, la plus volumineuse et la plus massive. Ce monument phare de l\'Égypte antique est depuis plus de 4 500 ans scruté et étudié sans relâche.\r\n\r\nLe tombeau, chef-d\'œuvre de l\'Ancien Empire de l\'architecte Hémiounou, est la consécration et l\'aboutissement de toutes les techniques architecturales mises au point depuis la création de l\'architecture monumentale en pierre de taille par Imhotep pour la pyramide de son souverain Djéser, à Saqqarah. Les nombreuses particularités architectoniques et les exploits atteints pour sa construction en font une pyramide à part qui ne cesse de questionner la recherche.\r\n\r\nCe monument forme une pyramide à base carrée de 440 coudées royales anciennes, soit environ 230,5 mètres. Les valeurs empiriques d\'aujourd\'hui sont : au sud de 230,384 m, au nord 230,329 m, à l\'ouest 230,407 m, à l\'est 230,334 m, soit une erreur pour obtenir un carré parfait de seulement 12 secondes d\'arc sur l\'angle formé par ses diagonales.\r\n\r\nLa pyramide construite sur un socle rocheux avait une hauteur initiale d\'environ 146,58 m (280 coudées royales égyptiennes), c\'est-à-dire plus haute que la basilique Saint-Pierre à Rome de 139 m, mais l\'érosion l\'a réduite de 9,58 m (environ dix-huit coudées royales) pour atteindre 137 m de hauteur. Elle détient le record du monument le plus haut du monde jusqu\'en 1311, année qui voit l\'érection de la cathédrale de Lincoln dont la flèche atteint 160 m de hauteur. Elle fait un périmètre de 922 m, une surface de 53 056 m2 et un volume originel de 2 592 341 m3 (aujourd\'hui 2 352 000 m3).\r\n\r\nL\'estimation traditionnelle du nombre de blocs de pierres qui composent la pyramide est de 2,3 millions mais le calcul des égyptologues va de 600 0005 à quatre millions6. La pyramide pèse près de cinq millions de tonnes. Le volume de matériau entassé (corps et revêtement) s\'élevait à 2,5 millions de m3 ; aujourd\'hui, il n\'en reste qu\'environ 2,34 millions.\r\n\r\nLes premières assises de la pyramide sont faites directement dans la roche naturelle du plateau de Gizeh. D\'après une étude géologique et géomorphologique de 2008, le volume minimum de ce substrat est estimé à 23 % du volume total.\r\n\r\nLe parement ou revêtement était composé de pierres calcaires blanchâtres soigneusement jointoyées et polies qui renvoyaient les rayons du soleil, lui donnant l\'aspect d\'une véritable colline de lumière (ce qui explique qu\'elle eut pour nom Akouit « la brillante », mais elle fut plutôt appelée Akhet Khoufou, « L\'horizon de Khéops ») et soulignant sa géométrie par un jeu d\'ombre et de lumière. Contrairement à la pyramide de Khéphren, elle n\'a pas gardé dans sa partie supérieure son revêtement de calcaire mais il subsiste quelques blocs au niveau de la base de la face Nord. Le nucléus est constitué de blocs de calcaire plus ou moins équarris de moins bonne qualité que ceux du parement, les premiers étant issus d\'une carrière à 400 m de la pyramide, les seconds de la carrière de Tourah. Les deux premières assises, ainsi que la maçonnerie de la grande galerie et des appartements funéraires sont construites en blocs de granit rose d\'Assouan. Les blocs qui sont aujourd\'hui visibles à l\'extérieur sont noircis par la pollution et souvent cachés par la brume.\r\n\r\nChaque bloc de pierre calcaire a un volume de 1,10 m3 et pèse en moyenne 2,5 t, ce qui fait pour la pyramide (en négligeant le poids des 130 blocs de granite) une masse totale de 5 000 000 t3.\r\n\r\nDes vestiges d\'une enceinte à redans, située à dix mètres autour de la pyramide, sont présents autour du monument. Ces redans sont des parties saines conservées du socle rocheux qui ont permis de diminuer le nombre de blocs à mettre en œuvre lors de la construction.\r\n</p>', '05455_800x480.jpg', '2018-02-07 13:41:04'),
(45, 'Le temple de Karnak', '<p>Le complexe religieux de Karnak — appelé temple de Karnak ou tout simplement Karnak— comprend un vaste ensemble de ruines de temples, chapelles, pylônes, et d’autres bâtiments situés au nord de Thèbes, aujourd’hui la ville de Louxor, en Égypte, sur la rive Est du Nil.\r\n\r\nLe complexe de Karnak, reconstruit et développé pendant plus de 2 000 ans par les pharaons successifs, de Sésostris Ier au Moyen Empire à l’époque ptolémaïque, s’étend sur plus de deux km², et est composé de trois enceintes. Il est le plus grand complexe religieux de toute l’Antiquité.\r\n\r\nTemple le plus important de la XVIIIe dynastie, il était consacré à la triade thébaine avec à sa tête le dieu Amon-Rê. Le complexe était relié au temple de Louxor par une allée de sphinx de près de trois kilomètres de long.\r\n\r\nSite touristique, il est classé au patrimoine mondial de l\'UNESCO depuis 1979. Seule l’enceinte d’Amon peut être visitée. Le site fait l’objet de fouilles conduites dès le xixe siècle par des archéologues français, organisés depuis 1967 au sein du Centre franco-égyptien d\'étude des temples de Karnak (CFEETK). Les découvertes continuent à être nombreuses.\r\n\r\nLa construction du complexe de Karnak s\'est étalée sur plus de deux millénaires avec une succession de construction, de modification, de rajouts, de destructions, de remaniements, etc. qui en fit le centre religieux le plus étendu de l\'Égypte antique. 	\r\nDevant l\'entrée occidentale de l\'enceinte d\'Amon-Rê s\'étendait un bassin relié au Nil par un canal artificiel. C\'était la voie processionnelle qu\'empruntait la barque d\'apparat de la triade thébaine d\'Amon, Mout et Khonsou lorsqu\'ils se rendaient au temple d\'Amon de Louxor lors de la fête d\'Opet.\r\n\r\nEn plus des trois enceintes, d\'autres édifices se trouvent hors des murailles. Il s\'agit du temple d\'Osiris Pededânkh à l\'ouest de l\'enceinte de Montou et au nord de l\'enceinte d\'Amon-Rê, du temple de Thoutmôsis Ier à l\'est de l\'enceinte de Montou et au nord de l\'enceinte d\'Amon, du temple d\'Amenhotep IV à l\'est de l\'enceinte d\'Amon, du reposoir des barques de Psammouthis et d\'Achoris à l\'ouest de l\'enceinte d\'Amon, du sanctuaire des barques de Thoutmôsis III et d\'Hatchepsout ainsi que du sanctuaire d\'Amon Kamoutef entre l\'enceinte d\'Amon au nord et l\'enceinte de Mout au sud et enfin du temple de Nectanébo II à l\'est de l\'enceinte de Mout.\r\n\r\nÀ ces bâtiments, il faut rajouter un certain nombre de chaussées menant à différentes portes des enceintes : une partant de l\'enceinte de Montou vers le nord et bordée de sphinx à tête humaine, une bordée de sphinx à tête de bélier partant de l\'enceinte d\'Amon vers l\'ouest jusqu\'à un débarcadère sur les bords d\'un canal et deux partant de l\'enceinte d\'Amon vers le sud, celle bordée à tête de bélier menant à l\'enceinte de Montou et celle bordée de sphinx à tête humaine rejointe par une petite allée partant de l\'enceinte de Mout et menant au temple d\'Amon à Louxor.\r\n</p>', '92.jpg', '2018-02-03 16:08:55');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(22, 'tom@gmail.com', 'e7e971e55af10f713238780785ec5e63720509f0', 0, 'indra');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
