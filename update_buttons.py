import os
import re

# Files to update (already done: index.html, about.html, anniversary.html, baby-shower.html)
files_to_update = [
    'bachelorette.html', 'birthday.html', 'car.html', 'contact.html',
    'corporate.html', 'faq.html', 'festival.html', 'first-night.html',
    'gallery.html', 'housewarming.html', 'kids-birthday.html', 'naming.html',
    'new-opening.html', 'pet.html', 'privacy-policy.html', 'refund.html',
    'showroom.html', 'stage.html', 'tmp.html', 'welcome-baby.html'
]

base_path = r'c:\Users\Admin\Downloads\baloon'

old_button = r'<a href="https://wa.me/917665062706" class="wa" target="_blank">💬</a>'

new_buttons = '''<!-- Floating Buttons -->
<div class="float-btns">
  <a href="tel:+917665062706" class="float-btn call" title="Call Now">📞</a>
  <a href="https://wa.me/917665062706" class="float-btn wa" target="_blank" title="Chat on WhatsApp">💬</a>
</div>'''

for filename in files_to_update:
    file_path = os.path.join(base_path, filename)
    
    if os.path.exists(file_path):
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Replace old button with new buttons
            if old_button in content:
                updated_content = content.replace(old_button, new_buttons)
                
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(updated_content)
                
                print(f"[OK] Updated: {filename}")
            else:
                print(f"[WARN] Old button not found in: {filename}")
        
        except Exception as e:
            print(f"[ERROR] updating {filename}: {str(e)}")
    else:
        print(f"[WARN] File not found: {filename}")

print("\nAll files processed!")
