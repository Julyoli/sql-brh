var letras = [];

function recebeLetra() {
    var letra = prompt('Digite uma letra:');
    letras.push(letra);
}

for(var i = 1; i <= 10; i++) {
    recebeLetra();
}

console.log('a)' + letras[0])
console.log('b)' + letras[3])
console.log('c)' + letras[4])
console.log('d)' + letras[letras.length - 1])
console.log('e)' + letras.length)