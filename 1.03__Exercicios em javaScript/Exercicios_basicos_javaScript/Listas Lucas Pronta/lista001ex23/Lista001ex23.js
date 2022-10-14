function calculoIdade(){
    let ano, anoAtual;

    ano = prompt("Digite o ano: ");

    anoAtual = prompt("Digite o ano atual: ");

    alert("Idade em anos: " +(anoAtual-ano) + "\n" + 
    "Idade em meses: "+((anoAtual-ano)*12 + "\n" + 
    "Idade em semanas: "+((((anoAtual-ano)*12)*30)/7 + "\n" +
    "Idade em dias: "+(((anoAtual-ano)*12)*30))));
}
calculoIdade();