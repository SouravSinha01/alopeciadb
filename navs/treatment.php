<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Treatment Options</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background: #f9f9f9;
    }
    .container {
      width: 80%;
      margin: auto;
      padding: 20px;
    }
    h1 {
      text-align: center;
      color: #4da1fc;
    }
    .treatment-card {
      border: 1px solid #ddd;
      border-radius: 8px;
      margin: 20px 0;
      overflow: hidden;
      background: #fff;
      text-align: center;
    }
    .treatment-card img {
      width: 100%; /* Ensures the image stretches across the card width */
      max-height: 300px; /* Sets a fixed height for the images */
      object-fit: cover; 
    }

    .treatment-card h3 {
      color: #333;
      padding: 10px 0;
    }
    .treatment-card p {
      padding: 10px;
      color: #666;
    }
    .treatment-card button {
      background: #4da1fc;
      color: white;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      border-radius: 4px;
      margin-bottom: 10px;
    }
    .details {
      display: none;
      padding: 10px;
      background: #eef;
    }
    .details p {
      margin: 0;
    }
    @media (max-width: 768px) {
  .treatment-card img {
    max-height: 150px; /* Reduce image height for smaller screens */
  }
}

  </style>
</head>
<body>

<div class="container">
  <h1>Treatment Options</h1>

  <!-- Treatment Card -->
  <div class="treatment-card">
    <img src="../../alopecia/navs/treatment/treat5.jpg" alt="Minoxidil">
    <h3>Medications</h3>
    <p>Minoxidil,Finasteride..</p>
    <button onclick="toggleDetails(this)">Read More</button>
    <div class="details">
      <p> <b>Minoxidil</b> is available as a 2% or 5% topical solution or foam. Applied directly to the scalp, it increases blood flow to hair follicles and prolongs the growth phase of the hair cycle. Minoxidil is effective for both men and women, showing significant results in reducing hair loss and promoting regrowth.<b>Finasteride</b> is an oral tablet (1 mg daily) that blocks Type II 5-alpha-reductase, reducing dihydrotestosterone (DHT) levels. It is highly effective in men for preventing further hair loss and stimulating regrowth, though its use in women is less common due to safety concerns.<b>Dutasteride</b> is another oral option that inhibits both Type I and Type II 5-alpha-reductase enzymes. It is more potent than finasteride and has shown superior effectiveness in clinical studies, although it is not FDA-approved for AGA.
          <b>Spironolactone</b>, primarily used in women, is an oral anti-androgen that blocks testosterone and DHT receptors. It is effective in reducing hair loss and improving hair density in female patients.<b>Topical Anti-Androgens</b>, such as topical finasteride, are emerging as effective treatments for localized application with fewer systemic side effects.</p>
    </div>
  </div>

  <div class="treatment-card">
    <img src="../../alopecia/navs/treatment/treat2.jpg" alt="Minoxidil">
    <h3>Hair Transplant</h3>
    <p>Hair transplant : Follicular unit transplantation (FUT) and follicular unit extraction (FUE) techniques</p>
    <button onclick="toggleDetails(this)">Read More</button>
    <div class="details">
      <p>Hair transplants are a common surgical solution for hair loss, particularly in cases of androgenic alopecia. The procedure involves moving hair follicles from areas of the scalp with sufficient hair, known as the donor area, to areas where hair is thinning or absent, called the recipient area.There are two primary techniques used in hair transplants. The first is <b>follicular unit transplantation (FUT)</b>, which involves removing a strip of skin from the donor area. Individual follicular units are then extracted from this strip and implanted into the recipient area. Although this method can leave a linear scar in the donor area, it allows for the harvesting of a large number of grafts.The second technique is <b>follicular unit extraction (FUE)</b>, where follicular units are removed individually using a micro-punch tool. This approach is minimally invasive and leaves less visible scarring compared to FUT. It is more time-consuming but has gained popularity for its natural-looking results.Hair transplant surgery requires significant expertise to ensure proper placement, density, and alignment of the transplanted follicles, creating a natural and aesthetically pleasing appearance.</p>
    </div>
  </div>

  <div class="treatment-card">
    <img src="../../alopecia/navs/treatment/treat3.jpg" alt="Minoxidil">
    <h3>Laser Therapy</h3>
    <p>Low-level laser therapy (LLLT)</p>
    <button onclick="toggleDetails(this)">Read More</button>
    <div class="details">
      <p><b>Low-level laser therapy</b> (LLLT) is a non-invasive treatment designed to stimulate hair follicles and promote hair growth. It uses red or near-infrared light at specific wavelengths to improve blood flow and cellular activity in the scalp. This enhanced stimulation may encourage dormant hair follicles to become active, potentially leading to increased hair density and reduced hair loss. LLLT is often used as a complementary treatment for conditions like androgenic alopecia.</p>
    </div>
  </div>
  <div class="treatment-card">
    <img src="../../alopecia/navs/treatment/treat6.jpg" alt="Minoxidil">
    <h3>Topical Treatments</h3>
    <p>Have ingridients ketoconazole..</p>
    <button onclick="toggleDetails(this)">Read More</button>
    <div class="details">
      <p>Various topical treatments, including shampoos and foams, are formulated with active ingredients like minoxidil, ketoconazole, or biotin to support hair health. These treatments aim to strengthen hair, reduce shedding, and stimulate growth by nourishing the scalp and improving follicle function. They are commonly used for managing conditions like androgenic alopecia and general hair thinning..</p>
    </div>
  </div>
  <div class="treatment-card">
    <img src="../../alopecia/navs/treatment/treat7.png" alt="Minoxidil">
    <h3>Lifestyle changes</h3>
    <p>Regular Exercise, Meditation, and healthy diet</p>
    <button onclick="toggleDetails(this)">Read More</button>
    <div class="details">
      <p>A healthy lifestyle, including a balanced diet rich in essential nutrients and effective stress management, supports overall hair health. Proper nutrition strengthens hair follicles, while reducing stress can minimize hair loss caused by hormonal imbalances.</p>
    </div>
  </div>

  <!-- Add More Treatment Cards -->
</div>

<script>
  function toggleDetails(button) {
    const details = button.nextElementSibling;
    if (details.style.display === "none" || !details.style.display) {
      details.style.display = "block";
      button.textContent = "Read Less";
    } else {
      details.style.display = "none";
      button.textContent = "Read More";
    }
  }
</script>

</body>
</html>
