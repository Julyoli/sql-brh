let idade = parseInt(prompt('Informe a sua idade:'));

if (idade < 16) {
    document.write("Não pode votar");
} else if (idade < 18) {
    document.write("Voto opcional");
} else if (idade < 70) {
    document.write("Voto obrigatório");
} else {
    document.write("Voto opcional");
}