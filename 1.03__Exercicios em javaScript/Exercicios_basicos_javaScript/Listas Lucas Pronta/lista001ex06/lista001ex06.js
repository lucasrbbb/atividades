
function novelos(){

    let n_lata, n_garrafa, n_2litros;

    n_lata = prompt("Digite o numero de latas compradas: ");

    n_garrafa = prompt("Digite o numero de garrafas 600 ml compradas: ");

    n_2litros = prompt("Digite o numero de garrafas 2 litros compradas: ");
  
    alert("A quantidade de litros comprada foi de: " + ((n_lata*350+ n_garrafa*600+n_2litros*2000)/1000).toFixed(2));

}
    
novelos();

