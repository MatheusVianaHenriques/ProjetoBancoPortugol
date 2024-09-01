programa {
  funcao inicio() {
    //Menu atividade 07/08/24
    inteiro controladorMenu = 1
    real saldo = 0
    
    real saque
    real deposito
    cadeia extrato = ""
    //escolhedor
    enquanto(controladorMenu!=0){
       escreva("---------------MENU--------------\n")
       escreva("0-->SAIR","\n")
       escreva("1-->SALDO","\n")
       escreva("2-->SAQUE","\n")
       escreva("3-->DEBITO","\n")
       escreva("4-->EXTRATO","\n")
       escreva("-----------------------------------\n")
       escreva("OPÇÃO: ")
       leia(controladorMenu)
       limpa()
    
      escolha(controladorMenu){
       caso 0:
        pare
       caso 1:
       //Saldo

       escreva("SALDO = R$",saldo,"\n")

       pare
       caso 2:
       //Saque

       escreva("Digite o valor do Saque: ")
       leia(saque)
       limpa()
       se(saldo<saque){
        escreva("Saldo Insuficiente!\n")
       }
       senao se (saque<=0){
        escreva("Não autorizado, digite um valor valido.\n")
       }
       senao{
        saldo = saldo - saque
        escreva("Saque realizado com sucesso!\n")
        escreva("R$",saque,"foram sacados!\n")
        extrato +=  "SAQUE---------R$"+ saque + "\n"
       }
       pare
       caso 3:
       //Deposito
       escreva("Digite o valor do Deposito: ")
       leia(deposito)
       se(deposito<=0){
        escreva("Valor Invalido!\n")
       }
       senao{
        saldo = saldo + deposito
        escreva("Deposito Realizado com sucesso!\n")
        escreva(deposito,"R$ foram depositados!\n")
        extrato +=  "DEPOSITO---------R$"+ deposito + "\n"
       }
       pare
       caso 4:
       //Extrato
       escreva(extrato)
       pare
     }
    }
}
  }
