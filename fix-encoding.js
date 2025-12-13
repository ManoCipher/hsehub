const fs = require('fs');

const filePath = 'c:\\fiverr projects\\hse new client\\new\\hse-hub-main\\src\\pages\\RiskAssessments.tsx';

// Read file
let content = fs.readFileSync(filePath, 'utf8');

// Fix HTML entities
content = content.replace(/&amp;gt;/g, '>');
content = content.replace(/&gt;/g, '>');
content = content.replace(/&amp;lt;/g, '<');
content = content.replace(/&lt;/g, '<');

// Write back
fs.writeFileSync(filePath, content, 'utf8');

console.log('Fixed HTML entities!');
