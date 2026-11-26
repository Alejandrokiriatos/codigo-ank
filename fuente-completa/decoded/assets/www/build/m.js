const fs=require('fs');
const t=fs.readFileSync('main.js','utf8');
const i=t.indexOf('9607:"about"');
console.log(t.slice(Math.max(0,i-1400), i+300));
