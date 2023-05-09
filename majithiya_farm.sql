-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 09 2023 р., 12:57
-- Версія сервера: 10.4.25-MariaDB
-- Версія PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `majithiya_farm`
--

-- --------------------------------------------------------

--
-- Структура таблиці `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Структура таблиці `contact`
--

CREATE TABLE `contact` (
  `id` bigint(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `question`) VALUES
(13, 'Володимир', 6715487598, 'перевірка');

-- --------------------------------------------------------

--
-- Структура таблиці `dava`
--

CREATE TABLE `dava` (
  `id` bigint(12) NOT NULL,
  `dava_title` varchar(50) NOT NULL,
  `dava_short` text NOT NULL,
  `photo` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `dava`
--

INSERT INTO `dava` (`id`, `dava_title`, `dava_short`, `photo`, `details`) VALUES
(11, 'Пшениця', 'Врожайність: 7.9-11.4 т/га\r\nВисота рослини: 84-95 см', 'dava/pchenutca.jpg', 'Високоінтенсивного типу, універсального використання на високих і середніх агрофонах\r\n\r\nУрожайність за роки державного сортовипробування в степовій зоні склала 7.9-11.4 т/га з перевищенням національних стандартів на 0.76-1.23 т/га (10.2-19.4%). Вирізняється крупним (11.4-12.7 см), добре озерненим колосом (62-72 зерен) і середньою кущистістю (612-786 стебел на 1 м2\r\n\r\nКороткостебловий, висота рослини 84-95 см, стійкий до вилягання (9 балів), осипання (9 балів)\r\n\r\nСередньостиглий, вегетаційний період 280-285 діб\r\n\r\nМорозо-, зимостійкість вище середнього рівня, посухо-, жаростійкість високі, підвищена стійкість до кислотності та засоленості грунту\r\n\r\nСтійкість до фітозахворювань (у балах): бура іржа 6-7, стеблова іржа 5-6, борошниста роса 7-8, фузаріоз колоса 5-6, кореневі гнилі 7-8'),
(12, 'Соняшник', 'Вегетаційний період: 109-112 днів\r\nПотенційна врожайність: 47 ц/га', 'dava/sonachnik.jpg', 'Тип гібрида — простий\r\n\r\nПеріод вегетації — 109-112 днів\r\n\r\nНапрямок використання — олійний\r\n\r\nПотенційна врожайність — понад 47 ц / га\r\n\r\nВисота рослини — 145-165 см\r\n\r\nІнтенсивність зростання на початковому етапі вегетації — висока\r\n\r\nОблистянність відмінна, у фазі початку бутонізації листя повністю закриває грунт\r\n\r\nСтебло середньої товщини\r\n\r\nКоренева система дуже потужна\r\n\r\nКошик тонкий, випуклої форми, напівповернутий вниз, діаметр 18-21 см, виповненість — 100%\r\n\r\nСім’янка чорного кольору, подовжена, маса 1000 шт. — 60-75 г\r\n\r\nВміст олії 47-49%\r\n\r\nЛузжистість 22-24%\r\n\r\nГустота стояння рослин перед збиранням: степ — 55 тис/га, лісостеп — 60 тис/га\r\n\r\nРекомендована зона вирощування степ, лісостеп'),
(13, 'Кукурудза', 'Вегетаційний період: 115-125 днів\r\nВрожайність: 150-160 ц/Га', 'dava/kykyrydza.jpg', 'Гібрид екопластичний, холодо-, морозостійкий. Присутня можливість висіву у всіх ґрунтово-кліматичних зонах країни в ранні строки при температурі ґрунту від +8.\r\n\r\nПотужний стартовий ріст.\r\n\r\nВідмінна компенсаційна здатність при зрідженні посівів.\r\n\r\nСтійкий до засухи та вилягання,фузаріозу, до летючої та пухирчастої сажки ,а також до гельмінтоспоріозу. Стійкість до кукурудзяного метелика.\r\n\r\nМіцне кріплення початку на висоті 110-120 см.\r\n\r\nРемонтантний гібрид, який відкриває початок у фазі воскової спілості, що дає змогу збирати врожай при оптимальній волозі, незважаючи на об’ємне ФАО.\r\n\r\nГібрид зернового напрямку з дуже високим потенціалом урожайності.'),
(15, 'Ячмень', 'Врожайність: 9-10 т/га\r\nВисота рослини: 80 см', 'dava/yachmin.jpg', 'тип розвитку — альтернативний (дворучка);\r\n\r\nкритична від’ємна температура у вузлі кущіння — 13 С°;\r\n\r\nза роки державного сортовипробування по лісостеповій зоні середнє перевищення над стандартом склало 10,8%, у Вінницькій області у 2016 році при врожайності у 105,5 ц/га перевищення над стандартом склало 38,9%;\r\n\r\nвідрізняється густим щільним стеблостоєм. Висота рослин — 80 см, посухостійкість — 8 балів, стійкість до осипання — 8 балів;\r\n\r\nсередньоранній (252- 256 діб), дозріває на 1-2 дні пізніше сорту Достойний;\r\n\r\nімунний до сажкових захворювань, стійкість до борошнистої роси — 6 балів, до гельмінтоспоріозу — 5 балів;\r\n\r\nвміст білку — 11,5%'),
(16, 'Ріпак', 'Вегетаційний період: 295-300 дн.\r\nТип вирощування: озимий\r\nГрупа стиглості: ранньостиглий\r\n', 'dava/ripak.jpg', 'Маса 1000 насінин 4,5-4,7 г\r\n\r\nВміст олії 46,4 %\r\n\r\nВисота рослини 172 см\r\n\r\nВміст глюкозинолатів 0,3 %\r\n\r\nВміст ерукової кислоти 0,0-0,2 %\r\n\r\nПотенціал врожайності 72 ц/га\r\n\r\nСередня врожайність за роки випробування 47 ц/га');

-- --------------------------------------------------------

--
-- Структура таблиці `khatar`
--

CREATE TABLE `khatar` (
  `id` bigint(12) NOT NULL,
  `khatar_title` varchar(100) NOT NULL,
  `khatar_short` text NOT NULL,
  `photo` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `khatar`
--

INSERT INTO `khatar` (`id`, `khatar_title`, `khatar_short`, `photo`, `details`) VALUES
(11, 'NPK MAKOSH Z BOREM', '500 кг\r\nЦІНА: 15300 ГРН', 'khatar/NPKBOREM.png', 'Добриво є універсальним, його можна використовувати в основний та передпосівний обробіток ґрунту, для більшості с/г культур на усіх типах ґрунтів. \r\n\r\nБагатокомпонентне комплексне добриво, що містить всі необхідні макро- та мезоелементи в оптимальному співвідношенні в кожній гранулі.\r\n\r\nОсобливо рекомендується використовувати під культури, що мають підвищену потребу у живленні калієм та бором.\r\n\r\nНайкраще забезпечує потребу рослин в збалансованому живленні, дозволяє отримати максимальний урожай високої якості за помірну ціну.\r\n'),
(12, 'NPK MAKOSH Z CYNKIEM', '500 кг\r\nЦІНА: 16000 ГРН', 'khatar/NPKCYNKIEM.png', 'Добриво є універсальним, його можна використовувати в передпосівний обробіток ґрунту та при посіві, для більшості с/г культур на усіх типах ґрунтів.\r\n\r\nЗабезпечує рослину необхідними елементами від початку сходів, збільшує стійкість рослини до несприятливих погодніх умов та нестачі води, забезпечує рівномірне та швидке достигання культури.\r\n\r\nОсобливо рекомендовано використовувати добриво для культур чутливих до нестачі Zn кукурудза, бобові, овочеві та плодові.\r\n\r\nКожна гранула має круглу форму, є зручною для використання, містить в собі всі елементи, які забезпечують активний старт на початку вегетації.'),
(13, 'POLIFOSKA', '500 кг\r\nЦІНА: 21950 ГРН', 'khatar/POLIFOSKA.png', 'Універсальне добриво,яке можна використовувати в передпосівний обробіток ґрунту та при посіві, під усі основні сільськогосподарських культури на всіх типах ґрунтів.\r\n\r\nДобриво підходить для всіх сільськогосподарських культур, як для основного, так і для припосівного внесення.\r\n\r\nІдеально підходить культурам, що потребують посиленого калійного живлення, особливо технічним та олійним. Також ефективне на збіднених на калій ґрунтах.\r\n\r\nВсі елементи живлення, що містяться в кожній гранулі добрива (Азот, Фосфор, Калій та Сірка), знаходяться в максимально доступній формі для рослин.'),
(14, 'LUBOFOS ПІД РІПАК', '50 кг\r\nЦІНА: 1555 ГРН', 'khatar/LUBOFOS.png', 'Найвища ефективність досягається при використанні добрива в основний обробіток, чи в передпосівну культивацію. Може застосовуватися під усі с/г культури.\r\n\r\nОсобливо рекомендується для використання при вирощуванні ріпаку.\r\n\r\nЗадовольняє специфічні потреби ріпаку у живленні сіркою, бором та марганцем.Забезпечує високу врожайність.\r\n\r\nПідвищує зимостійкість і морозостійкість озимого ріпаку.'),
(15, 'LUBOFOSKA 4-12-12', '500 кг\r\nЦІНА: 13400 ГРН\r\n', 'khatar/LUBOFOSKA.png', '\r\nУніверсальне добриво – підходить для підживлення всіх сільськогосподарських культур в основне, передпосівне та припосівне внесення. Має дуже високу ефективність на ґрунтах, з низьким вмістом кальцію та сірки.\r\n\r\nВисокоякісне комплексне добриво для широкого спектру польових культур для основного та припосівного внесення.\r\n\r\nКальцій та сірка у складі добрива, забезпечують краще засвоєння інших елементів живлення.\r\n\r\nОптимальне співвідношення калію до фосфору (K₂O:P₂O₅), яке складає 1:1.'),
(16, 'MAKOSH 18+ B', '500 кг\r\nЦІНА: 16100 ГРН', 'khatar/MAKOSH.png', 'Makosh 18+ B, Zn - спеціальне фосфорно-калійне добриво, яке застосовують для внесення в основний обробіток, передпосівом та при посіві на всіх типах ґрунтів і під будь-які сільгосподарські культури.\r\n\r\nЕфективне фосфорно-калійне добриво виготовлене за європейськими стандартами, що підходить для основного та припосівного внесення.\r\n\r\nМістить водорозчинний калій та фосфор, який залишається доступним рослинам протягом всієї вегетації.\r\n\r\nНаявність калію, сірки та мікроелементів дозволяють в найбільшій мірі реалізувати весь потенціал сільськогосподарських культур.\r\n');

-- --------------------------------------------------------

--
-- Структура таблиці `question`
--

CREATE TABLE `question` (
  `id` bigint(12) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `question`
--

INSERT INTO `question` (`id`, `category`, `subject`, `title`, `pdf`) VALUES
(10, 'ખેતીવાડી', 'ધાન્ય પાકો', '	ઘઉં', 'question_pdf/ઘઉં.pdf'),
(12, 'ખેતીવાડી', 'ધાન્ય પાકો', 'જુવાર', 'question_pdf/જુવાર.pdf'),
(13, 'ખેતીવાડી', 'ધાન્ય પાકો', 'બાજરી', 'question_pdf/બાજરી.pdf'),
(15, 'ખેતીવાડી', 'ધાન્ય પાકો', 'ડાંગર', 'question_pdf/ડાંગર.pdf'),
(16, 'ખેતીવાડી', 'તેલીબીયાં  પાકો', '	દિવેલા', 'question_pdf/દિવેલા.pdf'),
(17, 'ખેતીવાડી', 'તેલીબીયાં  પાકો', '	મગફળી', 'question_pdf/મગફળી.pdf'),
(18, 'ખેતીવાડી', 'તેલીબીયાં  પાકો', '	સોયાબીન', 'question_pdf/સોયાબિન.pdf'),
(19, 'ખેતીવાડી', 'કઠોળ પાકો', 'અળદ', 'question_pdf/અળદ.pdf'),
(20, 'ખેતીવાડી', 'કઠોળ પાકો', 'તુવેર', 'question_pdf/તુવેર.pdf'),
(21, 'ખેતીવાડી', 'કઠોળ પાકો', 'મગ', 'question_pdf/મ ગ.pdf'),
(22, 'ખેતીવાડી', 'રોકડીયા પાકો', 'કપાસ', 'question_pdf/કપાસ.pdf'),
(23, 'ખેતીવાડી', 'રોકડીયા પાકો', '	શેરડી', 'question_pdf/શેરડિ.pdf'),
(24, 'ખેતીવાડી', 'રોકડીયા પાકો', 'તમાકુ', 'question_pdf/તમાકુ.pdf'),
(25, 'ખેતીવાડી', 'ઘાસચારાના પાકો', '	ધાસચારાના પાકોની માહિતી', 'question_pdf/ઘાસ ચારાની  માહિતી.pdf'),
(26, 'ખેતીવાડી', 'ઘાસચારાના પાકો', 'રજકો', 'question_pdf/રજકો.pdf'),
(27, 'ખેતીવાડી', 'ઘાસચારાના પાકો', 'મકાઈ', 'question_pdf/મકાઈ.pdf'),
(28, 'બાગાયત', 'ફળ પાકો', '	આંબો', 'question_pdf/આંબો.pdf'),
(29, 'બાગાયત', 'ફળ પાકો', 'કેળ', 'question_pdf/કેળ.pdf'),
(30, 'બાગાયત', 'ફળ પાકો', '	ચીકુ', 'question_pdf/ચીકુ.pdf'),
(31, 'બાગાયત', 'ફળ પાકો', 'દાડમ', 'question_pdf/દાડમ.pdf'),
(32, 'બાગાયત', 'ફળ પાકો', 'નાળીયેરી', 'question_pdf/નાળીયેલી.pdf'),
(33, 'બાગાયત', 'ફળ પાકો', 'પપૈયા', 'question_pdf/પપૈયા.pdf'),
(34, 'બાગાયત', 'શાકભાજી પાકો', 'વેલાવાળા શાકભાજી', 'question_pdf/વેલાવાળા શાકભાજી.pdf'),
(35, 'બાગાયત', 'શાકભાજી પાકો', 'ગુવાર', 'question_pdf/ગુવાર.pdf'),
(36, 'બાગાયત', 'શાકભાજી પાકો', '	ટામેટી', 'question_pdf/ટામેટાં.pdf'),
(37, 'બાગાયત', 'શાકભાજી પાકો', '	તડબુચ', 'question_pdf/તડબૂચ.pdf'),
(38, 'બાગાયત', 'શાકભાજી પાકો', 'મરચી', 'question_pdf/મરચી.pdf'),
(39, 'બાગાયત', 'શાકભાજી પાકો', 'રીંગણ', 'question_pdf/રીંગણ.pdf'),
(40, 'બાગાયત', 'શાકભાજી પાકો', '	લસણ - ડુંગળી', 'question_pdf/લસણ-ડુંગળી.pdf'),
(41, 'બાગાયત', 'શાકભાજી પાકો', '	લીંબુ', 'question_pdf/લીંબુ.pdf'),
(42, 'બાગાયત', 'ફુલછોડ પાકો', 'ગુલાબ', 'question_pdf/ગુલાબ.pdf'),
(43, 'બાગાયત', 'ફુલછોડ પાકો', '	ગલગોટા', 'question_pdf/ગલગોટો.pdf'),
(44, 'બાગાયત', 'ફુલછોડ પાકો', 'સૂર્યમુખી', 'question_pdf/સૂર્યમુખી.pdf'),
(45, 'બાગાયત', 'ફળ પરિરક્ષણ', '	ફળ પરિરક્ષણ', 'question_pdf/ફળ પરીક્ષણ.pdf');

-- --------------------------------------------------------

--
-- Структура таблиці `question_category`
--

CREATE TABLE `question_category` (
  `id` bigint(12) NOT NULL,
  `main_option` varchar(20) NOT NULL,
  `sub_option` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `question_category`
--

INSERT INTO `question_category` (`id`, `main_option`, `sub_option`) VALUES
(1, 'ખેતીવાડી', 'ધાન્ય પાકો'),
(2, 'ખેતીવાડી', 'તેલીબીયાં  પાકો'),
(3, 'ખેતીવાડી', 'કઠોળ પાકો'),
(4, 'ખેતીવાડી', 'રોકડીયા પાકો'),
(5, 'ખેતીવાડી', 'ઘાસચારાના પાકો'),
(6, 'બાગાયત', 'ફળ પાકો'),
(7, 'બાગાયત', 'શાકભાજી પાકો'),
(8, 'બાગાયત', 'ફુલછોડ પાકો'),
(9, 'બાગાયત', 'ફળ પરિરક્ષણ');

-- --------------------------------------------------------

--
-- Структура таблиці `salahkaro`
--

CREATE TABLE `salahkaro` (
  `id` bigint(12) NOT NULL,
  `category` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `hodo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `salahkaro`
--

INSERT INTO `salahkaro` (`id`, `category`, `city`, `hodo`, `name`, `phone`) VALUES
(27, '2022', 'Нематеріальні активи', '1000', '239', 10),
(29, '2022', 'Незавершені капітальні інвестиції', '1005', '63', 63),
(30, '2022', 'Основні засоби', '1010', '89 304', 86536),
(31, '2022', 'Інвестиційна нерухомість', '1015', '2 961', 2789),
(32, '2022', 'Довгострокові фінансові інвестиції', '1030', '177 615', 171691),
(33, '2022', 'Відстрочені податкові активи', '1045', '0', 0),
(54, '2021', 'Нематеріальні активи', '1000', '468', 239),
(55, '2021', 'Незавершені капітальні інвестиції', '1005', '201', 63),
(56, '2021', 'Основні засоби', '1010', '97 328', 89304),
(57, '2021', 'Інвестиційна нерухомість', '1015', '3 133', 2961),
(58, '2021', 'Довгострокові фінансові інвестиції', '1030', '190 079', 177615),
(59, '2021', 'Відстрочені податкові активи', '1045', '0', 0),
(66, '2020', 'Нематеріальні активи', '1000', '706', 468),
(67, '2020', 'Незавершені капітальні інвестиції', '1005', '197', 201),
(68, '2020', 'Основні засоби', '1010', '118 889', 97328),
(69, '2020', 'Інвестиційна нерухомість', '1015', '3 304', 3133),
(70, '2020', 'Довгострокові фінансові інвестиції', '1030', '198 451', 190079),
(71, '2020', 'Відстрочені податкові активи', '1045', '0', 0),
(73, '2019', 'Нематеріальні активи', '1000', '950 – 960', 700),
(74, '2019', 'Незавершені капітальні інвестиції', '1005', '370 – 380', 200),
(75, '2019', 'Основні засоби', '1010', '100 000 – 110 000', 120000),
(76, '2019', 'Інвестиційна нерухомість', '2015', '10 000 – 11 000', 3300),
(77, '2019', 'Довгострокові фінансові інвестиції', '2030', '170 000 – 180 000', 190000),
(78, '2019', 'Відстрочені податкові активи', '1045', '0', 0),
(89, '2018', 'Нематеріальні активи', '1000', '1 100 – 1 200', 950),
(90, '2018', 'Незавершені капітальні інвестиції', '1005', '750 – 760', 370),
(91, '2018', 'Основні засоби', '1010', '270 000 – 280 000', 110000),
(92, '2018', 'Інвестиційна нерухомість', '1015', '28 000 – 29 000', 11000),
(93, '2018', 'Довгострокові фінансові інвестиції', '1030', '20 000 – 21 000', 170000),
(94, '2018', 'Відстрочені податкові активи', '1045', '0', 0);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `dava`
--
ALTER TABLE `dava`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `khatar`
--
ALTER TABLE `khatar`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `question_category`
--
ALTER TABLE `question_category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `salahkaro`
--
ALTER TABLE `salahkaro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `dava`
--
ALTER TABLE `dava`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблиці `khatar`
--
ALTER TABLE `khatar`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблиці `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблиці `question_category`
--
ALTER TABLE `question_category`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `salahkaro`
--
ALTER TABLE `salahkaro`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
