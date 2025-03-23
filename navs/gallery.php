<?php
// navs/gallery.php
?>
<div class="gallery-container">
    <h2>Gallery</h2>
    <div class="gallery-section">
        <h3>Marketed drugs</h3>
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="../alopecia/navs/market/minoxidil.jpg" alt="Natural Product 1">
                <p>Minoxidil</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/market/finasteride.jpg" alt="Natural Product 1">
            <p>Finasteride</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/market/dutasteride.jpg" alt="Natural Product 1">
            <p>Dutasteride</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/market/latanoprost.jpg" alt="Natural Product 1">
            <p>latanoprost</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/market/flutamide.jpg" alt="Natural Product 1">
            <p>Flutamide</p>
            </div>
            <!-- Add more items as needed -->
        </div>
    </div>
    <div class="gallery-section">
        <h3>Natural Candidates</h3>
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="../alopecia/navs/natural/aloevera.png" alt="Market Drug 1">
                <p>Aloevera</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/natural/amla.png" alt="Market Drug 1">
            <p>Amla</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/natural/aswagandha.png" alt="Market Drug 1">
                <p>Aswagandha</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/natural/olive.png" alt="Market Drug 1">
                <p>Olive</p>
            </div>
            <div class="gallery-item">
            <img src="../alopecia/navs/natural/coconut.png" alt="Market Drug 1">
                <p>Coconut</p>
            </div>
            <!-- Add more items as needed -->
        </div>
    </div>
</div>

<style>
    .gallery-container {
        padding: 20px;
        font-family: Arial, sans-serif;
    }

    .gallery-section {
        margin-bottom: 40px;
    }

    .gallery-section h3 {
        margin-bottom: 20px;
        font-size: 24px;
        color: #333;
        border-bottom: 2px solid #ccc;
        display: inline-block;
        padding-bottom: 5px;
    }

    .gallery-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 20px;
    }

    .gallery-item {
        text-align: center;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
        background-color: #fff;
        padding: 10px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .gallery-item:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .gallery-item img {
        width: 100%;
        height: auto;
        border-radius: 8px;
    }

    .gallery-item p {
        margin-top: 10px;
        font-size: 16px;
        font-weight: bold;
        color: #555;
    }
</style>
