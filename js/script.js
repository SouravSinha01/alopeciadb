

function loadHomePage() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'php/home-content.php', true);  // Assuming 'home-content.php' contains the homepage content
    xhr.onload = function() {
        if (xhr.status === 200) {
            // Replace the content in the main content area with the homepage content
            document.querySelector('.content').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}
window.onload = loadHomePage;





function toggleAdvancedSearch() {
    const popup = document.getElementById("advancedSearchPopup");
    popup.classList.toggle("open"); // Toggle the 'open' class to show or hide the popup
}

// Function to load the homepage content




function toggleSidebar() {
    const sidebar = document.getElementById("sidebar");
    const menuIcon = document.querySelector(".menu-icon");

    // Toggle the sidebar open/close
    sidebar.classList.toggle("open");

    // Adjust hamburger icon visibility
    if (sidebar.classList.contains("open")) {
        menuIcon.style.opacity = "0"; // Hide the hamburger icon
    } else {
        menuIcon.style.opacity = "1"; // Show the hamburger icon
    }
}

// Close the sidebar when clicking on any link in the sidebar
const sidebarLinks = document.querySelectorAll('.sidebar ul li a');
sidebarLinks.forEach(link => {
    link.addEventListener('click', () => {
        const sidebar = document.getElementById("sidebar");
        const menuIcon = document.querySelector(".menu-icon");

        // Close sidebar after clicking on a link
        sidebar.classList.remove("open");
        menuIcon.style.opacity = "1"; // Show the hamburger icon
    });
});

// Close sidebar if clicked outside of it
document.addEventListener('click', (event) => {
    const sidebar = document.getElementById("sidebar");
    const menuIcon = document.querySelector(".menu-icon");

    if (!sidebar.contains(event.target) && !menuIcon.contains(event.target)) {
        // Close the sidebar if the click is outside the sidebar and the menu icon
        sidebar.classList.remove("open");
        menuIcon.style.opacity = "1"; // Show the hamburger icon
    }
});

//For navigations






