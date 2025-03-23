// Function to load navigation and content
function loadPageContent(page) {
    console.log("Loading content from:", page);
    const xhr = new XMLHttpRequest();
    xhr.open('GET', page, true); // Use the passed-in relative page path
    xhr.onload = function () {
        if (xhr.status === 200) {
            // Inject the loaded content into the main content area
            document.getElementById('content').innerHTML = xhr.responseText;

            // Reinitialize interactive features after loading content
            initializeAccordion();
            initializeCardToggles();
            
           // loadMore();
        } else {
            console.error("Failed to load page content:", xhr.status);
        }
    };
    xhr.send();
}

// Function to initialize the accordion
function initializeAccordion() {
    const boxHeaders = document.querySelectorAll('.box-header');

    boxHeaders.forEach((header, index) => {
        header.addEventListener('click', function () {
            toggleBox(index); // Call the toggleBox function for this header
        });
    });
}

// Function to toggle accordion box content
function toggleBox(index) {
    const boxes = document.querySelectorAll('.box');
    const box = boxes[index];
    const content = box.querySelector('.box-content');
    const isVisible = content.style.display === 'block';

    // Close all boxes first
    boxes.forEach((box) => box.classList.remove('active'));

    // Toggle visibility for the clicked box
    if (isVisible) {
        box.classList.remove('active');
    } else {
        box.classList.add('active');
    }
}

// Function to initialize card toggles (specific to treatment cards)
function initializeCardToggles() {
    const buttons = document.querySelectorAll('.treatment-card button');

    buttons.forEach((button) => {
        button.addEventListener('click', function () {
            const details = this.nextElementSibling;

            // Toggle visibility of the details section
            if (details.style.display === 'block') {
                details.style.display = 'none';
            } else {
                details.style.display = 'block';
            }
        });
    });
}



// function loadMore() {
//     if (typeof currentPage === 'undefined' || typeof totalPages === 'undefined') {
//         console.error("Pagination variables are not defined. Ensure they are included in the dynamically loaded content.");
//         return;
//     }

//     currentPage++;
//     fetch(`alopecia.php?page=${currentPage}&query=${query}`)
//         .then(response => response.text())
//         .then(html => {
//             const parser = new DOMParser();
//             const doc = parser.parseFromString(html, 'text/html');
//             const newCards = doc.querySelector('.molecule-cards');

//             if (newCards) {
//                 document.querySelector('.molecule-cards').insertAdjacentHTML('beforeend', newCards.innerHTML);

//                 // Disable the button if we've reached the last page
//                 if (currentPage >= totalPages) {
//                     const loadMoreButton = document.querySelector('.load-more-btn');
//                     if (loadMoreButton) {
//                         loadMoreButton.disabled = true;
//                         loadMoreButton.innerText = 'No more results';
//                     }
//                 }
//             } else {
//                 console.warn("No new cards found in the response. Check the response structure.");
//             }
//         })
//         .catch(error => console.error('Error fetching more records:', error));
// }



// Initialize the scripts on page load
document.addEventListener('DOMContentLoaded', function () {
    initializeAccordion(); // Initialize accordion for initial load
    initializeCardToggles(); // Initialize card toggles for treatment cards
    
    //loadMore();
});
