programa {
  /*
  Sistema de Carrinho de Compras
  Curso: 
    Técnico em Desenvolvimento de Sistemas
  Alunos:
    Denilson Peres da Silva
    Lucas Villani Justo
    Robson Gonçalves Ezequiel
  */
  inclua biblioteca Matematica //biblioteca será utilizada para limitar o somatório a, no máximo, duas casas decimais
  funcao inicio() {
    cadeia produto
    inteiro cod, qtde, pd=0, tc=0, ct=0, mb=0
    real total=0, subtotal=0, arredondamento

    faca {
      //primeira tela do programa: lista de produtos
      faca {
        limpa()
        escreva("--------------------------------------------\n")
        escreva("Código      Descrição             Preço\n")
        escreva("1           Pen Drive 32GB       R$49.90\n")
        escreva("2           Teclado USB          R$24.90\n")
        escreva("3           Cartucho HP1220      R$68.90\n")
        escreva("4           Mouse Bluetooth      R$119.90\n")
        escreva("--------------------------------------------\n")
        escreva("Digite o código do produto: ")
        leia(cod)
      } enquanto (cod < 1 ou cod > 4) //verifica se o usuário informou um código válido, caso inválido reiniciará
      escreva("--------------------------------------------\n")
      escreva("Digite a quantidade do produto: ") 
      leia(qtde)
      
      // realiza a soma dos valores de acordo com a quantidade escolhida de cada produto
      escolha(cod) { 
        caso 1:
          subtotal = subtotal+49.9*qtde 
          produto = "Pen Drive 32GB"
          pd = pd+qtde
          pare
        caso 2:
          subtotal = subtotal+24.9*qtde 
          produto = "Teclado USB"
          tc = tc+qtde
          pare
        caso 3:
          subtotal = subtotal+68.9*qtde 
          produto = "Cartucho HP1220"
          ct = ct+qtde
          pare
        caso 4:
          subtotal = subtotal+119.9*qtde 
          produto = "Mouse Bluetooth"
          mb = mb+qtde
          pare

      } limpa()
      //segunda tela do programa: confirmação de inclusão do item no carrinho
      escreva("--------------------------------------------\n")
      escreva("Você adicionou ao carrinho:\n")
      escreva(qtde , " unidades do produto ", produto, "\n\n" )
      escreva("O que deseja fazer?\n")
      escreva("(1) Adicionar outro produto\n")
      escreva("(2) Ver o carrinho de compras\n")
      leia (cod)
      limpa()
    
      //exibe o carrinho de compras caso o usuário digite 2
      se(cod==2){

        escreva("--------------------------------------------\n")
        escreva("Seu carrinho de compras\n\n")
        escreva("Descrição           Quantidade\n")

        //serão listados os produtos e suas respectivas quantidades, caso a quantidade do referido produto seja maior que zero
        se(pd>0){
          escreva("Pen Drive 32GB        ", pd, "\n")
        }
        se(tc>0){
          escreva("Teclado USB           ", tc, "\n")
        }
        se(ct>0){
          escreva("Cartucho HP1220       ", ct, "\n")
        }
        se(mb>0){
          escreva("Mouse Bluetooth       ", mb, "\n")
        }

        //tela final do programa: visualização do carrinho de compras
        escreva("Valor total do carrinho: R$ ", subtotal=Matematica.arredondar(subtotal, 2), "\n")
        escreva("--------------------------------------------\n")
        escreva("O que deseja fazer?\n")
        escreva("--------------------------------------------\n")
        escreva("(1) Adicionar outro produto\n")
        escreva("(2) Limpar carrinho de compras\n")
        escreva("(3) Sair\n")
        leia(cod)
        limpa()

        //redefinir os valores das variáveis caso o usuário escolha a opção 2, limpando o carrinho de compras
        se(cod==2){
          subtotal=0
          pd=0
          tc=0
          ct=0
          mb=0
        } 
      }

      //será permitido inserir outro produto no carrinho caso o usuário informe a opção 1
      //será permitido começar a inserir produtos no carrinho caso o usuário informe a opção 2
    } enquanto (cod==1 ou cod==2)

    //caso o usuário tenha escolhido a opção 3, o programa encerrará
  }
}
