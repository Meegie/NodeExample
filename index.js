const { log } = console;

log('Starting...');

const fs = require('fs');

const data = fs.readFileSync('/request.txt', 'utf-8');

console.log('Data: ', data');

try {
  const parsedData = JSON.parse(data);
  console.log('Parsed data: ', parsedData);
} catch(e) {
  console.log('Failed parsing json: ', e);
}
