
function sombra(){
    
    let comp_sombra_pessoa, comp_sombra_predio, comp_pessoa, comp_predio;

    comp_sombra_pessoa = prompt("Digite o comprimento de sua sombra:\n");

    comp_pessoa = prompt("Digite sua altura:\n");

    comp_sombra_predio = prompt("Digite o comprimento da sombra do predio:\n");

    comp_predio = comp_pessoa*(comp_sombra_predio/comp_sombra_pessoa);

    alert("A altura do predio é de " + (comp_predio).toFixed(2));
}
    
sombra();

