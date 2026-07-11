$enc = [System.Text.Encoding]::UTF8
$f = 'c:\Users\Admin\Downloads\baloon\gallery.html'
$c = [System.IO.File]::ReadAllText($f, $enc)

# Title & Meta
$c = $c.Replace('Balloon Decoration Gallery Indore | 500+ Real Event Photos', 'Balloon Decoration Gallery Indore | 500+ Real Event Photos')
$c = $c.Replace('View 500+ real balloon decoration photos from Indore. Birthday, anniversary, baby shower, wedding & all event decoration gallery. Book your setup now!', 'View 500+ real balloon decoration photos from Indore. Birthday, anniversary, baby shower, wedding & all event setups. Serving Vijay Nagar, Palasia, Nipania & all Indore areas. Book now!')

# OG & Twitter
$c = $c.Replace('Balloon Decoration Gallery Indore - 500+ Real Photos | Shri Balloon', 'Balloon Decoration Gallery Indore - 500+ Real Event Photos | Shri Balloon')
$c = $c.Replace('See 500+ real balloon decoration setups from Indore. All events, all occasions. Book on WhatsApp!', 'See 500+ real balloon decoration setups from Indore. Birthday, anniversary, wedding & all occasions. Serving Vijay Nagar, Palasia & all Indore areas. Book on WhatsApp!')

# H1 & subheading
$c = $c.Replace('<h1 style="font-family:''Playfair Display'',serif;color:#fff;font-size:clamp(1.8rem,4vw,3rem);font-weight:700;margin-bottom:12px">&#x1F388; Decoration Gallery</h1>
  <p style="color:rgba(255,255,255,.85);font-size:1rem">500+ Real Event Photos from Indore & Across India</p>', '<h1 style="font-family:''Playfair Display'',serif;color:#fff;font-size:clamp(1.8rem,4vw,3rem);font-weight:700;margin-bottom:12px">Balloon Decoration Gallery - Indore</h1>
  <p style="color:rgba(255,255,255,.85);font-size:1rem">500+ Real Balloon & Event Decoration Photos from Indore - Vijay Nagar, Palasia, Nipania & All Areas</p>')

# Add LocalBusiness schema + BreadcrumbList improvement
$oldSchema = '<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {"@type":"ListItem","position":1,"name":"Home","item":"https://www.shriballoondecoration.com/"},
    {"@type":"ListItem","position":2,"name":"Gallery","item":"https://www.shriballoondecoration.com/gallery.html"}
  ]
}
</script>'

$newSchema = '<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {"@type":"ListItem","position":1,"name":"Home","item":"https://www.shriballoondecoration.com/"},
    {"@type":"ListItem","position":2,"name":"Balloon Decoration Gallery Indore","item":"https://www.shriballoondecoration.com/gallery.html"}
  ]
}
</script>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Shri Balloon Decoration Indore",
  "description": "Best balloon decoration service in Indore for birthdays, anniversaries, weddings, baby showers and all events. 500+ real photos in gallery.",
  "url": "https://www.shriballoondecoration.com",
  "telephone": "+917665062706",
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
  "areaServed": ["Indore","Vijay Nagar","Palasia","Nipania","Rajendra Nagar","Rau","Khajrana","Lasudia","Bengali Square","Super Corridor","Scheme No 54","Scheme No 78","Mahalaxmi Nagar","Sudama Nagar","Navlakha","Pipliyahana","Silicon City","Dewas Naka","Bhawarkua","LIG","MIG","Patnipura","Geeta Bhawan","Musakhedi","Annapurna","Kanadia Road","Airport Road","MR10","Ring Road"],
  "sameAs": ["https://www.instagram.com/shriballondecor_indore"]
}
</script>'

$c = $c.Replace($oldSchema, $newSchema)

# Add SEO content section before footer
$seo = @'

<!-- LOCAL SEO CONTENT -->
<section style="background:#f8f4f9;padding:50px 5%">
  <div style="max-width:1100px;margin:0 auto">
    <div class="tc">
      <div class="stag">Balloon Decoration Gallery Indore</div>
      <h2 style="font-family:Playfair Display,serif;font-size:clamp(1.4rem,3vw,2rem);font-weight:700;color:#1a1a2e;margin-bottom:10px">Real Decoration Photos from <span style="color:#e91e8c">Indore</span></h2>
      <div style="width:50px;height:3px;background:#e91e8c;margin:0 auto 20px"></div>
    </div>
    <div style="font-size:.92rem;color:#444;line-height:1.9;max-width:900px;margin:0 auto">
      <p>Welcome to the <strong>Balloon Decoration Gallery of Shri Balloon Indore</strong> — your one-stop destination to see 500+ real event decoration photos from across Indore. Browse through birthday decoration, anniversary decoration, baby shower, wedding, kids birthday, haldi, mehndi, bachelorette, corporate events, festival decoration, pet birthday, new opening and showroom decoration photos — all executed by our team right here in Indore.</p>
      <p style="margin-top:12px">Every photo in this gallery is from a real event we decorated in Indore areas including Vijay Nagar, Palasia, New Palasia, Nipania, Rajendra Nagar, Khajrana, Lasudia, Bengali Square, Super Corridor, MR10, Ring Road, Scheme No 54, Scheme No 78, Mahalaxmi Nagar, Kanadia Road, Annapurna, Sudama Nagar, Navlakha, Pipliyahana, Silicon City, Dewas Naka, Airport Road, Bhawarkua, LIG, MIG, Patnipura, Geeta Bhawan, Musakhedi and Rau.</p>
      <p style="margin-top:12px">Use the filter buttons above to browse by category — whether you are looking for <strong>Birthday Decoration ideas in Indore</strong>, <strong>Anniversary Decoration photos from Indore</strong>, or <strong>Kids Birthday themes in Indore</strong>, you will find real inspiration from our actual work. Every setup is fully customisable to your theme, colour and budget.</p>
      <div style="margin-top:24px;display:flex;flex-wrap:wrap;gap:12px;justify-content:center">
        <a href="birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F382; Birthday Decoration</a>
        <a href="anniversary.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x2764;&#xFE0F; Anniversary Decoration</a>
        <a href="kids-birthday.html" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F9D2; Kids Birthday</a>
        <a href="contact.html" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600">&#x1F4DE; Book Now</a>
      </div>
    </div>
  </div>
</section>

'@
$c = $c.Replace('<!-- FOOTER -->', $seo + '<!-- FOOTER -->')

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Host "gallery.html DONE!"
