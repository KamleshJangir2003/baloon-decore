# SEO fix script for all remaining pages
$enc = [System.Text.Encoding]::UTF8

function ReplaceInFile($path, $pairs) {
    $c = [System.IO.File]::ReadAllText($path, $enc)
    foreach ($p in $pairs) {
        if ($c.Contains($p[0])) {
            $c = $c.Replace($p[0], $p[1])
            Write-Host "  Replaced: $($p[0].Substring(0,[Math]::Min(60,$p[0].Length)))"
        } else {
            Write-Host "  NOT FOUND: $($p[0].Substring(0,[Math]::Min(60,$p[0].Length)))"
        }
    }
    [System.IO.File]::WriteAllText($path, $c, $enc)
}

# ===================== CAR.HTML =====================
Write-Host "`n=== car.html ==="
$carPairs = @(
    @('Car Decoration in Indore | Wedding Car, Bridal Car Setup', 'Car Decoration in Indore | Wedding & Bridal Car Setup'),
    @('Best car decoration in Indore for weddings, engagements & birthdays. Wedding car, bridal car, luxury car decoration with flowers, ribbons & balloons. Book now!', 'Top car decoration in Indore for weddings, engagements & birthdays. Bridal car & luxury car setups with fresh flowers, ribbons & balloons. Serving Vijay Nagar, Palasia & all Indore areas. Book now!'),
    @('Car Decoration Indore', 'Car Decoration Indore'),
    @('Beautiful car decoration in Indore for weddings & birthdays. Flowers, ribbons, balloons. Book on WhatsApp!', 'Beautiful car decoration in Indore for weddings, engagements & birthdays. Fresh flowers, ribbons & balloons. Serving Vijay Nagar, Nipania, Palasia & all Indore areas. Book on WhatsApp!'),
    @('"name": "Car Decoration",', '"name": "Car Decoration in Indore",'),
    @('"description": "Beautiful car decoration in Indore for weddings and birthdays. Flowers, ribbons, balloons.",', '"description": "Professional car decoration in Indore for weddings, engagements and birthdays. Fresh flowers, ribbons, balloons and custom boards. Serving Vijay Nagar, Palasia, Nipania and all Indore areas.",'),
    @('"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},
  "areaServed": "Indore, India"', '"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706", "address": {"@type": "PostalAddress", "addressLocality": "Indore", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]'),
    @('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Car Decoration</div>
  <h1>Car Decoration</h1>
  <p>Wedding and birthday car decoration with flowers, ribbons starting Rs.799.</p>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Car Decoration in Indore</div>
  <h1>Car Decoration in Indore</h1>
  <p>Wedding car, bridal car & birthday car decoration with fresh flowers, ribbons & balloons. Serving Vijay Nagar, Palasia, Nipania & all Indore areas.</p>'),
    @('<h2 class="stitle">Car Decoration Packages</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Beautiful car setups for weddings, engagements, anniversaries & special occasions.</p>', '<h2 class="stitle">Car Decoration Packages in Indore</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Beautiful car setups for weddings, engagements, anniversaries & special occasions across Indore.</p>'),
    @('alt="Basic Car"', 'alt="Simple Wedding Car Decoration in Indore"'),
    @('alt="Premium Car"', 'alt="Premium Bridal Car Decoration Indore"'),
    @('alt="Luxury Car"', 'alt="Luxury Car Full Decoration Indore"'),
    @('alt="Birthday Car"', 'alt="Birthday Car Surprise Decoration Indore"'),
    @('<h2 class="stitle">Car Decoration Gallery</h2>', '<h2 class="stitle">Car Decoration Gallery - Indore</h2>'),
    @('alt="car1"', 'alt="Wedding Car Decoration Indore"'),
    @('alt="car2"', 'alt="Bridal Car Decoration Indore"'),
    @('alt="car3"', 'alt="Luxury Car Decoration Indore"'),
    @('alt="car4"', 'alt="Reception Exit Car Decoration Indore"'),
    @('alt="car5"', 'alt="Birthday Car Surprise Decoration Indore"'),
    @('alt="car6"', 'alt="Anniversary Car Decoration Indore"'),
    @('<h2 class="stitle">What''s Included</h2>', '<h2 class="stitle">What''s Included in Car Decoration Indore</h2>')
)
ReplaceInFile 'c:\Users\Admin\Downloads\baloon\car.html' $carPairs

# Add local SEO section before footer in car.html
$carFile = 'c:\Users\Admin\Downloads\baloon\car.html'
$carContent = [System.IO.File]::ReadAllText($carFile, $enc)
$seoSection = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">Car Decoration Indore</div>
    <h2 class="stitle">Best Car Decorator in <span style="color:var(--pink)">Indore</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>Car Decoration in Indore</strong>? Shri Balloon offers stunning wedding car, bridal car and birthday car decoration across all Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Car Decoration in Indore</strong> uses premium fresh roses, carnations and seasonal flowers arranged beautifully on the bonnet, roof and sides of the vehicle. Every setup includes elegant satin ribbons, custom "Just Married" or name boards, and tasteful balloon arrangements that make your car look absolutely stunning for wedding photography and videography.</p>
    <p style="margin-top:12px">Whether you need a simple <strong>Wedding Car Decoration in Indore</strong> with a flower bonnet and ribbon bows, or a full luxury bridal car setup with LED name boards and interior petal decoration, our team delivers on time and within budget. We also specialise in birthday car surprise setups where we secretly decorate your loved one's car overnight.</p>
    <p style="margin-top:12px">Our professional decorators complete the setup in under 1 hour so your car is ready exactly when you need it. We serve all major wedding venues, hotels and residences across Indore. Call or WhatsApp us to book your <strong>Car Decoration near me in Indore</strong> today.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="anniversary.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x2764;&#xFE0F; Anniversary Decoration</a>
      <a href="first-night.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F48D; First Night Decoration</a>
      <a href="bachelorette.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F470; Bachelorette / Haldi</a>
      <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
    </div>
  </div>
</section>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"How much does car decoration cost in Indore?","acceptedAnswer":{"@type":"Answer","text":"Car decoration in Indore starts from Rs.799 for a simple wedding car setup with flowers and ribbons. Premium bridal car and luxury setups are available at higher packages. Contact Shri Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you decorate cars for weddings in Vijay Nagar and Palasia Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We provide car decoration services across all Indore areas including Vijay Nagar, Palasia, Nipania, Rajendra Nagar, Rau and all other localities."}},
    {"@type":"Question","name":"How long does car decoration setup take in Indore?","acceptedAnswer":{"@type":"Answer","text":"Our team completes car decoration in Indore within 45 minutes to 1 hour so your vehicle is ready well before the event."}},
    {"@type":"Question","name":"Can you do a surprise birthday car decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Absolutely! We specialise in secret overnight birthday car surprise setups in Indore. Share the car location and we will decorate it while the birthday person sleeps."}}
  ]
}
</script>

'@
if (-not $carContent.Contains('Car Decoration Indore</div>')) {
    $carContent = $carContent.Replace('<footer id="contact">', $seoSection + '<footer id="contact">')
    [System.IO.File]::WriteAllText($carFile, $carContent, $enc)
    Write-Host "  Added SEO section to car.html"
}

# ===================== BACHELORETTE.HTML =====================
Write-Host "`n=== bachelorette.html ==="
$bachPairs = @(
    @('Bachelorette Haldi Mehandi Decoration in Indore | Pre-Wedding Setup', 'Bachelorette Haldi Mehndi Decoration Indore | Pre-Wedding Setup'),
    @('Best bachelorette, haldi & mehandi decoration in Indore. Bride to be setup, marigold haldi decor, boho mehandi backdrop. Instagram-worthy pre-wedding setups. Book now!', 'Best bachelorette, haldi & mehndi decoration in Indore. Bride to be setup, marigold haldi decor, boho mehndi backdrop. Serving Vijay Nagar, Palasia, Nipania & all Indore areas. Book now!'),
    @('Bachelorette Haldi Mehandi Decoration Indore', 'Bachelorette Haldi Mehndi Decoration Indore'),
    @('Fun pre-wedding decoration in Indore. Bachelorette, haldi & mehandi setups. Book on WhatsApp!', 'Fun pre-wedding decoration in Indore. Bachelorette, haldi & mehndi setups. Serving Vijay Nagar, Palasia & all Indore areas. Book on WhatsApp!'),
    @('"name": "Bachelorette Haldi Mehandi Decoration",', '"name": "Bachelorette Haldi Mehndi Decoration in Indore",'),
    @('"description": "Fun pre-wedding decoration in Indore. Bachelorette, haldi and mehandi setups.",', '"description": "Fun pre-wedding decoration in Indore. Bachelorette, haldi and mehndi setups. Serving Vijay Nagar, Palasia, Nipania, Rajendra Nagar and all Indore areas.",'),
    @('"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},
  "areaServed": "Indore, India"', '"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706", "address": {"@type": "PostalAddress", "addressLocality": "Indore", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]'),
    @('<h1>&#x1F470; Bachelorette / Haldi / Mehandi</h1>
  <p>Fun, festive & Instagram-worthy pre-wedding setups for Bachelorette, Haldi & Mehandi ceremonies </p>', '<h1>Bachelorette / Haldi / Mehndi Decoration in Indore</h1>
  <p>Fun, festive & Instagram-worthy pre-wedding setups for Bachelorette, Haldi & Mehndi ceremonies across Vijay Nagar, Palasia, Nipania & all Indore areas.</p>'),
    @('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Bachelorette / Haldi / Mehandi</div>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Bachelorette / Haldi / Mehndi Decoration Indore</div>'),
    @('<h2 class="stitle">Choose Your Pre-Wedding Setup</h2>', '<h2 class="stitle">Pre-Wedding Decoration Packages in Indore</h2>'),
    @('alt="Bachelorette"', 'alt="Bachelorette Party Decoration Indore"'),
    @('alt="Haldi"', 'alt="Haldi Ceremony Decoration Indore"'),
    @('alt="Mehandi"', 'alt="Mehndi Ceremony Decoration Indore"'),
    @('alt="Grand Combo"', 'alt="Grand Pre-Wedding Combo Decoration Indore"'),
    @('<h2 class="stitle">Pre-Wedding Gallery</h2>', '<h2 class="stitle">Pre-Wedding Decoration Gallery - Indore</h2>'),
    @('alt="b1"', 'alt="Bachelorette Night Decoration Indore"'),
    @('alt="b2"', 'alt="Haldi Ceremony Decoration Indore"'),
    @('alt="b3"', 'alt="Mehndi Night Decoration Indore"'),
    @('alt="b4"', 'alt="Bridal Shower Decoration Indore"'),
    @('alt="b5"', 'alt="Fun Bachelorette Decoration Indore"'),
    @('alt="b6"', 'alt="Grand Pre-Wedding Decoration Indore"'),
    @('<h2 class="stitle">What''s Included</h2>', '<h2 class="stitle">What''s Included in Pre-Wedding Decoration Indore</h2>')
)
ReplaceInFile 'c:\Users\Admin\Downloads\baloon\bachelorette.html' $bachPairs

# Add SEO section to bachelorette.html
$bachFile = 'c:\Users\Admin\Downloads\baloon\bachelorette.html'
$bachContent = [System.IO.File]::ReadAllText($bachFile, $enc)
$bachSeo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">Bachelorette Haldi Mehndi Decoration Indore</div>
    <h2 class="stitle">Best Pre-Wedding Decorator in <span style="color:var(--pink)">Indore</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>Bachelorette Decoration in Indore</strong> or <strong>Haldi Decoration in Indore</strong>? Shri Balloon creates stunning pre-wedding setups across all Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Haldi Decoration in Indore</strong> features vibrant yellow and orange marigold garlands, floral arches, bride chair decoration and petal rangoli that create the perfect festive atmosphere. For <strong>Mehndi Decoration in Indore</strong>, we create beautiful boho-style setups with fairy lights, earthy tones and floral backdrops that look stunning on Instagram.</p>
    <p style="margin-top:12px">Our <strong>Bachelorette Party Decoration in Indore</strong> includes pink and gold balloons, "Bride to Be" sashes, "She Said Yes" banners, photo booth props and confetti for an unforgettable night. We also offer a Grand Pre-Wedding Combo covering all three ceremonies at the best value.</p>
    <p style="margin-top:12px">Every pre-wedding setup by Shri Balloon is designed to be Instagram-worthy and photo-ready. Our team handles everything from setup to cleanup so you can focus on celebrating. Book your <strong>Haldi Mehndi Decoration near me in Indore</strong> today.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="first-night.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F48D; First Night Decoration</a>
      <a href="anniversary.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x2764;&#xFE0F; Anniversary Decoration</a>
      <a href="stage.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F3AA; Stage Decoration</a>
      <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
    </div>
  </div>
</section>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"How much does Haldi decoration cost in Indore?","acceptedAnswer":{"@type":"Answer","text":"Haldi decoration in Indore starts from Rs.1,499 for a basic marigold setup. Grand haldi setups with full floral arch, bride chair and backdrop are available at higher packages. Contact Shri Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you do Bachelorette party decoration in Vijay Nagar and Palasia Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We provide bachelorette, haldi and mehndi decoration across all Indore areas including Vijay Nagar, Palasia, Nipania, Rajendra Nagar, Rau and all other localities."}},
    {"@type":"Question","name":"Can you do Bride to Be decoration at home in Indore?","acceptedAnswer":{"@type":"Answer","text":"Absolutely! We specialise in home bachelorette and bride to be decoration in Indore. Our team sets up everything at your home or venue within 2 hours."}},
    {"@type":"Question","name":"Do you offer Mehndi decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! Our boho mehndi decoration in Indore includes flower backdrops, fairy lights, bride seating area and customised banners for a beautiful mehndi night."}}
  ]
}
</script>

'@
if (-not $bachContent.Contains('Best Pre-Wedding Decorator')) {
    $bachContent = $bachContent.Replace('<footer id="contact">', $bachSeo + '<footer id="contact">')
    [System.IO.File]::WriteAllText($bachFile, $bachContent, $enc)
    Write-Host "  Added SEO section to bachelorette.html"
}

Write-Host "`nDone car + bachelorette"
