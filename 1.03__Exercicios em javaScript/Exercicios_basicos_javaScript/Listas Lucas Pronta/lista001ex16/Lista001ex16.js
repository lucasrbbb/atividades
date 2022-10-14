function calculadoraPeso(peso){
    let peso;

    peso = prompt("Digite o pesp: ")

    alert("Novo peso se a pessoa engordar 15%: "+(peso+(peso*0.15)));

    alert("Novo peso se a pessoa emagrecer 20%: "+(peso-(peso*0.20)))
}
calculadoraPeso();