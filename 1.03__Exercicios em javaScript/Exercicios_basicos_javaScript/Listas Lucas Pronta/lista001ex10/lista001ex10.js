
function caixa(){

    let raio, alt, vol;

    raio = prompt("Digite o raio em metros:");

    alt = prompt("Digite a altura em metros:");

    vol = (3.14*(Math.pow(raio,2)))*alt;

    alert("O volume da caixa d'agua é de: " + (vol).toFixed(2) +" m³");
}
   
caixa();

