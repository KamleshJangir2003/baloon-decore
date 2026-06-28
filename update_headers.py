import os
import re

pages = [
    "anniversary.html","baby-shower.html","bachelorette.html","birthday.html",
    "car.html","corporate.html","festival.html","first-night.html",
    "housewarming.html","kids-birthday.html","naming.html","new-opening.html",
    "pet.html","showroom.html","stage.html","welcome-baby.html",
    "about.html","contact.html","gallery.html","faq.html","privacy-policy.html","refund.html"
]

NEW_NAV = '''<nav>
  <a class="nav-logo" href="index.html">
    <div class="li">🎈</div>
    <span>Shri <em>Ballon</em></span>
  </a>
  <ul class="nav-links">
    <li><a href="index.html">Home</a></li>
    <li><a href="about.html">About</a></li>
    <li class="has-drop">
      <button class="drop-btn">Decorations <span class="drop-arrow"></span></button>
      <div class="dropdown">
        <div class="drop-header">
          <span>🎈 All Decoration Services</span>
          <a href="index.html#categories">View All →</a>
        </div>
        <a href="birthday.html" class="drop-item"><span class="di">🎂</span><div class="dt"><span class="dn">Birthday</span><span class="dp">From ₹999</span></div></a>
        <a href="kids-birthday.html" class="drop-item"><span class="di">🧒</span><div class="dt"><span class="dn">Kids Birthday</span><span class="dp">From ₹1,199</span></div></a>
        <a href="baby-shower.html" class="drop-item"><span class="di">👶</span><div class="dt"><span class="dn">Baby Shower</span><span class="dp">From ₹1,499</span></div></a>
        <a href="anniversary.html" class="drop-item"><span class="di">❤️</span><div class="dt"><span class="dn">Anniversary</span><span class="dp">From ₹1,299</span></div></a>
        <a href="first-night.html" class="drop-item"><span class="di">💍</span><div class="dt"><span class="dn">First Night</span><span class="dp">From ₹1,672</span></div></a>
        <a href="stage.html" class="drop-item"><span class="di">🎪</span><div class="dt"><span class="dn">Stage Decoration</span><span class="dp">From ₹2,499</span></div></a>
        <a href="welcome-baby.html" class="drop-item"><span class="di">🍼</span><div class="dt"><span class="dn">Welcome Baby</span><span class="dp">From ₹1,199</span></div></a>
        <a href="naming.html" class="drop-item"><span class="di">🌸</span><div class="dt"><span class="dn">Naming Ceremony</span><span class="dp">From ₹999</span></div></a>
        <a href="housewarming.html" class="drop-item"><span class="di">🏠</span><div class="dt"><span class="dn">House Warming</span><span class="dp">From ₹1,499</span></div></a>
        <a href="corporate.html" class="drop-item"><span class="di">🏢</span><div class="dt"><span class="dn">Corporate Event</span><span class="dp">From ₹2,999</span></div></a>
        <a href="car.html" class="drop-item"><span class="di">🚗</span><div class="dt"><span class="dn">Car Decoration</span><span class="dp">From ₹799</span></div></a>
        <a href="bachelorette.html" class="drop-item"><span class="di">👰</span><div class="dt"><span class="dn">Bachelorette/Haldi</span><span class="dp">From ₹1,299</span></div></a>
        <a href="festival.html" class="drop-item"><span class="di">🪔</span><div class="dt"><span class="dn">Festival Decor</span><span class="dp">From ₹999</span></div></a>
        <a href="pet.html" class="drop-item"><span class="di">🐾</span><div class="dt"><span class="dn">Pet Decoration</span><span class="dp">From ₹799</span></div></a>
        <a href="new-opening.html" class="drop-item"><span class="di">🎊</span><div class="dt"><span class="dn">New Opening</span><span class="dp">From ₹1,499</span></div></a>
        <a href="showroom.html" class="drop-item"><span class="di">🏪</span><div class="dt"><span class="dn">Showroom</span><span class="dp">From ₹2,999</span></div></a>
      </div>
    </li>
    <li><a href="gallery.html">Gallery</a></li>
    <li><a href="contact.html">Contact</a></li>
  </ul>
  <div style="display:flex;gap:8px;align-items:center">
    <a href="tel:+917665062706" class="nav-cta" style="background:#e91e8c">📞 Call</a>
    <a href="https://wa.me/917665062706" class="nav-cta" style="background:#25d366">💬 Book Now</a>
  </div>
  <button class="ham" onclick="document.getElementById('mobMenu').classList.toggle('open')"><span></span><span></span><span></span></button>
</nav>

<!-- MOBILE MENU -->
<div class="mob-menu" id="mobMenu">
  <button class="mob-close" onclick="document.getElementById('mobMenu').classList.remove('open')">✕</button>
  <div class="mob-nav-item"><a href="index.html">🏠 Home</a></div>
  <div class="mob-nav-item"><a href="about.html">ℹ️ About</a></div>
  <div class="mob-nav-item">
    <button onclick="this.nextElementSibling.classList.toggle('open')">🎈 Services <span>▼</span></button>
    <div class="mob-sub">
      <a href="birthday.html"><span>🎂</span>Birthday</a>
      <a href="kids-birthday.html"><span>🧒</span>Kids Birthday</a>
      <a href="baby-shower.html"><span>👶</span>Baby Shower</a>
      <a href="anniversary.html"><span>❤️</span>Anniversary</a>
      <a href="first-night.html"><span>💍</span>First Night</a>
      <a href="stage.html"><span>🎪</span>Stage Decoration</a>
      <a href="welcome-baby.html"><span>🍼</span>Welcome Baby</a>
      <a href="naming.html"><span>🌸</span>Naming Ceremony</a>
      <a href="housewarming.html"><span>🏠</span>House Warming</a>
      <a href="corporate.html"><span>🏢</span>Corporate</a>
      <a href="car.html"><span>🚗</span>Car Decoration</a>
      <a href="bachelorette.html"><span>👰</span>Bachelorette/Haldi</a>
      <a href="festival.html"><span>🪔</span>Festival</a>
      <a href="pet.html"><span>🐾</span>Pet Decoration</a>
      <a href="new-opening.html"><span>🎊</span>New Opening</a>
      <a href="showroom.html"><span>🏪</span>Showroom</a>
    </div>
  </div>
  <div class="mob-nav-item"><a href="gallery.html">🖼️ Gallery</a></div>
  <div class="mob-nav-item"><a href="contact.html">📍 Contact</a></div>
  <div style="padding:20px;width:100%;max-width:380px;margin-top:8px;display:flex;flex-direction:column;gap:10px">
    <a href="tel:+917665062706" style="display:block;text-align:center;background:#e91e8c;color:#fff;padding:14px;border-radius:30px;font-weight:700;font-size:15px;text-decoration:none">📞 Call Now</a>
    <a href="https://wa.me/917665062706" style="display:block;text-align:center;background:#25d366;color:#fff;padding:14px;border-radius:30px;font-weight:700;font-size:15px;text-decoration:none">💬 Book Now on WhatsApp</a>
  </div>
</div>'''

folder = os.path.dirname(os.path.abspath(__file__))

for page in pages:
    path = os.path.join(folder, page)
    if not os.path.exists(path):
        print(f"SKIP (not found): {page}")
        continue
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    # Remove existing nav block (from <nav to </nav>)
    # Also remove existing mob-menu block if present
    # Strategy: replace everything between <nav and the first </div>\n after mob-menu close button pattern
    # Use regex to match <nav...> block
    new_content = re.sub(
        r'<nav[\s\S]*?</nav>',
        '',
        content,
        count=1
    )
    # Remove old mob-menu div if present
    new_content = re.sub(
        r'<!-- MOBILE MENU -->[\s\S]*?</div>\s*\n(?=\n|<!--)',
        '',
        new_content,
        count=1
    )
    # Also handle mob-menu without comment
    new_content = re.sub(
        r'<div class="mob-menu"[\s\S]*?(?=\n<!-- |\n<section|\n<div class="page|\n<header)',
        '',
        new_content,
        count=1
    )
    # Insert new nav after <body>
    new_content = re.sub(
        r'(<body[^>]*>)\s*',
        r'\1\n\n' + NEW_NAV.replace('\\', '\\\\') + '\n\n',
        new_content,
        count=1
    )
    with open(path, 'w', encoding='utf-8') as f:
        f.write(new_content)
    print(f"Updated: {page}")

print("\nDone!")
