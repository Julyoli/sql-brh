var letras = [];

function recebeLetra() {
    var letra = prompt('Digite uma letra:');
    letras.push(letra);
}

for(var i = 1; i <= 10; i++) {
    recebeLetra();
}


console.log(letras)
