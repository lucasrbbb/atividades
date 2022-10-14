function areaTrapezio(){
    let baseMaior,baseMenor,altura;

    baseMaior = prompt("Digite a base maior: ");

    baseMenor = prompt("Digite a base menor: ");

    altura = prompt("Digite a altura: ");

    alert("A area do trapezio eh: "+(((baseMaior+baseMenor)*altura)/2)+ " m²");
}
areaTrapezio();