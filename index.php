<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AlopeciaDB</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/search-results.css">
    <link rel="stylesheet" href="css/single_mol.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/home.css">



</head>
<body>
    <!-- Sidebar Section -->
    <div class="sidebar" id="sidebar">
        <h3>Menu</h3>
        <ul>
            <li><a href="javascript:void(0);" onclick="loadHomePage()">Home</a></li>
            <li><a href="javascript:void(0);" onclick="loadPageContent('navs/gallery.php')">Gallery</a></li>
            <li><a href="javascript:void(0);" onclick="loadPageContent('navs/contact.php')">Contact</a></li>

        </ul>
    </div>

    <!-- Menu Icon for Sidebar -->
    <div class="menu-icon" onclick="toggleSidebar()">
        &#9776; <!-- Unicode hamburger menu icon -->
    </div>

    <!-- Top Header Section -->
    <header class="top-header">
        <div class="header-container">
            <!-- Logo Section -->
            <a href="javascript:void(0);" onclick="loadHomePage()">
                <div class="logo-container">
                    <img src="final.png" alt="AlopeciaDB Logo" class="logo">
                    <h1 class="site-title">AlopeciaDB</h1>
                </div>
            </a>


            
            <!-- Search Bar Section -->
            <div class="search-container">
                <form id="search-form">
                    <input 
                        type="text" 
                        id="search-query" 
                        class="search-bar" 
                        placeholder="Search in database..." 
                        aria-label="Search in database"
                        onfocus="fetchExamples()" 
                        autocomplete="off"
                    >
                    <div id="examples-box" class="hidden">
                        <p class="examples-title"></p>
                        <ul id="examples-list"></ul>
                    </div>
                    <p class="example-text"> Example: Minoxidil, Finasteride</p>
                </form>
                <!-- <button class="advanced-search" onclick="toggleAdvancedSearch()">Advanced Search</button> -->

            </div>


        </div>
        
        <!-- Navigation/Link Section -->
        <div class="navigation">
            <a href="javascript:void(0);" data-page="history" onclick="loadPageContent('navs/history.php')">History</a>
            <a href="javascript:void(0);" data-page="effects" onclick="loadPageContent('navs/effects.html')">Effects</a>
            <a href="javascript:void(0);" data-page="treatment" onclick="loadPageContent('navs/treatment.php')">Treatment</a>
            <a href="javascript:void(0);" data-page="natural" onclick="loadPageContent('navs/natural.php')">Natural Products</a>
            <a href="javascript:void(0);" data-page="market" onclick="loadPageContent('navs/market_drugs.php')">Marketed Drugs</a>
            <a href="javascript:void(0);" data-page="prevention" onclick="loadPageContent('navs/prevention.php')">Prevention</a>
        </div>
    </header>

    <!-- Content Section Below Header -->
    <div id="content-container">
        <!-- Content will be loaded here -->
    </div>

    <div id="content"  >
    <!-- Search Results Section -->
        <div id="search-results-container">
            <!-- Header -->
            <div class="results-header">
                <h2>Search Results for <span id="search-query-display">[query]</span></h2>
            </div>

            <!-- Stats and Pagination Section -->
            <div class="stats-container">
                <!-- Stats Button -->
                <div class="stats-buttons">
                    <button id="total-molecules-btn">Total Molecules: <span id="molecule-count">0</span></button>
                </div>
                
                <!-- Items Per Page Dropdown -->
                <div class="items-per-page">
                    <label for="items-per-page">Items per page:</label>
                    <select id="items-per-page" onchange="loadPage(1)">
                        <option value="5">5</option>
                        <option value="10" selected>10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                    </select>
                </div>

                <!-- Pagination Controls -->
                <div class="pagination" id="pagination-controls">
                        <!-- Pagination Buttons -->
                    </div>
                </div>

            <!-- Molecule Cards Section -->
                 <div class="molecule-box-container">
                    <div class="molecule-box" id="molecule-box">
                    <!-- Molecule Cards will be dynamically loaded here -->
                </div>
            </div>
        </div>
    </div>



    
    <!-- Main Content Section -->
    <!-- <main class="content">
        <h2>About the Database</h2>
        <p>
            Welcome to AlopeciaDB, a curated database focused on androgenic alopecia. Our database includes 
            information on natural molecules, marketed drugs, and prevention techniques. Explore the data to 
            find solutions and scientific insights to combat alopecia effectively.
        </p>
    </main> -->

    <!-- Advanced Search Pop-up -->
    <!-- <div class="popup" id="advancedSearchPopup">
        <div class="popup-content">
            <h2>Advanced Search</h2>
            <ul>
                <li><a href="#structure-search">Structure Search</a></li>
                <li><a href="#id-search">ID Search</a></li>
            </ul>
            <button class="close-btn" onclick="toggleAdvancedSearch()">Close</button>
        </div>
    </div> -->


    

    <script src="js/script.js"></script>
    <script src="js/search.js"></script>
    <script src="js/navigation.js"></script>
</body>
</html>
