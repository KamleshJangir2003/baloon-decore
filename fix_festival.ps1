$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\festival.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('Festival Decoration in Indore | Diwali, Christmas, New Year', 'Festival Decoration in Indore | Diwali, Christmas & New Year')
$c = $c.Replace('Best festival decoration in Indore. Diwali, Christmas, New Year, Holi & all festival balloon setups. Office & home festival decoration. Book on WhatsApp!', 'Top festival decoration in Indore for Diwali, Christmas, New Year, Holi & Navratri. Home & office balloon setups. Serving Vijay Nagar, Palasia, Nipania & all Indore areas. Book now!')

# OG & Twitter
$c = $c.Replace('Festival Decoration Indore - Diwali, Christmas & More | Shri Balloon', 'Festival Decoration Indore - Diwali, Christmas, New Year | Shri Balloon')
$c = $c.Replace('Beautiful festival decoration in Indore for Diwali, Christmas, New Year & all occasions. Book on WhatsApp!', 'Beautiful festival decoration in Indore for Diwali, Christmas, New Year, Holi & Navratri. Serving Vijay Nagar, Palasia & all Indore areas. Book on WhatsApp!')

# Service Schema
$c = $c.Replace('"name": "Festival Decoration",', '"name": "Festival Decoration in Indore",')
$c = $c.Replace('"description": "Beautiful festival decoration in Indore for Diwali, Christmas, New Year and all occasions.",', '"description": "Professional festival decoration in Indore for Diwali, Christmas, New Year, Holi and Navratri. Home and office balloon setups. Serving Vijay Nagar, Palasia, Nipania and all Indore areas.",')
$c = $c.Replace('"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},
  "areaServed": "Indore, India"', '"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706", "address": {"@type": "PostalAddress", "addressLocality": "Indore", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]')

# Breadcrumb & H1
$c = $c.Replace('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Festival Decoration</div>
  <h1>Festival Decoration</h1>
  <p>Diwali, Christmas, New Year themed setups starting Rs.999.</p>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Festival Decoration in Indore</div>
  <h1>Festival Decoration in Indore</h1>
  <p>Diwali, Christmas, New Year, Holi & Navratri balloon setups for home & office. Serving Vijay Nagar, Palasia, Nipania & all Indore areas.</p>')

# H2 headings
$c = $c.Replace('<h2 class="stitle">Festival Decoration Packages</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Themed setups for every festival that bring the true spirit of celebration to life.</p>', '<h2 class="stitle">Festival Decoration Packages in Indore</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Themed setups for every festival that bring the true spirit of celebration to life across Indore.</p>')
$c = $c.Replace('<h2 class="stitle">Festival Gallery</h2>', '<h2 class="stitle">Festival Decoration Gallery - Indore</h2>')
$c = $c.Replace('<h2 class="stitle">20+ Festivals, All Themed</h2>', '<h2 class="stitle">20+ Festivals Decorated Across Indore</h2>')

# Image alts
$c = $c.Replace('alt="Diwali"', 'alt="Diwali Decoration in Indore"')
$c = $c.Replace('alt="Christmas"', 'alt="Christmas Decoration in Indore"')
$c = $c.Replace('alt="f1"', 'alt="Diwali Balloon Decoration Indore"')
$c = $c.Replace('alt="f2"', 'alt="Christmas Decoration Indore"')
$c = $c.Replace('alt="f3"', 'alt="New Year Eve Decoration Indore"')
$c = $c.Replace('alt="f4"', 'alt="Office Diwali Party Decoration Indore"')
$c = $c.Replace('alt="f5"', 'alt="Holi Celebration Decoration Indore"')
$c = $c.Replace('alt="f6"', 'alt="Navratri Decoration Indore"')

# Local SEO section + FAQ schema before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">Festival Decoration Indore</div>
    <h2 class="stitle">Best Festival Decorator in <span style="color:var(--pink)">Indore</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>Festival Decoration in Indore</strong>? Shri Balloon creates stunning Diwali, Christmas, New Year, Holi and Navratri setups across all Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Diwali Decoration in Indore</strong> features warm gold and orange balloon setups, marigold flowers, diya arrangements, LED fairy lights and rangoli that fill your home or office with the true spirit of the Festival of Lights. For <strong>Christmas Decoration in Indore</strong>, we create festive red and green balloon arches, Santa props, snowflake arrangements and Merry Christmas banners.</p>
    <p style="margin-top:12px">Our <strong>New Year Decoration in Indore</strong> includes gold and silver glam setups with year foil balloons, countdown displays and photo booths perfect for New Year Eve parties. We also cover Holi, Eid, Navratri, Ganesh Chaturthi and all major festivals with themed balloon and floral setups.</p>
    <p style="margin-top:12px">Whether it is a home festival celebration or an <strong>Office Festival Decoration in Indore</strong>, our team delivers on time with full setup and cleanup. Book your <strong>Festival Decoration near me in Indore</strong> today by calling or WhatsApp.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="corporate.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F3E2; Corporate Event</a>
      <a href="new-opening.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F38A; New Opening</a>
      <a href="birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F382; Birthday Decoration</a>
      <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
    </div>
  </div>
</section>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"Do you do Diwali decoration at home in Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We provide Diwali decoration at home in Indore with gold and orange balloon setups, marigold flowers, diya arrangements and LED fairy lights. We serve Vijay Nagar, Palasia, Nipania and all Indore areas."}},
    {"@type":"Question","name":"How much does festival decoration cost in Indore?","acceptedAnswer":{"@type":"Answer","text":"Festival decoration in Indore starts from Rs.999 for a basic setup. Office and grand festival setups are available at higher packages. Contact Shri Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you do office Diwali decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We specialise in office festival decoration in Indore for Diwali, Christmas and New Year. We decorate office entrances, workspaces and party areas with themed balloon setups."}},
    {"@type":"Question","name":"Which festivals do you decorate for in Indore?","acceptedAnswer":{"@type":"Answer","text":"We decorate for 20+ festivals in Indore including Diwali, Christmas, New Year, Holi, Eid, Navratri, Ganesh Chaturthi and all major Indian and international festivals."}}
  ]
}
</script>

'@
$c = $c.Replace('<footer id="contact">', $seo + '<footer id="contact">')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "festival.html DONE!"
