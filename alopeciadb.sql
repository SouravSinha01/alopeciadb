-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 05:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alopeciadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `marketed_drugs`
--

CREATE TABLE `marketed_drugs` (
  `id` int(11) NOT NULL,
  `compound_name` varchar(255) DEFAULT NULL,
  `formula` varchar(255) DEFAULT NULL,
  `cas` varchar(255) DEFAULT NULL,
  `market_name` varchar(255) DEFAULT NULL,
  `fda_approved` varchar(100) DEFAULT NULL,
  `therapy` varchar(255) DEFAULT NULL,
  `dose` varchar(100) DEFAULT NULL,
  `mechanism` text DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `medication` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `effects` varchar(255) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `smiles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marketed_drugs`
--

INSERT INTO `marketed_drugs` (`id`, `compound_name`, `formula`, `cas`, `market_name`, `fda_approved`, `therapy`, `dose`, `mechanism`, `sex`, `medication`, `image`, `reference`, `effects`, `link`, `smiles`) VALUES
(1, 'Minoxidil', 'C9H15N5O', '38304-91-5', 'Loniten, Minodyl, and Minoxidil HTN', '1988(YES)', 'Topical', '2–10%; QD, BID', 'Arteriolar vasodilation, inducing cell proliferation; increase vascular endothelial growth factor', 'Both', 'Minoxidil is a medication used for the treatment of high blood pressure and pattern hair loss. It is an antihypertensive vasodilato', 'minoxidil.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Headaches, hypertrichosis, irritation, contact dermatitis', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC10173235/', 'C1CCN(CC1)C2=NC(=N)N(C(=C2)N)O'),
(2, 'Latanoprost', 'C26H40O5', '130209-82-4', 'Xalatan and Xelpros', '1996(YES)', 'Topical', '0.1% QD', 'Prostaglandin analog—prolong anagen (growth) phase', 'Both', 'Latanoprost, sold under the brand name Xalatan among others, is a medication used to treat increased pressure inside the eye. This includes ocular hypertension and open angle glaucoma', 'latanoprost.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Irritation, hypertrichosis', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC10173235/', ' CC(C)OC(=O)CCC/C=C\\C[C@H]1[C@H](C[C@H]([C@@H]1CC[C@H](CCC2=CC=CC=C2)O)O)O'),
(3, 'Finasteride', 'C23H36N2O2', '98319-26-7', 'Proscar and Propecia', 'NA', 'Oral', '1 mg, 5 mg; QD', 'Type II 5-alpha-reductase inhibitor—blocks formation of DHT', 'Male', 'Finasteride used to treat symptoms of BPH such as frequent and difficult urination and may reduce the chance of acute urinary retention (sudden inability to urinate)', 'finasteride1.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Sexual dysfunction, altered libido, gynecomastia, mood changes', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC10173235/', 'C[C@]12CC[C@H]3[C@H]([C@@H]1CC[C@@H]2C(=O)NC(C)(C)C)CC[C@@H]4[C@@]3(C=CC(=O)N4)C\r\n'),
(4, 'Dutasteride', 'C27H30F6N2O2', '164656-23-9', 'Avodart', '11/20/2001(YES)', 'Oral', '0.5 mg, 1 mg, QD', 'Type I and II 5-alpha-reductase inhibitor—blocks formation of DHT', 'Both', 'Dutasteride, sold under the brand name Avodart among others, is a medication primarily used to treat the symptoms of a benign prostatic hyperplasia, an enlarged prostate not associated with cancer', 'dutasteride.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Postural hypotension, electrolyte imbalances', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC10173235/', 'C[C@]12CC[C@H]3[C@H]([C@@H]1CC[C@@H]2C(=O)NC4=C(C=CC(=C4)C(F)(F)F)C(F)(F)F)CC[C@@H]5[C@@]3(C=CC(=O)N5)C'),
(5, 'spironolactone', 'C24H32O4S', '52-01-7', 'Aldactone', '8/20/2001', 'Oral', '12–200 mg QD', 'Antiandrogen—effectively decreases testosterone', 'F', 'Spironolactone, sold under the brand name Aldactone among others, is a medication that is primarily used to treat fluid build-up due to heart failure, liver scarring, or kidney disease', 'spironolactone.png', 'Devjani S, Ezemma O, Kelley KJ, Stratton E, Senna M. Androgenetic Alopecia: Therapy Update. Drugs. 2023 Jun;83(8):701-715. doi: 10.1007/s40265-023-01880-x. Epub 2023 May 11. PMID: 37166619; PMCID: PMC10173235.', 'Postural hypotension, electrolyte imbalances', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC10173235/', 'CC(=O)S[C@@H]1CC2=CC(=O)CC[C@@]2([C@@H]3[C@@H]1[C@@H]4CC[C@]5([C@]4(CC3)C)CCC(=O)O5)C'),
(6, 'flutamide', 'C11H11F3N2O3', '13311-84-7', 'Eulexin', '6/11/1905', 'Oral', '62.5–250 mg QD', 'Antiandrogen—effectively blocks testosterone', 'F', 'Flutamide, sold under the brand name Eulexin among others, is a nonsteroidal antiandrogen which is used primarily to treat prostate cancer. It is also used in the treatment of androgen-dependent conditions like acne, excessive hair growth, and high androgen levels in women', 'flutamide.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Elevated liver enzymes, bloating, headache, breast tenderness', 'https://pubmed.ncbi.nlm.nih.gov/37166619/', 'CC(C)C(=O)NC1=CC(=C(C=C1)[N+](=O)[O-])C(F)(F)F'),
(7, 'Bicalutamide', 'C18H14F4N2O4S', '90357-06-5', 'Casodex, Cosudex, Calutide, Calumid, and Kalumid', '6/17/1905', 'Oral', '12.5–50 mg 3–5 times weekly', 'Antiandrogen—effectively blocks testosterone	', 'F', 'Bicalutamide, sold under the brand name Casodex among others, is an antiandrogen medication that is primarily used to treat prostate cancer. It is typically used together with a gonadotropin-releasing hormone analogue or surgical removal of the testicles to treat metastatic prostate cancer', 'bicalutamide.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Elevated liver enzymes, bloating, headache, breast tenderness', 'https://pubmed.ncbi.nlm.nih.gov/37166619/', 'CC(CS(=O)(=O)C1=CC=C(C=C1)F)(C(=O)NC2=CC(=C(C=C2)C#N)C(F)(F)F)O\r\n'),
(8, 'cyproterone acetate', 'C22H27ClO3', '2098-66-0', 'Androcur, Androcur Depot, Androcur-100, Androstat, Asoteron, Cyprone, Cyproplex, Cyprostat, Cysaxal, Imvel, and Siterone', 'NA', 'Oral', '2 mg QD (often combined with ethinyl estradiol)', 'Antiandrogen—blocks gonadotropin-releasing hormone and androgen receptors', 'B', 'Cyproterone, also known by its developmental code name SH-80881, is a steroidal antiandrogen which was studied in the 1960s and 1970s but was never introduced for medical use', 'cyproteroneacetate.png', 'Devjani, S., Ezemma, O., Kelley, K. J., Stratton, E., & Senna, M. (2023). Androgenetic Alopecia: Therapy Update. Drugs, 83(8), 701–715. https://doi.org/10.1007/s40265-023-01880-x', 'Weight gain, breast tenderness, decreased libido', 'https://pubmed.ncbi.nlm.nih.gov/37166619/', 'CC(=O)[C@]1(CC[C@@H]2[C@@]1(CC[C@H]3[C@H]2C=C(C4=CC(=O)[C@@H]5C[C@@H]5[C@]34C)Cl)C)OC(=O)C'),
(9, 'Botulinum toxin A', 'C6760H10447N1743O2010S32', '93384-43-1', 'Dysport/Azzalure from Galderma and Ipsen, Xeomin/Bocouture from Merz, Jeuveau/Nuceiva from Evolus, manufactured by Daewoong in South Korea', '6/7/1905', 'Injectables', 'Injeted every month	', 'Interferes with the suppressive effect of DHT on the hair follicle', 'M', 'It prevents the release of the neurotransmitter acetylcholine from axon endings at the neuromuscular junction, thus causing flaccid paralysis', 'botulinum.png\r\n', 'Amiri, R., Mohammadi, S., Azizi, S., Pardakhty, A., Khalili, M., & Aflatoonian, M. (2023). Evaluation of efficacy and safety profile of niosomal kopexil 1% lotion compared to niosomal minoxidil 2% lotion in malepattern alopecia. Iranian Journal of Dermato', 'Mild discomfort, temporary drooping of nearby muscles, transient headache, nausea', 'https://www.iranjd.ir/article_173914.html', 'NA'),
(10, 'Kopexil', 'C4H6N4O', '113275-13-1', 'Aminexil', 'NA', 'Topical', '2–10%; QD, BID', 'Lysyl hydroxylase (LH), an enzyme catalyzes the formation of hydroxylysine, which contributes to the maturation of collagen synthesis	', 'B', 'originally used to treat high blood pressure', 'aminexil.png', 'Mattar, M. C., Lough, D., Pishvaian, M. J., & Charabaty, A. (2011). Current management of inflammatory bowel disease and colorectal cancer. Gastrointestinal cancer research : GCR, 4(2), 53–61.', 'mild scalp irritations such as redness, itching, and dryness	', 'https://pubmed.ncbi.nlm.nih.gov/21673876/', 'C1=C(N(C(=N)N=C1)O)N'),
(11, 'Triamcinolone', 'C21H27FO6', '124-94-7', 'Kenalog	', '6/16/2008', 'By mouth, topical, intranasal, intramuscular, intra-articular, intra-synovial', 'Concentrations of 2.5 to 10 mg/mL', 'Immunosuppression is the main mechanism of action', 'B', 'Triamcinolone is a glucocorticoid used to treat certain skin diseases, allergies, and rheumatic disorders among others. It is also used to prevent worsening of asthma and COPD', 'triamcinolone.png', 'Kumaresan M. (2010). Intralesional steroids for alopecia areata. International journal of trichology, 2(1), 63–65. https://doi.org/10.4103/0974-7753.66920', 'Triamcinolone is a glucocorticoid used to treat certain skin diseases, allergies, and rheumatic disorders among others. It is also used to prevent worsening of asthma and COPD', 'https://pubmed.ncbi.nlm.nih.gov/21188031/', 'C[C@]12C[C@@H]([C@]3([C@H]([C@@H]1C[C@H]([C@@]2(C(=O)CO)O)O)CCC4=CC(=O)C=C[C@@]43C)F)O'),
(12, 'Baricitinib', 'C16H17N7O2S', '1187594-09-7', 'Olumiant', '5/31/2018', 'Oral', 'SALT 30response achieved by 29.6%, 33.3%, 17.9% and 10.7% patients treated with baricitinib 2mg, 4mg', 'It acts as an inhibitor of janus kinase, blocking the subtypes JAK1 and JAK2', 'F', 'Baricitinib, sold under the brand name Olumiant among others, is an immunomodulatory medication used for the treatment of rheumatoid arthritis, alopecia areata, and COVID-19', 'baricitnib.png', 'Freitas, E., Guttman-Yassky, E., & Torres, T. (2023). Baricitinib for the Treatment of Alopecia Areata. Drugs, 83(9), 761–770. https://doi.org/10.1007/s40265-023-01873-w', 'Increased cholesterol levels', 'https://pubmed.ncbi.nlm.nih.gov/37195491/', 'CCS(=O)(=O)N1CC(C1)(CC#N)N2C=C(C=N2)C3=C4C=CNC4=NC=N3\r\n'),
(13, 'Ritlecitinib', 'C22H27N5O4S', '1792180-81-4', 'LITFULO', '23-june 2023', 'By mouth, topical, intranasal, intramuscular, intra-articular, intra-synovial', '50 mg and 30 mg daily for 24 weeks', 'Ritlecitinib is a kinase inhibitor which inhibits Janus kinase 3 and tyrosine kinase', 'B', 'Ritlecitinib, sold under the brand name Litfulo, is a medication used for the treatment of severe alopecia', 'ritlecitnib.png', 'Ramírez-Marín, H. A., & Tosti, A. (2022). Evaluating the Therapeutic Potential of Ritlecitinib for the Treatment of Alopecia Areata. Drug design, development and therapy, 16, 363–374. https://doi.org/10.2147/DDDT.S334727', 'warm, red, or painful skin or sores on your body', 'https://pubmed.ncbi.nlm.nih.gov/35210753/', 'C[C@H]1CC[C@H](CN1C(=O)C=C)NC2=NC=NC3=C2C=CN3\r\n'),
(14, 'biotinoyl tripeptide-1', 'C24H38N8O6S', '11534242', 'Procapil,SpecPed Bt1p', 'NA', 'Injectables', '1-3% recommend', 'No known side effects', 'B', 'Biotinoyl Tripeptide-1 helps slow the aging effects by lessening harmful dihydrotestosterone (DHT) production, improving irrigation of the hair follicle, stimulating the production of anchoring molecules, and promoting hair', 'biotinoyl_tripeptide.png', 'Ashique, S., Sandhu, N. K., Haque, S. N., & Koley, K. (2020). A Systemic Review on Topical Marketed Formulations, Natural Products, and Oral Supplements to Prevent Androgenic Alopecia: A Review. Natural products and bioprospecting, 10(6), 345–365. https:/', 'No known side effects', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC7648777/', 'C1[C@H]2[C@@H]([C@@H](S1)CCCCC(=O)NCC(=O)N[C@@H](CC3=CN=CN3)C(=O)N[C@@H](CCCCN)C(=O)O)NC(=O)N2');

-- --------------------------------------------------------

--
-- Table structure for table `molecules`
--

CREATE TABLE `molecules` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `structure_image` varchar(255) NOT NULL,
  `formula` varchar(100) DEFAULT NULL,
  `molecular_weight` float DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `uses` text DEFAULT NULL,
  `additional_field` text DEFAULT NULL,
  `smiles` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `molecules`
--

INSERT INTO `molecules` (`id`, `name`, `description`, `structure_image`, `formula`, `molecular_weight`, `category`, `uses`, `additional_field`, `smiles`) VALUES
(1, 'Minoxidil', 'Used for treating hair loss.', 'minoxidil.png', 'C9H15N5O', 209.25, 'Drug', 'Hair regrowth, vasodilation', 'FDA Approved', 'O=C1NC(=O)C2=C(N1)N(C=N2)CC3CCCC3\r\n'),
(2, 'Finasteride', 'Reduces DHT levels in the scalp.', 'finasteride.png', 'C23H36N2O2', 372.55, 'Drug', 'Treats androgenic alopecia', 'Prescription only', 'FFFFFFFF'),
(3, 'Saw Palmetto', 'Natural extract for hair health.', 'saw_palmetto.png', 'C30H52O', 436.72, 'Natural Product', 'DHT blocker, anti-inflammatory', 'Herbal Supplement', 'CCCCCCCCC'),
(4, 'Ketoconazole', 'Antifungal agent with DHT blocking.', 'ketoconazole.png', 'C26H28Cl2N4O4', 531.43, 'Drug', 'Treats dandruff and alopecia', 'Shampoo formulation', 'KKKKKKKKKKK'),
(5, 'Biotin', 'Vitamin for healthy hair growth.', 'biotin.png', 'C10H16N2O3S', 244.31, 'Vitamin', 'Strengthens hair and nails', 'Found in diet', 'BBBBBBBBBB');

-- --------------------------------------------------------

--
-- Table structure for table `natural_products`
--

CREATE TABLE `natural_products` (
  `id` int(11) NOT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `scientific_name` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `climate` varchar(255) DEFAULT NULL,
  `smiles` varchar(255) DEFAULT NULL,
  `cas` text DEFAULT NULL,
  `experimental_model` text DEFAULT NULL,
  `constituent` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `natural_products`
--

INSERT INTO `natural_products` (`id`, `common_name`, `scientific_name`, `family`, `climate`, `smiles`, `cas`, `experimental_model`, `constituent`, `image`, `reference`, `link`) VALUES
(1, 'Aloe Vera', 'Aloe barbadensis', 'Asphodelaceae', 'Hot, dry climates', 'C1=CC2=C(C(=C1)O)C(=O)C3=C([C@H]2[C@H]4[C@@H]([C@H]([C@@H]([C@H](O4)CO)O)O)O)C=C(C=C3O)CO', 'Contain phytochemicals under study for possible bioactivity such as acetylated, mannans, polymannans,anthraquinone Cglycosides, anthrones, and other anthraquinones, such as emodin and various lectins', 'Human dermal papilla cell', 'Contain phytochemicals under study for possible bioactivity such as acetylated, mannans, polymannans,anthraquinone Cglycosides, anthrones, and other anthraquinones, such as emodin and various lectins.', 'aloevera.png', 'Hekmatpou, D., Mehrabi, F., Rahzani, K., & Aminiyan, A. (2019). The Effect of Aloe Vera Clinical Trials on Prevention and Healing of Skin Wound: A Systematic Review. Iranian journal of medical sciences, 44(1), 1–9.', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC6330525/'),
(2, 'Aswagandha', 'Withania somnifera', 'Solanaceae', 'sub-tropical climate', 'CC1=C(C(=O)O[C@H](C1)[C@@](C)([C@H]2CC[C@@H]3[C@@]2(CC[C@H]4[C@H]3C[C@@H]5[C@]6([C@@]4(C(=O)C=C[C@@H]6O)C)O5)C)O)C', '30655-48-2', 'Cultured mink hair follicles Cultured dermal papilla cells Cultured outer root sheath cells', 'steroidal lactones that modulates cortisol level', 'aswagandha.png', 'Stephens, T. J., Berkowitz, S., Marshall, T., Kogan, S., & Raymond, I. (2022). A Prospective Six-month Single-blind Study Evaluating Changes in Hair Growth and Quality Using a Nutraceutical Supplement in Men and Women of Diverse Ethnicities. The Journal of clinical and aesthetic dermatology, 15(1), 21–26.', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC8903234/'),
(3, 'Amla Fruit', 'Phyllanthus emblica', 'Phyllanthaceae', 'Dry climate', 'C1C2C(C(=C(C(=O)O2)OC(=O)C3=CC(=C(C(=C3)O)O)O)OC(=O)C4=CC(=C(C(=C4)O)O)O)OC(=O)C5=CC(=C(C(=C5C6=C(C(=C(C=C6C(=O)O1)O)O)O)O)O)O', '90028-28-7', 'Human follicle dermal papilla cells NIH3T3 cells Clinical Study', 'Emblicanin A and B', 'amla.png\r\n', 'Akhbari, M., Firooz, A., Rahimi, R., Shirzad, M., Esmaealzadeh, N., & Shirbeigi, L. (2024). The effect of an oral product containing Amla fruit (Phyllanthus emblica L.) on female androgenetic alopecia: A randomized controlled trial. Journal of ethnopharmacology, 318(Pt A), 116958. https://doi.org/10.1016/j.jep.2023.116958', 'https://pubmed.ncbi.nlm.nih.gov/37487962/'),
(4, 'SAW PALMATTO', 'Serenoa repens', 'Arecaceae', 'humid, subtropical to warm-temperate climate', 'CCC(CCC(C)C1CCC2C1(CCC3C2CC=C4C3(CCC(C4)O)C)C)C(C)C', '84604-15-9', 'Human keratinocyte cells, C57BL/6 mice', 'phytosterols (βsitosterol), fattyacids,ßcarotene,and polysaccharides', 'sawpalmatto.png', 'Reesha Baig et al. Ijppr.Human, 2020; Vol. 20 (1): 171-189', 'https://ijppr.humanjournals.com/wp-content/uploads/2021/01/13.Reesha-Baig-Priyanka-Goswami-Mohammad-Wais-Gaurang-Sawant-Shifa-Haju.pdf'),
(5, 'PUMPKIN SEED OIL', 'Cucurbita pepo', 'Cucurbitaceae', 'warm,sunny climate', 'CCC(CCC(C)C1CCC2C1(CCC3C2CCC4C3(CCC(C4)O)C)C)C(C)C.CCC(CCC(C)C1CCC2C1(CCC3C2=CCC4C3(CCC(C4C)O)C)C)C(C)C.CC(C)C(C)CCC(C)C1CCC2C1(CCC3C2CC=C4C3(CCC(C4)O)C)C', '8016-49-7', 'Dermal papilla and keratinoCytes', 'unsaturated fats,sterols or phytoestrogens and tocopherols', 'pumpkin.png', 'Reesha Baig et al. Ijppr.Human, 2020; Vol. 20 (1): 171-189', 'https://ijppr.humanjournals.com/wp-content/uploads/2021/01/13.Reesha-Baig-Priyanka-Goswami-Mohammad-Wais-Gaurang-Sawant-Shifa-Haju.pdf'),
(6, 'ROSEMARY OIL', 'Rosmarinus officinalis L.', 'Lamiaceae', 'warm and moderately dry climate', 'CC(C)C1=C(C(=C2C(=C1)C3CC4C2(CCCC4(C)C)C(=O)O3)O)O', '8000-25-7', 'Oleuropein', 'rosmarinic acid, caffeic acid, chlorogenic acid, carnosic acid,rosmanol, carnosol, ursolic acid, glycolic acid, and rosmaricine', 'rosemary.png', 'Reesha Baig et al. Ijppr.Human, 2020; Vol. 20 (1): 171-189. ', 'https://ijppr.humanjournals.com/wp-content/uploads/2021/01/13.Reesha-Baig-Priyanka-Goswami-Mohammad-Wais-Gaurang-Sawant-Shifa-Haju.pdf'),
(7, 'CAPSICUM', 'Capsicum annum', 'Solanaceae', 'moderately low temperatures and dry season', 'CC1=C(C(CCC1)(C)C)C=CC(=CC=CC(=CCO)C)C', '8023-77-6', 'Human dermal papilla Cells', 'Carotenoids', 'capsicum.png', 'Harada, N., Okajima, K., Arai, M., Kurihara, H., & Nakagata, N. (2007). Administration of capsaicin and isoflavone promotes hair growth by increasing insulin-like growth factor-I production in mice and in humans with alopecia. Growth hormone & IGF research : official journal of the Growth Hormone Research Society and the International IGF Research Society, 17(5), 408–415. https://doi.org/10.1016/j.ghir.2007.04.009', 'https://pubmed.ncbi.nlm.nih.gov/17569567/'),
(8, 'COFFEE', 'Camelia sinesis', 'Rubiaceae', 'semi-tropical climate', '[O-]P(=O)([O-])F.[Na+].[Na+]', '84650-00-0', 'Culturedhair follicles Human hair-follicle-derived outer root sheath keratinocytes (ORSKs)', 'xanthine alkaloids', 'coffee.png', 'Reesha Baig et al. Ijppr.Human, 2020; Vol. 20 (1): 171-189. ', 'https://ijppr.humanjournals.com/wp-content/uploads/2021/01/13.Reesha-Baig-Priyanka-Goswami-Mohammad-Wais-Gaurang-Sawant-Shifa-Haju.pdf'),
(9, 'LIQUORICE', 'Glycyrrhiza glabra\r\n', 'Fabaceae/ Leguminosa', 'dry cold temperature', 'NA', '68916-91-6', 'Dermal papilla cells', 'campesterol,glycyrrhizin,cholesterol, palmitic acid, linoleic acid, oleic acid, βsitosterol, stigmasterol, trigonellin, brassicasterol', 'liquorice.png', 'Reesha Baig et al. Ijppr.Human, 2020; Vol. 20 (1): 171-189. ', 'https://ijppr.humanjournals.com/wp-content/uploads/2021/01/13.Reesha-Baig-Priyanka-Goswami-Mohammad-Wais-Gaurang-Sawant-Shifa-Haju.pdf'),
(10, 'COCONUT OIL', 'Cocos nucifera', 'Arecaceae (palm family)', 'hot climate', 'CN1CCC23C4C1CC5=C2C(=C(C=C5C(=O)O)OC)OC3C(C=C4)O', '8001-31-8', 'Human keratinocyte cells /sunflower oil', 'myristic acid,capric acid, lauric acid and monolaurin', 'coconut.png', 'Rele, A. S., & Mohile, R. B. (2003). Effect of mineral oil, sunflower oil, and coconut oil on prevention of hair damage. Journal of cosmetic science, 54(2), 175–192.', 'https://pubmed.ncbi.nlm.nih.gov/12715094/'),
(11, 'GARLIC GEL', 'Allium sativum', 'Amaryllidaceae', 'hot climate', 'C=CC[S@](=O)C[C@@H](C(=O)O)N', '8008-99-9', 'Randomized study', 'Alliinase,arginine,flavonoids,selenium', 'garlic.png', 'Mysore, V., & Arghya, A. (2022). Hair Oils: Indigenous Knowledge Revisited. International journal of trichology, 14(3), 84–90. https://doi.org/10.4103/ijt.ijt_189_20', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC9231528/'),
(12, 'TEA TREE OIL', 'Melaleuca alternifolia', 'Myrtaceae', 'tropical and subtropical climates', 'C1=CC=[N+](C(=C1)[S-])[O-].C1=CC=[N+](C(=C1)[S-])[O-].[Zn+2]', '68647-73-4', 'Double blind randomized study', 'terpinen-4-ol,γ-terpinene,8-cineole, α-terpinene, α-terpineol,p-cymene and α-pinene', 'teatree.png', 'Ezekwe, N., King, M., & Hollinger, J. C. (2020). The Use of Natural Ingredients in the Treatment of Alopecias with an Emphasis on Central Centrifugal Cicatricial Alopecia: A Systematic Review. The Journal of clinical and aesthetic dermatology, 13(8), 23–27.', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC7595365/'),
(13, 'SIBERIAN CRANE\'S-BILL', 'Geranium sibiricum', 'Geraniaceae', 'average to moist conditions', 'NA', 'NA', 'Human dermal papilla Cells', 'Human dermal papilla Cells', 'siberia.png', 'Ezekwe, N., King, M., & Hollinger, J. C. (2020). The Use of Natural Ingredients in the Treatment of Alopecias with an Emphasis on Central Centrifugal Cicatricial Alopecia: A Systematic Review. The Journal of clinical and aesthetic dermatology, 13(8), 23–27.', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC7595365/'),
(14, 'SAFFLOWER', 'Carthamus tinctorius', 'Asteraceae', 'highmoist climate', '', '8001-23-8', 'Dermal papilla and keratinoCytes', 'Hydroxysafflor yellow A', 'safflower.png', 'Park, S., & Lee, J. (2021). Modulation of Hair Growth Promoting Effect by Natural Products. Pharmaceutics, 13(12), 2163. https://doi.org/10.3390/pharmaceutics13122163', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC8706577/'),
(15, 'OLIVE', 'Olea europaea', 'Oleaceae', 'Mediterranean-like climate', 'C1=CC=C(C=C1)C(=O)NC2=C3C(=C4C(=C2)C5=CC(=C6C(=C5N4)C(=O)C7=CC=CC=C7C6=O)NC(=O)C8=CC=CC=C8)C(=O)C9=CC=CC=C9C3=O', '8001-25-0', 'Oleuropein promoted cultured human follicle dermal papilla cell proliferation and induced LEF1 and Cyc-D1 mRNA expression and β-catenin protein expression in dermal papilla cells', 'Oleuropein', 'olive.png', 'Tong, T., Kim, N., & Park, T. (2015). Topical Application of Oleuropein Induces Anagen Hair Growth in Telogen Mouse Skin. PloS one, 10(6), e0129578. https://doi.org/10.1371/journal.pone.0129578', 'https://pubmed.ncbi.nlm.nih.gov/26060936/'),
(16, 'SOFT SOPHORA', 'Sophora flavescens Aiton', 'Fabaceae', 'moderately low temperatures and dry season', 'C1[C@@H]2[C@H](C3=C(O1)C=C(C=C3)O)OC4=CC5=C(C=C24)OCO5', '16837-52-8', 'Human dermal papilla Cells', 'L-maackiain medicarpin', 'sophora.png', 'The hair growth promoting effect of Sophora flavescens extract and its molecular regulation\r\nRoh, Seok-Seon et al.\r\nJournal of Dermatological Science, Volume 30, Issue 1, 43 - 49', 'https://www.jdsjournal.com/article/S0923-1811(02)00060-9/abstract'),
(17, 'BARLEY', 'Hordeum vulgare', 'Poaceae', 'subtropical climatic condition', 'C/C=C(C)/C(=O)OC1CCC2(C3C1(OC24CC5(C6CN7CC(CCC7C(C6(C(CC5(C4CC3)O)O)O)(C)O)C)O)O)C', '85251-64-5', 'C57BL/6 mice', 'Procyanidin B-3', 'barley.png', 'The hair growth promoting effect of Sophora flavescens extract and its molecular regulation\r\nRoh, Seok-Seon et al.\r\nJournal of Dermatological Science, Volume 30, Issue 1, 43 - 49', 'https://www.jdsjournal.com/article/S0923-1811(02)00060-9/abstract'),
(18, 'SHIKAKAI', 'Acacia concinna', 'Mimosaceae', 'Hot dry climates of Central Asia and the Far East', 'CCC(C=CC(C)C1CCC2C1(CCC3C2=CCC4C3(CCC(C4)O)C)C)C(C)C', '202148-87-6', 'Human dermal papilla Cells', 'Lupeol spinasterol acacic acid lactone and the natural sugars glucose arabinose and rhamnose. It also contains hexacosanol spinasterone oxalic acid tartaric acid citric acid succinic acid ascorbic acid and the alkaloids calyctomine and nicotine', 'shikakai.png', '[Amit Madan, Abhishek Arun, Sudeep Verma (2014); A Non comparative Open label Pilot study to see the Efficacy and Consumer Response of Vegetal Hair Well in preventing hair fall and promoting hair growth Int. J. of Adv. Res. 2 (Feb). 0] (ISSN 2320-5407). www.journalijar.com', 'https://www.journalijar.com/article/959/a-non-comparative-open-label-pilot-study-to-see-the-efficacy-and-consumer-response-of-vegetal-hair-well-in-preventing-hair-fall-and-promoting-hair-growth/'),
(19, 'PADDLE WEED', 'Ecklonia cava', 'Hydrocharitaceae', 'Halophytes', 'CC=C(C)C(=O)OC1C(C2(C(CC1(C)C)C3=CCC4C5(CCC(C(C5CCC4(C3(CC2O)C)C)(C)CO)OC6C(C(C(C(O6)C(=O)O)OC7C(C(C(C(O7)CO)O)O)O)O)OC8C(C(C(C(O8)CO)O)O)O)C)CO)OC(=O)C', 'NA', 'Cultured rat vibrissa folliclesSprague-Dawley rats C57BL/6 miceRat vibrissa immortalized dermal papilla cell NIH3T3 cells', 'Phlorotannins, such as fucodiphlorethol G, 7-phloro eckol, 6,6-bieckol, eckol, 8,8-bieckol, 8,4-dieckol and phlorofucofuroeckol A, DPC proliferation and/or 5α-reductase activity inhibition in rat vibrissa', 'paddleweed.png', 'Shin, H., Cho, A.-R., Kim, D. Y., Munkhbayer, S., Choi, S.-J., Jang, S., Kim, S. H., Shin, H.-C., & Kwon, O. (2016). Enhancement of Human Hair Growth Using Ecklonia cava Polyphenols. Annals of Dermatology, 28(1), 15-21. https://doi.org/10.5021/ad.2016.28.1.15', 'https://snucm.elsevierpure.com/en/publications/enhancement-of-human-hair-growth-using-ecklonia-cava-polyphenols'),
(20, 'REETHA', 'Sapindus mukoross', 'Sapindaceae', 'warm cold climate', 'CC=C(C)C(=O)OC1C(C2(C(CC1(C)C)C3=CCC4C5(CCC(C(C5CCC4(C3(CC2O)C)C)(C)CO)OC6C(C(C(C(O6)C(=O)O)OC7C(C(C(C(O7)CO)O)O)O)O)OC8C(C(C(C(O8)CO)O)O)O)C)CO)OC(=O)C', '223748-41-2', 'Human dermal papilla Cells', 'saponins sugars and mucilage', 'reetha.png', 'Suhagia, B. N., Rathod, I. S., & Sindhu, S. (2011). Sapindus mukorossi (areetha): An overview. International Journal of Pharmaceutical Sciences and Research, 2(8), 1905-1913. http://dx.doi.org/10.13040/IJPSR.0975-8232.2(8).1905-13', 'https://www.researchgate.net/publication/267698560_Sapindus_mukorossi_areetha_An_overview'),
(21, 'TUBER FLEECEFLOWER', 'Polygonum multiflorum', 'Polygonaceae', 'Cold Climate', 'C1=CC=C2C(=C1)C(=O)C3=CC=CC=C3C2=O', 'NA', 'Human dermal papilla Cells,C57BL/6J mice were used', 'Athraquinones including chrysophanol emodin and rhein', 'tuber.png\r\n', 'Shin, J. Y., Choi, Y. H., Kim, J., Park, S. Y., Nam, Y. J., Lee, S. Y., Jeon, J. H., Jin, M. H., & Lee, S. (2020). Polygonum multiflorum extract support hair growth by elongating anagen phase and abrogating the effect of androgen in cultured human dermal papilla cells. BMC complementary medicine and therapies, 20(1), 144. https://doi.org/10.1186/s12906-020-02940-5', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC7218528/'),
(22, 'FLAXSEED OIL', 'Linum usitatissimum', 'Linaceae', 'cool humid climate', 'C1=C(C(=CC(=C1Cl)Cl)Cl)O', '8001-26-1', 'prostatic epithelial proliferation in a rat model of benign prostatic hyperplasia', 'phytochemicals like phenols flavonoids and lignins', 'flaxseed.png', 'A Research Perspective on Flaxseed Oil for Hair Loss [BLOG]', 'https://ugro.com/a-research-perspective-on-flaxseed-oil-for-hair-loss/amp/'),
(23, 'CURRY TREE', 'Murraya koenigii', 'Rutaceae', 'Humid subtropical climate', 'C1=CC=C2C(=C1)C3=CC=CC=C3N2', '8006-78-8', 'activity of berry extracts of M. koenigii by DPPH free radical scavenging activity and reducing power assays', 'Different carbazole alkaloids and other important metabolites like terpenoids flavonoids phenolics carbohydrates carotenoids vitamins and nicotinic acid from different parts of the M. koenigii plant.Mahanine Mahanimbine', 'curry.png', 'Balakrishnan, R., Vijayraja, D., Jo, S. H., Ganesan, P., Su-Kim, I., & Choi, D. K. (2020). Medicinal Profile, Phytochemistry, and Pharmacological Activities of Murraya koenigii and its Primary Bioactive Compounds. Antioxidants (Basel, Switzerland), 9(2), 101. https://doi.org/10.3390/antiox9020101', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC7070712/'),
(24, 'HORSERADISH OR DRUMSTICK TREE', 'Moringa oleifera', 'Moringaceae', 'Tropics and subtropics', 'NA', 'clinical study of 15 patients with urinary tract infection Maurya and Singh observed that 66.67% of patients were completely cured of their symptoms after a three-week treatment with M. oleifera bark extract while 13.33% reported moderate relief from their symptoms 13.33% of patients had no symptom change and 6.67%', 'clinical study of 15 patients with urinary tract infection Maurya and Singh observed that 66.67% of patients were completely cured of their symptoms after a three-week treatment with M. oleifera bark extract while 13.33% reported moderate relief from their symptoms 13.33% of patients had no symptom change and 6.67%', 'phytochemicals such as flavonoids or isothiocyanates', 'horseradis.png', 'Kou, X., Li, B., Olayanju, J. B., Drake, J. M., & Chen, N. (2018). Nutraceutical or Pharmacological Potential of Moringa oleifera Lam. Nutrients, 10(3), 343. https://doi.org/10.3390/nu10030343', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC5872761/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marketed_drugs`
--
ALTER TABLE `marketed_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `molecules`
--
ALTER TABLE `molecules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `natural_products`
--
ALTER TABLE `natural_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marketed_drugs`
--
ALTER TABLE `marketed_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `molecules`
--
ALTER TABLE `molecules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `natural_products`
--
ALTER TABLE `natural_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
