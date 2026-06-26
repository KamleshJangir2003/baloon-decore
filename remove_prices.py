import os, re

folder = r'c:\Users\Admin\Downloads\baloon'
html_files = [f for f in os.listdir(folder) if f.endswith('.html')]

for fname in html_files:
    path = os.path.join(folder, fname)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()

    original = content

    # 1. dcard-price span: <span class="dcard-price">₹... onwards</span>
    content = re.sub(r'\s*<span class="dcard-price">.*?</span>', '', content)

    # 2. dcard-meta div if now empty (only had price + tag, remove whole meta if price gone)
    # Keep dcard-tag but remove dcard-meta wrapper if needed - just remove price span (done above)

    # 3. page-header <p> with starting/from price text
    content = re.sub(r'(starting|from) ₹[\d,]+\.?', '', content, flags=re.IGNORECASE)

    # 4. Hero slider price badge
    content = re.sub(r'\s*<div class="hslide-price">.*?</div>', '', content)

    # 5. cat-price
    content = re.sub(r'\s*<div class="cat-price">.*?</div>', '', content)

    # 6. dropdown dp span
    content = re.sub(r'<span class="dp">.*?</span>', '', content)

    # 7. prod-price and prod-strike
    content = re.sub(r'\s*<span class="prod-price">.*?</span>', '', content)
    content = re.sub(r'\s*<span class="prod-strike">.*?</span>', '', content)

    # 8. wedding small card prices
    content = re.sub(r'<p>Starting ₹[\d,]+</p>', '', content)

    # 9. Any remaining ₹ price patterns
    content = re.sub(r'Starting ₹[\d,]+', '', content)
    content = re.sub(r'From ₹[\d,]+', '', content)
    content = re.sub(r'₹[\d,]+ onwards', '', content)

    if content != original:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f'Updated: {fname}')
    else:
        print(f'No change: {fname}')
