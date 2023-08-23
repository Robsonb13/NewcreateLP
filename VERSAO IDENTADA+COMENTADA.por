programa {
  /*
  Sistema de Carrinho de Compras
  Curso: 
    T�cnico em Desenvolvimento de Sistemas
  Alunos:
    Denilson Peres da Silva
    Lucas Villani Justo
    Robson Gon�alves Ezequiel
  */
  inclua biblioteca Matematica //biblioteca ser� utilizada para limitar o somat�rio a, no m�ximo, duas casas decimais
  funcao inicio() {
    cadeia produto
    inteiro cod, qtde, pd=0, tc=0, ct=0, mb=0
    real total=0, subtotal=0, arredondamento

    faca {
      //primeira tela do programa: lista de produtos
      faca {
        limpa()
        escreva("--------------------------------------------\n")
        escreva("C�digo      Descri��o             Pre�o\n")
        escreva("1           Pen Drive 32GB       R$49.90\n")
        escreva("2           Teclado USB          R$24.90\n")
        escreva("3           Cartucho HP1220      R$68.90\n")
        escreva("4           Mouse Bluetooth      R$119.90\n")
        escreva("--------------------------------------------\n")
        escreva("Digite o c�digo do produto: ")
        leia(cod)
      } enquanto (cod < 1 ou cod > 4) //verifica se o usu�rio informou um c�digo v�lido, caso inv�lido reiniciar�
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
      //segunda tela do programa: confirma��o de inclus�o do item no carrinho
      escreva("--------------------------------------------\n")
      escreva("Voc� adicionou ao carrinho:\n")
      escreva(qtde , " unidades do produto ", produto, "\n\n" )
      escreva("O que deseja fazer?\n")
      escreva("(1) Adicionar outro produto\n")
      escreva("(2) Ver o carrinho de compras\n")
      leia (cod)
      limpa()
    
      //exibe o carrinho de compras caso o usu�rio digite 2
      se(cod==2){

        escreva("--------------------------------------------\n")
        escreva("Seu carrinho de compras\n\n")
        escreva("Descri��o           Quantidade\n")

        //ser�o listados os produtos e suas respectivas quantidades, caso a quantidade do referido produto seja maior que zero
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

        //tela final do programa: visualiza��o do carrinho de compras
        escreva("Valor total do carrinho: R$ ", subtotal=Matematica.arredondar(subtotal, 2), "\n")
        escreva("--------------------------------------------\n")
        escreva("O que deseja fazer?\n")
        escreva("--------------------------------------------\n")
        escreva("(1) Adicionar outro produto\n")
        escreva("(2) Limpar carrinho de compras\n")
        escreva("(3) Sair\n")
        leia(cod)
        limpa()

        //redefinir os valores das vari�veis caso o usu�rio escolha a op��o 2, limpando o carrinho de compras
        se(cod==2){
          subtotal=0
          pd=0
          tc=0
          ct=0
          mb=0
        } 
      }

      //ser� permitido inserir outro produto no carrinho caso o usu�rio informe a op��o 1
      //ser� permitido come�ar a inserir produtos no carrinho caso o usu�rio informe a op��o 2
    } enquanto (cod==1 ou cod==2)

    //caso o usu�rio tenha escolhido a op��o 3, o programa encerrar�
  }
}
