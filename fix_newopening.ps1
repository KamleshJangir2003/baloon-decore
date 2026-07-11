$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\new-opening.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('New Opening Decoration in Indore | Grand Opening, Shop Launch', 'New Shop Opening Decoration Indore | Grand Opening & Launch')
$c = $c.Replace('Best new opening & grand opening decoration in Indore. Shop launch, ribbon cutting, inauguration balloon arches & festive setups. Book on WhatsApp!', 'Top new shop opening & grand opening decoration in Indore. Shop launch, ribbon cutting & inauguration balloon arches. Serving Vijay Nagar, Palasia, Nipania & all Indore areas. Book now!')

# OG & Twitter
$c = $c.Replace('New Opening Decoration Indore - Grand Opening & Shop Launch | Shri Balloon', 'New Shop Opening Decoration Indore - Grand Opening & Launch | Shri Balloon')
$c = $c.Replace('Grand opening decoration in Indore. Shop launch, ribbon cutting & inauguration setups. Book on WhatsApp!', 'Grand opening & shop launch decoration in Indore. Ribbon cutting, balloon arches & inauguration setups. Serving Vijay Nagar, Palasia & all Indore areas. Book on WhatsApp!')

# Service Schema
$c = $c.Replace('"name": "New Opening Decoration",', '"name": "New Shop Opening Decoration in Indore",')
$c = $c.Replace('"description": "Grand opening decoration in Indore. Shop launch, ribbon cutting and inauguration setups.",', '"description": "Professional new shop opening and grand opening decoration in Indore. Shop launch, ribbon cutting and inauguration balloon arches. Serving Vijay Nagar, Palasia, Nipania and all Indore areas.",')
$c = $c.Replace('"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},
  "areaServed": "Indore, India"', '"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706", "address": {"@type": "PostalAddress", "addressLocality": "Indore", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]')

# Breadcrumb & H1
$c = $c.Replace('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>New Opening Decoration</div>
  <h1>New Opening Decoration</h1>
  <p>Grand opening and shop launch setups starting Rs.1,499.</p>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>New Shop Opening Decoration in Indore</div>
  <h1>New Shop Opening Decoration in Indore</h1>
  <p>Grand opening, shop launch & inauguration balloon arches with ribbon cutting setups. Serving Vijay Nagar, Palasia, Nipania & all Indore areas.</p>')

# H2 headings
$c = $c.Replace('<h2 class="stitle">New Opening Packages</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Grand, eye-catching setups that make your business launch a community event!</p>', '<h2 class="stitle">New Opening Decoration Packages in Indore</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Grand, eye-catching setups that make your business launch a community event in Indore!</p>')
$c = $c.Replace('<h2 class="stitle">Grand Opening Gallery</h2>', '<h2 class="stitle">Grand Opening Decoration Gallery - Indore</h2>')
$c = $c.Replace('<h2 class="stitle">What Every Opening Package Includes</h2>', '<h2 class="stitle">What Every Opening Package in Indore Includes</h2>')

# Image alts - packages
$c = $c.Replace('alt="Shop Opening"', 'alt="Shop Launch Decoration Indore"')
$c = $c.Replace('alt="Premium Opening"', 'alt="Premium Grand Opening Decoration Indore"')
$c = $c.Replace('alt="Restaurant Opening"', 'alt="Restaurant Cafe Opening Decoration Indore"')
$c = $c.Replace('alt="Corporate Office Launch"', 'alt="Corporate Office Launch Decoration Indore"')

# Image alts - gallery
$c = $c.Replace('alt="no1"', 'alt="Shop Launch Decoration Indore"')
$c = $c.Replace('alt="no2"', 'alt="Showroom Opening Decoration Indore"')
$c = $c.Replace('alt="no3"', 'alt="Restaurant Launch Decoration Indore"')
$c = $c.Replace('alt="no4"', 'alt="Corporate Office Decoration Indore"')
$c = $c.Replace('alt="no5"', 'alt="Clinic Opening Decoration Indore"')
$c = $c.Replace('alt="no6"', 'alt="Boutique Launch Decoration Indore"')

# Local SEO section + FAQ schema before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">New Opening Decoration Indore</div>
    <h2 class="stitle">Best Grand Opening Decorator in <span style="color:var(--pink)">Indore</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>New Shop Opening Decoration in Indore</strong>? Shri Balloon creates stunning grand opening, shop launch and inauguration setups across all Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Grand Opening Decoration in Indore</strong> includes towering balloon arches at the entrance, ceremonial ribbon cutting setups, branded photo backdrops and business name foil letter displays. Every setup is designed to stop people on the street and create maximum excitement around your new business launch.</p>
    <p style="margin-top:12px">We specialise in <strong>Restaurant Opening Decoration in Indore</strong>, <strong>Clinic Opening Decoration in Indore</strong>, boutique launches, gym openings and all types of new business inaugurations. Our Corporate Office Launch package includes reception area decoration, branded backdrops, company name displays and press-ready setups.</p>
    <p style="margin-top:12px">Whether you are opening a small shop in Vijay Nagar or launching a large showroom on Ring Road, our team delivers a professional, crowd-attracting setup on time and within budget. Book your <strong>New Opening Decoration near me in Indore</strong> today by calling or WhatsApp.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="showroom.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F3EA; Showroom Decoration</a>
      <a href="corporate.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F3E2; Corporate Event</a>
      <a href="festival.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1FA94; Festival Decoration</a>
      <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
    </div>
  </div>
</section>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"How much does new shop opening decoration cost in Indore?","acceptedAnswer":{"@type":"Answer","text":"New shop opening decoration in Indore starts from Rs.1,499 for a basic setup with balloon arch and ribbon cutting. Premium grand opening packages are available at higher prices. Contact Shri Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you do grand opening decoration in Vijay Nagar and Palasia Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We provide grand opening and shop launch decoration across all Indore areas including Vijay Nagar, Palasia, Nipania, Rajendra Nagar, Rau, Ring Road and all other localities."}},
    {"@type":"Question","name":"Do you provide ribbon cutting setup for shop inauguration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! Every opening package includes a ceremonial ribbon cutting setup with ribbon, scissors and an elegantly decorated inauguration area for the official launch moment."}},
    {"@type":"Question","name":"Can you do restaurant and cafe opening decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Absolutely! We specialise in restaurant and cafe opening decoration in Indore with outdoor balloon arches, interior decoration, social media photo walls and table decoration."}}
  ]
}
</script>

'@
$c = $c.Replace('<footer id="contact">', $seo + '<footer id="contact">')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "new-opening.html DONE!"
