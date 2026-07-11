$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\showroom.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('Showroom Decoration in Indore | Corporate Showroom Launch', 'Showroom Decoration in Indore | Auto & Corporate Launch Setup')
$c = $c.Replace('Best showroom & corporate launch decoration in Indore. Auto showroom, jewellery launch, real estate & brand events. Professional setups. Book on WhatsApp!', 'Top showroom decoration in Indore for auto, jewellery, real estate & corporate launches. Brand-aligned balloon setups. Serving Vijay Nagar, Palasia & all Indore areas. Book now!')

# OG & Twitter
$c = $c.Replace('Showroom Decoration Indore - Corporate Launch | Shri Balloon', 'Showroom Decoration Indore - Auto & Corporate Launch | Shri Balloon')
$c = $c.Replace('Professional showroom decoration in Indore for auto, jewellery & corporate launches. Book on WhatsApp!', 'Professional showroom decoration in Indore for auto, jewellery, real estate & corporate launches. Serving Vijay Nagar, Palasia & all Indore areas. Book on WhatsApp!')

# Service Schema
$c = $c.Replace('"name": "Showroom Decoration",', '"name": "Showroom Decoration in Indore",')
$c = $c.Replace('"description": "Professional showroom decoration in Indore for auto, jewellery and corporate launches.",', '"description": "Professional showroom decoration in Indore for auto, jewellery, real estate and corporate launches. Brand-aligned balloon setups. Serving Vijay Nagar, Palasia, Nipania and all Indore areas.",')
$c = $c.Replace('"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},
  "areaServed": "Indore, India"', '"provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706", "address": {"@type": "PostalAddress", "addressLocality": "Indore", "addressRegion": "Madhya Pradesh", "addressCountry": "IN"}},
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"]')

# Breadcrumb & H1
$c = $c.Replace('<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Corporate Showroom Decoration</div>
  <h1>Corporate Showroom Decoration</h1>
  <p>Premium showroom launch setups starting Rs.2,999.</p>', '<div class="breadcrumb-inline"><a href="index.html">Home</a><span>&#x203a;</span>Showroom Decoration in Indore</div>
  <h1>Showroom Decoration in Indore</h1>
  <p>Auto, jewellery, real estate & corporate showroom launch setups. Serving Vijay Nagar, Palasia, Nipania & all Indore areas.</p>')

# H2 headings
$c = $c.Replace('<h2 class="stitle">Showroom Decoration Packages</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Premium, brand-aligned decoration for showrooms that command attention and drive footfall.</p>', '<h2 class="stitle">Showroom Decoration Packages in Indore</h2><div class="sdiv"></div><p class="ssub" style="margin-top:14px">Premium, brand-aligned decoration for showrooms in Indore that command attention and drive footfall.</p>')
$c = $c.Replace('<h2 class="stitle">Showroom Decoration Gallery</h2>', '<h2 class="stitle">Showroom Decoration Gallery - Indore</h2>')
$c = $c.Replace('<h2 class="stitle">What Every Showroom Package Includes</h2>', '<h2 class="stitle">What Every Showroom Package in Indore Includes</h2>')

# Image alts - packages
$c = $c.Replace('alt="Showroom Basic"', 'alt="Showroom Launch Basic Decoration Indore"')
$c = $c.Replace('alt="Showroom Premium"', 'alt="Premium Showroom Launch Decoration Indore"')
$c = $c.Replace('alt="Auto Showroom"', 'alt="Automobile Showroom Launch Decoration Indore"')
$c = $c.Replace('alt="Real Estate"', 'alt="Real Estate Jewellery Showroom Decoration Indore"')

# Image alts - gallery
$c = $c.Replace('alt="sr1"', 'alt="Showroom Launch Decoration Indore"')
$c = $c.Replace('alt="sr2"', 'alt="Auto Showroom Decoration Indore"')
$c = $c.Replace('alt="sr3"', 'alt="Jewellery Showroom Launch Decoration Indore"')
$c = $c.Replace('alt="sr4"', 'alt="Premium Brand Event Decoration Indore"')
$c = $c.Replace('alt="sr5"', 'alt="Real Estate Launch Decoration Indore"')
$c = $c.Replace('alt="sr6"', 'alt="Corporate Launch Decoration Indore"')

# Local SEO section + FAQ schema before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:60px 5%">
  <div class="tc">
    <div class="stag">Showroom Decoration Indore</div>
    <h2 class="stitle">Best Showroom Decorator in <span style="color:var(--pink)">Indore</span></h2>
    <div class="sdiv"></div>
  </div>
  <div style="max-width:900px;margin:28px auto 0;font-size:.92rem;color:#444;line-height:1.9">
    <p>Looking for the best <strong>Showroom Decoration in Indore</strong>? Shri Balloon creates premium, brand-aligned showroom launch setups for auto showrooms, jewellery stores, real estate offices and corporate brands across all Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
    <p style="margin-top:12px">Our <strong>Automobile Showroom Decoration in Indore</strong> includes car unveil backdrops, showroom floor balloon columns, VIP launch ceremony setups and branded arches that create a premium atmosphere for your new vehicle launch. For <strong>Jewellery Showroom Decoration in Indore</strong>, we create luxury gold and floral setups with VIP guest areas and product showcase decoration.</p>
    <p style="margin-top:12px">Our <strong>Real Estate Launch Decoration in Indore</strong> and corporate showroom setups are designed to impress investors, media and VIP guests. Every element is matched exactly to your brand colour palette for a consistent, professional look. We provide press-ready backdrops with your brand logo for social media and press coverage.</p>
    <p style="margin-top:12px">Shri Balloon is trusted by leading businesses across Indore for showroom launches, product unveils and brand events. Our team arrives on time, sets up professionally and removes everything neatly after the event. Book your <strong>Showroom Decoration near me in Indore</strong> today.</p>
    <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px">
      <a href="new-opening.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F38A; New Opening</a>
      <a href="corporate.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F3E2; Corporate Event</a>
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
    {"@type":"Question","name":"How much does showroom decoration cost in Indore?","acceptedAnswer":{"@type":"Answer","text":"Showroom decoration in Indore starts from Rs.2,999 for a basic launch setup. Premium automobile and jewellery showroom packages are available at higher prices. Contact Shri Balloon on WhatsApp for exact pricing."}},
    {"@type":"Question","name":"Do you do automobile showroom decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We specialise in automobile showroom decoration in Indore with car unveil backdrops, showroom floor balloon columns, VIP launch ceremony setups and branded arches."}},
    {"@type":"Question","name":"Do you match brand colours for showroom decoration in Indore?","acceptedAnswer":{"@type":"Answer","text":"Absolutely! Every balloon, ribbon and decoration element is matched exactly to your brand colour palette for a consistent, professional showroom launch look in Indore."}},
    {"@type":"Question","name":"Do you provide showroom decoration in Vijay Nagar and Ring Road Indore?","acceptedAnswer":{"@type":"Answer","text":"Yes! We provide showroom decoration across all Indore areas including Vijay Nagar, Palasia, Nipania, Ring Road, Super Corridor, Rajendra Nagar and all other localities."}}
  ]
}
</script>

'@
$c = $c.Replace('<footer id="contact">', $seo + '<footer id="contact">')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "showroom.html DONE!"
