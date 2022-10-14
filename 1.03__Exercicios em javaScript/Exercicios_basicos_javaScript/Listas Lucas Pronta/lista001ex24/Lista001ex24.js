function pagamento(){
    let salario;

    salario = prompt("Digite o valor do salario");

    alert("Valor restante:R$ "+(salario-(320*1.02)));
}

pagamento();