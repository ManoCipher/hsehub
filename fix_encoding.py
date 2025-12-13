import re

# Read the file
with open(r'c:\fiverr projects\hse new client\new\hse-hub-main\src\pages\RiskAssessments.tsx', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace HTML entities with proper characters
content = content.replace('&amp;gt;', '>')
content = content.replace('&gt;', '>')
content = content.replace('&amp;lt;', '<')
content = content.replace('&lt;', '<')

# Write back
with open(r'c:\fiverr projects\hse new client\new\hse-hub-main\src\pages\RiskAssessments.tsx', 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed HTML entities in RiskAssessments.tsx")
