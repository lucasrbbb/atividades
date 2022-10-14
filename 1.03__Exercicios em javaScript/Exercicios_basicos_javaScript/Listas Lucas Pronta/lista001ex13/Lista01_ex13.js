function mediaponderada(){

    let n1, n2, peso1, peso2;

    n1 = prompt("Digite o primerio numero");

    peso1 = prompt("Digite o primerio peso");

    n2 = prompt("Digite o segundo numero");

    peso2 = prompt("Digite o segundo peso");

    console.log("Media ponderada: "+(((peso1*n1)+(peso2*n2))/(peso1+peso2)));
}

mediaponderada();