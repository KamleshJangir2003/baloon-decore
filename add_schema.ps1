$pages = @(
  @{file='birthday.html'; name='Birthday Balloon Decoration'; desc='Top birthday balloon decoration in Indore. Balloon arch, room setup, theme party.'},
  @{file='anniversary.html'; name='Anniversary Decoration'; desc='Romantic anniversary balloon decoration in Indore. Heart arch, rose petals, surprise setup.'},
  @{file='baby-shower.html'; name='Baby Shower Decoration'; desc='Adorable baby shower decoration in Indore. Gender reveal, pastel balloons, photo backdrop.'},
  @{file='kids-birthday.html'; name='Kids Birthday Decoration'; desc='Fun kids birthday decoration in Indore. 100+ themes Unicorn, Superhero, Cocomelon.'},
  @{file='first-night.html'; name='First Night Decoration'; desc='Romantic first night decoration in Indore. Rose petals, candles, fairy lights and balloons.'},
  @{file='stage.html'; name='Stage Decoration'; desc='Grand stage decoration in Indore for weddings, engagements and events.'},
  @{file='welcome-baby.html'; name='Welcome Baby Decoration'; desc='Beautiful welcome baby decoration in Indore. Name boards, balloon arches and entrance decor.'},
  @{file='naming.html'; name='Naming Ceremony Decoration'; desc='Beautiful naming ceremony decoration in Indore. Traditional and modern Naamkaran setups.'},
  @{file='housewarming.html'; name='Housewarming Decoration'; desc='Beautiful housewarming decoration in Indore. Griha Pravesh, marigold, balloons and flowers.'},
  @{file='corporate.html'; name='Corporate Event Decoration'; desc='Professional corporate event decoration in Indore. Office party, product launch, award night.'},
  @{file='car.html'; name='Car Decoration'; desc='Beautiful car decoration in Indore for weddings and birthdays. Flowers, ribbons, balloons.'},
  @{file='bachelorette.html'; name='Bachelorette Haldi Mehandi Decoration'; desc='Fun pre-wedding decoration in Indore. Bachelorette, haldi and mehandi setups.'},
  @{file='festival.html'; name='Festival Decoration'; desc='Beautiful festival decoration in Indore for Diwali, Christmas, New Year and all occasions.'},
  @{file='pet.html'; name='Pet Birthday Decoration'; desc='Cute and safe pet birthday decoration in Indore for dogs, cats and all pets.'},
  @{file='new-opening.html'; name='New Opening Decoration'; desc='Grand opening decoration in Indore. Shop launch, ribbon cutting and inauguration setups.'},
  @{file='showroom.html'; name='Showroom Decoration'; desc='Professional showroom decoration in Indore for auto, jewellery and corporate launches.'}
)

foreach ($p in $pages) {
  $content = [System.IO.File]::ReadAllText($p.file, [System.Text.Encoding]::UTF8)
  $schema = '<script type="application/ld+json">' + "`n"
  $schema += '{' + "`n"
  $schema += '  "@context": "https://schema.org",' + "`n"
  $schema += '  "@type": "Service",' + "`n"
  $schema += '  "name": "' + $p.name + '",' + "`n"
  $schema += '  "description": "' + $p.desc + '",' + "`n"
  $schema += '  "provider": {"@type": "LocalBusiness", "name": "Shri Balloon Decoration", "telephone": "+917665062706"},' + "`n"
  $schema += '  "areaServed": "Indore, India"' + "`n"
  $schema += '}' + "`n"
  $schema += '</script>' + "`n"
  $newContent = $content -replace '<link rel="stylesheet" href="category.css"/>', ($schema + '<link rel="stylesheet" href="category.css"/>')
  [System.IO.File]::WriteAllText($p.file, $newContent, [System.Text.Encoding]::UTF8)
  Write-Host "Done: $($p.file)"
}
