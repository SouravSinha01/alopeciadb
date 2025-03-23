// Function to load the homepage content
function loadHomePage() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'php/home-content.php', true); // Assuming 'home-content.php' contains the homepage content
    xhr.onload = function () {
        if (xhr.status === 200) {
            document.getElementById('content').innerHTML = xhr.responseText;
            initializeSlider();
        }
    };
    xhr.send();
}

function initializeSlider() {
    const slides = document.querySelectorAll('.slides img');
    
    if (slides.length === 0) {
        console.error('No slides found!');
        return;
    }

    let currentSlide = 0;

    function changeSlide(direction) {
        slides[currentSlide].classList.remove('active');
        currentSlide = (currentSlide + direction + slides.length) % slides.length;
        slides[currentSlide].classList.add('active');
    }

    function autoSlide() {
        slides[currentSlide].classList.remove('active');
        currentSlide = (currentSlide + 1) % slides.length;
        slides[currentSlide].classList.add('active');
    }

    setInterval(autoSlide, 5000);

    slides[currentSlide].classList.add('active');

    const prevButton = document.querySelector('.prev');
    const nextButton = document.querySelector('.next');

    if (prevButton && nextButton) {
        prevButton.addEventListener('click', () => changeSlide(-1));
        nextButton.addEventListener('click', () => changeSlide(1));
    }
}


// Show examples dropdown and fetch them dynamically
function fetchExamples() {
    const searchQuery = document.getElementById("search-query").value.trim();

    if (searchQuery.length === 0) {
        hideExamples(); // Hide if search query is empty
        return;
    }

    const examplesBox = document.getElementById("examples-box");
    const examplesList = document.getElementById("examples-list");

    // Show the dropdown
    examplesBox.classList.remove("hidden");
    examplesBox.classList.add("visible");

    // Make an AJAX call to fetch examples matching the search query
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `php/fetch_examples.php?q=${encodeURIComponent(searchQuery)}`, true);
    xhr.onload = function () {
        if (xhr.status === 200) {
            const examples = JSON.parse(xhr.responseText);

            // Clear existing examples
            examplesList.innerHTML = '';

            if (examples.length > 0) {
                // Populate examples
                examples.forEach(example => {
                    const listItem = document.createElement('li');
                    listItem.textContent = example;
                    listItem.classList.add("example-item");
                    listItem.onclick = () => selectExample(example);
                    examplesList.appendChild(listItem);
                });
            } else {
                // Handle no examples case
                const noExamplesItem = document.createElement('li');
                noExamplesItem.textContent = 'No examples found.';
                noExamplesItem.style.color = 'red';
                examplesList.appendChild(noExamplesItem);
            }
        }
    };
    xhr.send();
}




// Hide examples dropdown
function hideExamples() {
    setTimeout(() => {
        const examplesBox = document.getElementById("examples-box");
        examplesBox.classList.remove("visible");
        examplesBox.classList.add("hidden");
    }, 200); // Delay to allow clicking on examples
}

// Select an example and put it in the search bar
function selectExample(example) {
    const searchBar = document.getElementById("search-query");
    searchBar.value = example;
    hideExamples();

    // Trigger search automatically when an example is selected
    searchMolecule(example);
}

// Function to handle molecule search
function searchMolecule(query) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'php/search.php?q=' + encodeURIComponent(query), true);
    xhr.onload = function () {
        if (xhr.status === 200) {
            document.getElementById('content').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

// Attach event listener to the search bar for typing (to show examples)
document.getElementById('search-query').addEventListener('input', fetchExamples);

// Attach event listener to the search bar for focus (to show examples on focus)
document.getElementById('search-query').addEventListener('focus', fetchExamples);

// Attach event listener to the search bar for blur (to hide examples when focus is lost)
document.getElementById('search-query').addEventListener('blur', hideExamples);

// Attach event listener to the form for the search
document.getElementById('search-form').addEventListener('submit', function (e) {
    e.preventDefault();
    const query = document.getElementById('search-query').value.trim();
    searchMolecule(query); // Pass the query to the search function
});






// Function to load specific pages (used for pagination)

// Function to view molecule details
function viewMoleculeDetails(id) {
    fetch(`php/view_molecule.php?id=${encodeURIComponent(id)}`)
        .then(response => response.text())
        .then(html => {
            document.getElementById('content').innerHTML = html;
        })
        .catch(error => console.error('Error viewing molecule details:', error));
}

// Load page for pagination
// Function to load a specific page
function loadPage(page) {
    const searchQuery = document.getElementById('search-query').value.trim();
    const itemsPerPage = document.getElementById('items-per-page').value || 10;

    fetch(`php/search.php?q=${encodeURIComponent(searchQuery)}&page=${page}&itemsPerPage=${itemsPerPage}`)
        .then(response => response.text())
        .then(html => {
            document.getElementById('content').innerHTML = html;
        })
        .catch(error => console.error('Error loading page:', error));
}


// Handle items-per-page changes
document.getElementById('items-per-page').addEventListener('change', function () {
    loadPage(1); // Reload from the first page
});

function loadPageContent(page) {
    
    const xhr = new XMLHttpRequest();
    xhr.open('GET', page, true); // Use the passed-in relative page path
    xhr.onload = function() {
        if (xhr.status === 200) {
            // Inject the loaded content into the main content area
            document.getElementById('content').innerHTML = xhr.responseText;
        } else {
            console.error("Failed to load page content: " + xhr.status);
        }
    };
    xhr.send();
}








// Load the homepage when the page initially loads
window.onload = loadHomePage;
