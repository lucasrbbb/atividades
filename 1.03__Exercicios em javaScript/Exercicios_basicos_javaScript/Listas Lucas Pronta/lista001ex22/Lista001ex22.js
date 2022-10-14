function tabuada(numero){
    let numero;

    numero = prompt("Digite o numero");

   alert("A tabuada do numero "+numero+"eh: ");
    for(let i=1;i<=10;i++){
        alert(+numero*i);
    }
}
tabuada();