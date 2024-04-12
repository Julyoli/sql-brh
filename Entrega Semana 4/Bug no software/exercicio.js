let raio = 3.5;
let altura = 1.6;

let areaDaBase = Math.PI * (raio * raio);
let volumeEmMetrosCubicos = areaDaBase * altura;
let volumeEmLitros = Math.round(volumeEmMetrosCubicos * 1000);

document.write(volumeEmLitros);
