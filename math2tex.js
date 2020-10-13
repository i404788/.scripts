const asciimath2latex = require('asciimath-to-latex')
const readline = require('readline')

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.on('line', (line) => {
  console.log(asciimath2latex(line))
})
