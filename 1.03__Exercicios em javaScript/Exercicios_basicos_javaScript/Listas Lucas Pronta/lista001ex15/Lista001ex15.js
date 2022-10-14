function salarioFinal (){
    let salarioFinal, vendas;

    vendas = prompt("Digite as vendas");

    salarioFinal = prompt("Digite o salario fixo");

    alert("Comissao: R$"+vendas*0.04);

    alert("Salario final: R$"+(salariofixo+(vendas*0.04)));
}
salarioFinal();