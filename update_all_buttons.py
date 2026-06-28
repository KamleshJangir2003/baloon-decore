import os
import re

# List of all HTML files to update
html_files = [
    'about.html',
    'anniversary.html',
    'baby-shower.html',
    'bachelorette.html',
    'birthday.html',
    'car.html',
    'contact.html',
    'corporate.html',
    'faq.html',
    'festival.html',
    'first-night.html',
    'gallery.html',
    'housewarming.html',
    'kids-birthday.html',
    'naming.html',
    'new-opening.html',
    'pet.html',
    'privacy-policy.html',
    'refund.html',
    'showroom.html',
    'stage.html',
    'welcome-baby.html'
]

def update_nav_buttons(content):
    """Update navigation bar buttons"""
    # Replace single Book Now button with Call + Book Now
    pattern = r'<a href="https://wa\.me/917665062706" class="nav-cta">💬 Book Now</a>'
    replacement = '''<div style="display:flex;gap:8px;align-items:center">
    <a href="tel:+917665062706" class="nav-cta" style="background:#e91e8c">📞 Call</a>
    <a href="https://wa.me/917665062706" class="nav-cta" style="background:#25d366">💬 Book Now</a>
  </div>'''
    content = re.sub(pattern, replacement, content)
    return content

def update_mobile_menu_buttons(content):
    """Update mobile menu buttons"""
    # Find and replace mobile menu WhatsApp button
    pattern = r'<div style="padding:20px;width:100%;max-width:380px;margin-top:8px">\s*<a href="https://wa\.me/917665062706"[^>]*>💬 Book Now on WhatsApp</a>\s*</div>'
    replacement = '''<div style="padding:20px;width:100%;max-width:380px;margin-top:8px;display:flex;flex-direction:column;gap:10px">
    <a href="tel:+917665062706" style="display:block;text-align:center;background:#e91e8c;color:#fff;padding:14px;border-radius:30px;font-weight:700;font-size:15px;text-decoration:none">📞 Call Now</a>
    <a href="https://wa.me/917665062706" style="display:block;text-align:center;background:#25d366;color:#fff;padding:14px;border-radius:30px;font-weight:700;font-size:15px;text-decoration:none">💬 Book Now on WhatsApp</a>
  </div>'''
    content = re.sub(pattern, replacement, content, flags=re.DOTALL)
    return content

def update_cta_buttons(content):
    """Update CTA section buttons"""
    # Main CTA section
    pattern1 = r'<a href="https://wa\.me/917665062706" class="bw">💬 WhatsApp Us Now</a>\s*<span class="ph">Or call us: <a href="tel:\+917665062706">\+91 76650 62706</a></span>'
    replacement1 = '''<div style="display:flex;gap:14px;flex-wrap:wrap;justify-content:center">
    <a href="tel:+917665062706" style="background:#e91e8c;color:#fff;padding:14px 36px;border-radius:30px;font-weight:700;font-size:15px;text-decoration:none;display:inline-flex;align-items:center;gap:8px;box-shadow:0 8px 26px rgba(233,30,140,.3);transition:.2s">📞 Call Now</a>
    <a href="https://wa.me/917665062706" class="bw">💬 WhatsApp Us Now</a>
  </div>
  <span class="ph" style="margin-top:14px">Available: <a href="tel:+917665062706">+91 76650 62706</a></span>'''
    content = re.sub(pattern1, replacement1, content)
    
    # Green CTA section
    pattern2 = r'<a href="https://wa\.me/917665062706" class="gcta-wa">💬 Chat on WhatsApp</a>'
    replacement2 = '''<div style="display:flex;gap:12px;flex-wrap:wrap;justify-content:center">
    <a href="tel:+917665062706" style="display:inline-flex;align-items:center;gap:10px;background:#e91e8c;color:#fff;padding:15px 40px;border-radius:35px;font-size:16px;font-weight:700;text-decoration:none;box-shadow:0 6px 24px rgba(233,30,140,.4);transition:.2s">📞 Call Now</a>
    <a href="https://wa.me/917665062706" class="gcta-wa">💬 Chat on WhatsApp</a>
  </div>'''
    content = re.sub(pattern2, replacement2, content)
    
    return content

def update_footer_buttons(content):
    """Update footer buttons"""
    pattern = r'<div style="margin-top:14px">\s*<a href="https://wa\.me/917665062706"[^>]*>💬 Chat on WhatsApp</a>\s*</div>'
    replacement = '''<div style="margin-top:14px;display:flex;flex-direction:column;gap:8px">
        <a href="tel:+917665062706" style="background:#e91e8c;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600;display:inline-flex;align-items:center;gap:7px;justify-content:center">📞 Call Now</a>
        <a href="https://wa.me/917665062706" style="background:#25d366;color:#fff;padding:10px 20px;border-radius:22px;text-decoration:none;font-size:13px;font-weight:600;display:inline-flex;align-items:center;gap:7px;justify-content:center">💬 Chat on WhatsApp</a>
      </div>'''
    content = re.sub(pattern, replacement, content, flags=re.DOTALL)
    return content

def update_service_cards(content):
    """Ensure service cards have both buttons"""
    # This pattern looks for existing card-btns and ensures both buttons exist
    if '.card-btns' not in content and '.btn-call' not in content:
        # Add CSS for card buttons if not present
        css_insert = '''/* CARD BUTTONS */
.card-btns{display:flex;gap:8px;margin-top:12px}
.btn-call,.btn-wa{flex:1;padding:8px 16px;border-radius:20px;font-size:12px;font-weight:600;text-decoration:none;display:inline-flex;align-items:center;justify-content:center;gap:6px;transition:.2s}
.btn-call{background:#e91e8c;color:#fff;border:1.5px solid #e91e8c}
.btn-wa{background:#25d366;color:#fff;border:1.5px solid #25d366}
.btn-call:hover{background:#c41678;border-color:#c41678}
.btn-wa:hover{background:#1aad54;border-color:#1aad54}

'''
        # Insert before closing </style> tag
        content = content.replace('</style>', css_insert + '</style>')
    
    return content

# Process each file
base_path = r'c:\Users\Admin\Downloads\baloon'
updated_count = 0

for filename in html_files:
    filepath = os.path.join(base_path, filename)
    
    if not os.path.exists(filepath):
        print(f"⚠️  File not found: {filename}")
        continue
    
    try:
        # Read file
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Apply all updates
        original_content = content
        content = update_nav_buttons(content)
        content = update_mobile_menu_buttons(content)
        content = update_cta_buttons(content)
        content = update_footer_buttons(content)
        content = update_service_cards(content)
        
        # Write back only if changes were made
        if content != original_content:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"✅ Updated: {filename}")
            updated_count += 1
        else:
            print(f"⏭️  No changes needed: {filename}")
    
    except Exception as e:
        print(f"❌ Error updating {filename}: {str(e)}")

print(f"\n🎉 Total files updated: {updated_count}/{len(html_files)}")
print("Done! Ab sabhi pages mein Call + WhatsApp buttons aa gaye hain! 📞💬")
