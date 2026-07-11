$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\contact.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('Contact Shri Balloon Decoration Indore | Book Now', 'Contact Balloon Decorator Indore | Book Now +91 76650 62706')
$c = $c.Replace('Contact Shri Balloon Decoration Indore. Call or WhatsApp +91 76650 62706 for birthday, anniversary, baby shower & all event decoration bookings.', 'Contact Shri Balloon Decoration Indore. Call or WhatsApp +91 76650 62706 for birthday, anniversary, baby shower & all event decoration. Serving Vijay Nagar, Palasia & all Indore areas.')

# OG & Twitter
$c = $c.Replace('Contact Shri Balloon Decoration Indore | Book Your Event', 'Contact Balloon Decorator Indore | Book Your Event Now')
$c = $c.Replace('Contact us for balloon decoration in Indore. Call or WhatsApp +91 76650 62706. Quick response guaranteed!', 'Contact Shri Balloon Decoration Indore. Call or WhatsApp +91 76650 62706 for all event decoration bookings. Serving Vijay Nagar, Palasia & all Indore areas!')

# BreadcrumbList schema improvement
$c = $c.Replace('{"@type":"ListItem","position":2,"name":"Contact Us","item":"https://www.shriballoondecoration.com/contact.html"}', '{"@type":"ListItem","position":2,"name":"Contact Balloon Decorator Indore","item":"https://www.shriballoondecoration.com/contact.html"}')

# Add LocalBusiness schema after breadcrumb schema
$oldBread = '</script>

<link rel="preconnect" href="https://fonts.googleapis.com"/>'
$newBread = '</script>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Shri Balloon Decoration Indore",
  "description": "Best balloon and event decoration service in Indore for birthdays, anniversaries, weddings, baby showers, corporate events and all occasions.",
  "url": "https://www.shriballoondecoration.com",
  "telephone": "+917665062706",
  "email": "shriballondecortiion@gmail.com",
  "image": "https://www.shriballoondecoration.com/image/banners/banner1.png",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Indore",
    "addressRegion": "Madhya Pradesh",
    "addressCountry": "IN"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "22.7196",
    "longitude": "75.8577"
  },
  "openingHours": "Mo-Su 00:00-23:59",
  "priceRange": "Rs.799 - Rs.25000",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+917665062706",
    "contactType": "customer service",
    "availableLanguage": ["Hindi","English"],
    "contactOption": "TollFree"
  },
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"],
  "sameAs": ["https://www.instagram.com/shriballondecor_indore"]
}
</script>

<link rel="preconnect" href="https://fonts.googleapis.com"/>'

$c = $c.Replace($oldBread, $newBread)

# H1 & subheading in contact header section
$c = $c.Replace('<div class="ch">
  <img src="image/banners.png" alt="Contact Banner">
</div>', '<div class="ch" style="margin-top:68px;background:linear-gradient(135deg,#1a1a2e 0%,#e91e8c 100%);padding:60px 5%;text-align:center">
  <h1 style="font-family:Playfair Display,serif;color:#fff;font-size:clamp(1.8rem,4vw,2.8rem);font-weight:700;margin-bottom:12px">Contact Balloon Decorator in Indore</h1>
  <p style="color:rgba(255,255,255,.85);font-size:1rem;max-width:600px;margin:0 auto">Call or WhatsApp +91 76650 62706 for birthday, anniversary, wedding & all event decoration bookings across Indore</p>
</div>')

# Contact info H2
$c = $c.Replace('<h2>Contact Information</h2>', '<h2>Contact Shri Balloon Decoration Indore</h2>')

# Contact form H2
$c = $c.Replace('<h2>Send us a Message</h2>', '<h2>Book Your Decoration in Indore</h2>')
$c = $c.Replace('<p class="subtext">Fill out the form below and we''ll get back to you within 30 minutes!</p>', '<p class="subtext">Fill out the form below and we will get back to you within 30 minutes for your Indore decoration booking!</p>')

# Map section H2
$c = $c.Replace('<h2>&#x1F4CD; Find Us on Map</h2>', '<h2>&#x1F4CD; Shri Balloon Decoration - Indore Location</h2>')

# Location text
$c = $c.Replace('<p>Indore, India<br>Serving 50+ cities across India</p>', '<p>Indore, Madhya Pradesh<br>Serving Vijay Nagar, Palasia, Nipania, Rajendra Nagar, Rau & all Indore areas</p>')

# Add SEO content section before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:50px 5%">
  <div style="max-width:900px;margin:0 auto">
    <div style="text-align:center;margin-bottom:28px">
      <span style="background:#e91e8c;color:#fff;padding:6px 18px;border-radius:20px;font-size:12px;font-weight:600;letter-spacing:1px">CONTACT US</span>
      <h2 style="font-family:Playfair Display,serif;font-size:clamp(1.4rem,3vw,2rem);font-weight:700;color:#1a1a2e;margin-top:12px">Balloon Decoration Service Areas in <span style="color:#e91e8c">Indore</span></h2>
      <div style="width:50px;height:3px;background:#e91e8c;margin:12px auto 0"></div>
    </div>
    <div style="font-size:.92rem;color:#444;line-height:1.9">
      <p>Shri Balloon Decoration is Indore's most trusted balloon and event decoration service. We provide <strong>Balloon Decoration in Indore</strong> for birthdays, anniversaries, baby showers, weddings, corporate events, festivals and all special occasions. Our team is available 24/7 and serves all areas of Indore including Vijay Nagar, Palasia, New Palasia, Old Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
      <p style="margin-top:12px">To book your decoration, simply call us at <strong>+91 76650 62706</strong> or send us a WhatsApp message. Our team responds within 30 minutes and will help you choose the perfect decoration package for your event. You can also fill out the contact form above and we will reach out to you immediately.</p>
      <p style="margin-top:12px">Whether you are looking for <strong>Birthday Decoration near me in Indore</strong>, <strong>Anniversary Decoration in Indore</strong>, or any other event decoration, Shri Balloon is your one-stop solution. We are open 24 hours, 7 days a week, 365 days a year.</p>
      <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px;justify-content:center">
        <a href="birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F382; Birthday Decoration</a>
        <a href="anniversary.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x2764;&#xFE0F; Anniversary Decoration</a>
        <a href="gallery.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F5BC;&#xFE0F; View Gallery</a>
        <a href="faq.html" style="background:#1a1a2e;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x2753; FAQ</a>
      </div>
    </div>
  </div>
</section>

'@
$c = $c.Replace('<!-- FOOTER -->', $seo + '<!-- FOOTER -->')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "contact.html DONE!"
