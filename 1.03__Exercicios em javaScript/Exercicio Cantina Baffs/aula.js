const atendimentos = []
let ativo = true
let despesas = 0

while(ativo){

let saldo = 0

let produto = {
    nome: "",
    preco: 0,
    quantidade:0,
    valorFinal:0,
}

let opcao = parseInt(prompt("Bem vindo à cantina do Lucas.\n"+
                    "Digite a opção desejada.\n"+
                    "1 - Fazer um pedido\n"+
                    "2 - Ver promoções\n"+
                    "3 - Visualizar itens vendidos\n"+
                    "4 - Consultar saldo do caixa\n"+
                    "5 - Consultar lucro\n"+
                    "6 - Consultar numero e tipo de itens vendidos\n"+
                    "7 - Dados de venda produtos\n"+
                    "8 - Encerrar aplicação"))
switch (opcao){
    case 1: 
        let escolha = parseInt(prompt("Digite o numero do pedido\n"+
                                    "1 - Cachorro Quente \n" +
                                    "2- Pastel \n" + 
                                    "3 - Brigadeiro \n" +
                                    "4 - Coca Zero Lata"))
        let custo = 0
                                
        switch (escolha){
            case 1 : 
                produto.nome = "Cachorro Quente"
                produto.quantidade = parseInt(prompt("Digite a quantidade desejada."))
                if (produto.quantidade<2){
                    produto.preco = 8
                }else {
                    produto.preco = 7.5
                }
                produto.valorFinal = produto.quantidade * produto.preco
                custo = produto.quantidade * 4.50
            break
            
            case 2 : 
                produto.nome = "Pastel"
                produto.quantidade = parseInt(prompt("Digite a quantidade desejada."))
                if (produto.quantidade<2){
                    produto.preco = 7
                }else {
                    produto.preco = 6
                }
                produto.valorFinal = produto.quantidade * produto.preco
                custo = produto.quantidade * 4.00
            break

            case 3 : 
                produto.nome = "Brigadeiro"
                produto.quantidade = parseInt(prompt("Digite a quantidade desejada."))
                if (produto.quantidade<5){
                    produto.preco = 2.50
                }else {
                    produto.preco = 2
                }
                produto.valorFinal = produto.quantidade * produto.preco
                custo = produto.quantidade * 1
            break

            case 4 : 
                produto.nome = "Coca Zero"
                produto.quantidade = parseInt(prompt("Digite a quantidade desejada."))
                if (produto.quantidade<2){
                    produto.preco = 5
                }else {
                    produto.preco = 4.50
                }
                produto.valorFinal = produto.quantidade * produto.preco
                custo = produto.quantidade * 2.50
            break

            default:
            break
        }
        atendimentos.push(produto)
        despesas = despesas + custo
    break
    case 2: 
    alert ("Menu de promoções imperdíveis\n"+
            "1 - cachorro quente por 8, 2 por 15 \n" +
            "2 - Pastel por 7, 2 por 12\n" + 
            "3 - Brigadeiro por 2.50, 5 por 10 \n" +
            "4 - Coca Zero Lata por 5, 2 por 9")
    break
    case 3:
        console.table(atendimentos)
    break
    case 4:
        for (let i =0; i<atendimentos.length; i++){
            saldo = saldo + atendimentos[i].valorFinal
        }
        alert("Saldo total de vendas: " + saldo + " reais \n"+
            "Despesas: " + despesas + "reais")
    case 5:
        for (let i =0; i<atendimentos.length; i++){
            saldo = saldo+ atendimentos[i].valorFinal
        }
        alert("Lucro total de vendas: " + (saldo-despesas) + " reais")
    break
    case 6:
        let quantidade = {
            cachorroQuente: 0,
            pastel: 0,
            brigadeiro:0,
            cocaZero:0
        }

        for (let i =0; i<atendimentos.length; i++){
        if(atendimentos[i].nome == "Cachorro Quente"){
            quantidade.cachorroQuente = quantidade.cachorroQuente + atendimentos[i].quantidade 
        }
        if(atendimentos[i].nome == "Pastel"){
            quantidade.pastel = quantidade.pastel + atendimentos[i].quantidade 
        }
        if(atendimentos[i].nome == "Brigadeiro"){
            quantidade.brigadeiro = quantidade.brigadeiro + atendimentos[i].quantidade
        }
        if(atendimentos[i].nome == "Coca Zero"){
            quantidade.cocaZero = quantidade.cocaZero + atendimentos[i].quantidade
        }
        }
        console.table(quantidade)
    break
    case 7:

        let dadosFim = []

        function dadosFinais(nome){
            let dados = {}
            dados.nome = nome
            let item = []

            item = atendimentos.filter(function(dado){
                if(dado.nome == nome)
                return dado
            })

            dados.nome = nome

            dados.quantidade = item.reduce(function(somaQuantidade, elemento){
                return somaQuantidade + elemento.quantidade
            },0)

            dados.somaValor = item.reduce(function(somaFinal, elemento){
                return somaFinal + elemento.valorFinal
            },0)

            if(dados.nome == "Cachorro Quente"){
                dados.despesas = dados.quantidade * 4.50
            } 
            else if(dados.nome == "Pastel"){
                dados.despesas = dados.quantidade * 4
            }
            else if(dados.nome == "Brigadeiro"){
                dados.despesas = dados.quantidade * 1
            } 
            else if(dados.nome == "Coca Zero"){
                dados.despesas = dados.quantidade * 2.50
            } 

            dados.lucro = dados.somaValor-dados.despesas

            return dados

        }

        dadosFim.push(dadosFinais("Cachorro Quente"))
        dadosFim.push(dadosFinais("Pastel"))
        dadosFim.push(dadosFinais("Brigadeiro"))
        dadosFim.push(dadosFinais("Coca Zero"))

        console.table(dadosFim) 
    break
    default: 
    ativo = false
}
}