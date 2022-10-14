
function moedas(){

    let c1, c5, c10, c25, c50, c100;

    c1 = prompt("Digite o numero de moedas de 1 centavo:");

    c5 = prompt("Digite o numero de moedas de 5 centavo:");

    c10 = prompt("Digite o numero de moedas de 10 centavo:");

    c25 = prompt("Digite o numero de moedas de 25 centavo:");

    c50 = prompt("Digite o numero de moedas de 50 centavo:");

    c100 = prompt("Digite o numero de moedas de 1 real:");

    alert("O valor economizado foi de " + (c1*0.01 + c5*0.05 + c10*0.10 + c25*0.25 + c50*0.5 + c100*1.00).toFixed(2) + " reais");

}
    
moedas();

