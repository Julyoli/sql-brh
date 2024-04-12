let nome ='João Pereira';
let telefone = '(011) 99123-4567';
let possuiConvenioMedico = false; 
let profissao = 'programador';
let salario = 10.456;
let mensagem;

if (possuiConvenioMedico) {
    mensagem = `O ${nome} é ${profissao}, recebe salário de ${salario} seu telefone de contato é ${telefone}. Ele possui convênio`;
} else {
    mensagem = `O ${nome} é ${profissao}, recebe salário de ${salario} seu telefone de contato é ${telefone}. Ele não possui convênio`;
}

document.write (mensagem);
console.log (mensagem);


