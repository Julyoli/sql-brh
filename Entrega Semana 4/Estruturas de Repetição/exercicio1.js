//a 
console.log('Par ou ímpar com For');

for (var i = 1; i <= 50; i++) {
    if (i % 2 == 0){
        console.log(i + 'é par');
    } else {
        console.log(i + 'é impar');  
    }
}

console.log();
console.log('Par ou Ímpar com WHILE...');

var i = 1;
while(i <= 50) {
    if(i % 2 == 0) {
        console.log(i + ' é par');
    } else {
        console.log(i + ' é ímpar');
    }
    
    i++;
}

//b
console.log();
console.log('Múltiplos de 3 com FOR...');

for(var j = 1; j <= 100; j++) {
    if(j % 3 == 0) {
        console.log(j);
    } 
} 

console.log();
console.log('Múltiplos de 3 com WHILE...');

var j = 1;
while(j <= 100) {
    if(j % 3 == 0) {
        console.log(j);
    }
    
    j++;
}

//c
console.log();
console.log('Contagem decrescente de 2 em 2 FOR...');

for(var k = 100; k >= 0; k -= 2) {
    console.log(k);
}

console.log();
console.log('Contagem decrescente de 2 em 2 WHILE...');

var k = 100;
while(k >= 0) {
    console.log(k);
    k -= 2;
} 
