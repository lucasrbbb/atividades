
function horas(){

    

    let hora_normal, hora_extra, salario_bruto, salario_liquido;

    hora_normal = prompt("Digite as horas trabalhadas no mes:");
    
    hora_extra = prompt("Digite as horas extras trabalhadas no mes:");

    salario_bruto = hora_normal*10 + hora_extra*15;
    salario_liquido = salario_bruto*0.9;

    alert("Salario bruto: R$ " + (salario_bruto. toFixed(2)) + "\n" +
          "Salario liquido: R$ " + (salario_liquido. toFixed(2)));
    
}
    
horas();

