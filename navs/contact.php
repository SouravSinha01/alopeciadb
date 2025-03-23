<?php
// navs/contact.php
?>
<div class="contact-container">
    <h2>Thank you <a href= "https://cusb.irins.org/profile/109104"><u>Prof.RS Rathore sir</u></a> for Guiding through the Project</h2>
    <h2>Contact Us</h2>
    <div class="contact-details">
        <p><strong>Name:</strong> Sourav Sinha</p>
        <p><strong>Email:</strong> <a href="mailto:sinhasourav391@gmail.com">sinhasourav391@gmail.com</a></p>
        <p><strong>Phone:</strong> 9089776171</p>
        <p><strong>Address:</strong> Central University of South Bihar</p>
    </div>
    <div class="contact-form">
        <h3>Send a Message</h3>
        <form action="process_contact.php" method="POST">
            <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" placeholder="Write your message here" required></textarea>
            </div>
            <button type="submit" class="contact-submit">Send</button>
        </form>
    </div>
</div>

<style>
    .contact-container {
        padding: 20px;
        font-family: Arial, sans-serif;
        line-height: 1.6;
    }

    .contact-details {
        margin-bottom: 40px;
    }

    .contact-details p {
        margin: 10px 0;
    }

    .contact-details a {
        color: #007bff;
        text-decoration: none;
    }

    .contact-details a:hover {
        text-decoration: underline;
    }

    .contact-form {
        background: #f9f9f9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .contact-form h3 {
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    .contact-submit {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .contact-submit:hover {
        background-color: #0056b3;
    }
</style>
