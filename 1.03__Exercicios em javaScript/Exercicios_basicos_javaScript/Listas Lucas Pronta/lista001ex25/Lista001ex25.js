function calcularHipotenusa(){
    let cateto1, cateto2;

    cateto1 = prompt("Digite a base maior: ");

    cateto2 = prompt("Digite a base menor: ");

    let hipotenusa = Math.sqrt((cateto1*cateto1)+(cateto2*cateto2));

    alert(hipotenusa);

}

calcularHipotenusa()