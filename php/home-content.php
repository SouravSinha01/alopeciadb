<?php
// home-content.php
?>

<div class="landing-page">
    <!-- Intro Section -->
    <section class="intro">
        <h1>Welcome to the AlopeciaDB</h1>
        <p>Discover the science behind androgenic alopecia and explore molecules that pave the way for better treatments.</p>
    </section>

    <div class="main-content">
        <!-- Image Slider -->
        <div class="image-slider">
            <div class="slides">
                <img src="../alopecia/assets/images/image1.jpg" alt="Understanding Alopecia" class="active">
                <img src="../alopecia/assets/images/image4.jpg" alt="Molecules for Alopecia">
                <img src="../alopecia/assets/images/image5.jpg" alt="Marketed Drugs">
                <img src="../alopecia/assets/images/image6.jpg" alt="Marketed Drugs">
            </div>
            <div class="slider-controls">
                <button class="prev">&#10094;</button>
                <button class="next">&#10095;</button>
            </div>
        </div>

        <!-- Highlight and Get Started Sections -->
        <div class="side-content">
            <section class="highlight">
                <h2>Our Database</h2>
                <p>Search through a collection of natural and synthetic compounds tailored for alopecia treatment and prevention.</p>
            </section>

            <section class="get-started">
                <h2>Get Started</h2>
                <p>
                    <a href="javascript:void(0);" data-page="natural" onclick="loadPageContent('navs/market_drugs.php')">Explore the database</a> or 
                    <a href="javascript:void(0);" data-page="history" onclick="loadPageContent('navs/history.php')">Learn about alopecia</a>
                </p>
            </section>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
    const slides = document.querySelectorAll('.slides img');
    
    // Ensure there are slides available
    if (slides.length === 0) {
        console.error('No slides found!');
        return;
    }

    let currentSlide = 0;

    // Function to change slides manually
    function changeSlide(direction) {
        slides[currentSlide].classList.remove('active');
        currentSlide = (currentSlide + direction + slides.length) % slides.length;
        slides[currentSlide].classList.add('active');
    }

    // Function to automatically change slides
    function autoSlide() {
        slides[currentSlide].classList.remove('active');
        currentSlide = (currentSlide + 1) % slides.length;
        slides[currentSlide].classList.add('active');
    }

    // Start automatic slider
    setInterval(autoSlide, 5000); // Change slide every 3 seconds

    // Initialize the first slide
    slides[currentSlide].classList.add('active');

    // Attach event listeners to the buttons
    const prevButton = document.querySelector('.prev');
    const nextButton = document.querySelector('.next');

    if (prevButton && nextButton) {
        prevButton.addEventListener('click', () => changeSlide(-1));
        nextButton.addEventListener('click', () => changeSlide(1));
    }
});
</script>

<style>
.landing-page {
    font-family: Arial, sans-serif;
    color: #333;
    padding: 20px;
}

.intro {
    text-align: center;
    margin-bottom: 20px;
}

.main-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 20px;
}

.image-slider {
    width: 60%;
    position: relative;
    overflow: hidden;
    border: 2px solid #ddd; /* Adding a border around the sliding box */
    border-radius: 5px; /* Rounded corners for the sliding box */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for better emphasis */
}

.slides img {
    width: 100%;
    display: none;
    opacity: 0;
    transition: transform 1s ease-in-out; /* Smooth transition effect */
}

.slides img.active {
    display: block;
    opacity: 1; /* Fade in the active image */
}

.slider-controls {
    position: absolute;
    top: 50%;
    width: 100%;
    display: flex;
    justify-content: space-between;
    transform: translateY(-50%);
}

.slider-controls button {
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    font-size: 20px;
}

.side-content {
    width: 35%;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.highlight, .get-started {
    background-color: #f9f9f9;
    padding: 15px;
    border: 2px solid #ddd; /* Adding a border */
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Adding a subtle shadow */
}

.highlight:hover, .get-started:hover {
    border-color: #007BFF; /* Highlight border on hover */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
}

a {
    color: #007BFF;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

</style>
