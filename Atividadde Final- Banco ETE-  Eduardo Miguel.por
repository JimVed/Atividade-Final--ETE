/* Atividade final: Banco ETE.	
Aluno: Eduardo (Jim) Miguel da silva Junior 	
Turma: 1°A - DS - Subsequente
Prof.: SILVIO MONTE 	 	
                                                              Lógica de Programação

 				
        1 - Apenas um cliente por execução;
        2 - Ao criar conta corrente, obrigatório perguntar se deseja realizar deposito inicial e criar automaticamente conta poupança;
        3 - Necessário saldo para transferência entre contas;
        4 - As contas precisam ter: nome titular, agência, número da conta e dígito verificador;
        5 - Operações na CC: saque, depósito e exibir conta;
        6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
        7 - Comentar todo trecho do código.
        8 - Postar no GitHub
        
*/   

    programa
{  
        
     

     //Começo
        
        funcao inicio()
	{
	
	// Entrada das Variaveis 

			cadeia titular
		
			
			inteiro opcao,  digitoCC , contaCorrente =0, contador
			     //digitoCC = Digito ContaCorrente
			real valor, saldoInicial = 0.0, saldoCC  = 0.0, saldoCP = 0.0
			
			     //  saldoCC = Saldo Conta Corrente; saldoCP = Saldo Conta poupança    
			                   
			logico menu = verdadeiro, usuario = falso

	//Esta será a tela incial.
	
	          faca {
					escreva(" ==================== BANCO ETE ===================="+"\n")
				 	escreva("|                                                   |"+"\n") 				
				 	escreva("|Escolha uma opção:                                 |"+"\n")
				 	escreva("|1. Criar Conta                                     |"+"\n") 				
				 	escreva("|2. Consultar Saldo                                 |"+"\n")
				 	escreva("|3. Saque da Conta Corrente                         |"+"\n") 				
				 	escreva("|4. Transferência entre contas                      |"+"\n") 				
				 	escreva("|5. Depósito Conta Corrente                         |"+"\n")
				 	escreva("|6. Resgate                                         |"+"\n") 				
				 	escreva("|7. Sair                                            |"+"\n")
				 	escreva(" =================================================="+"\n")
				 	leia(opcao)
				 	limpa()

		 		     escolha(opcao){

	               //Criação da conta do titular.

		 			caso 1: 
						escreva("Insira o Nome do Titular: ")
						leia(titular)
						
						escreva("\nBem-vindo(a) ao Banco ETE, " + titular + "!" + "\n")

						
						
						 // Esta foi a forma que encontrei de garantir que o usuário informe apenas 4 número para agência.
						//Aqui, veremos uma estrutura de repetição. 
						
				inteiro agencia[5]
			
				 para (inteiro i = 1; i < 5; i++){
	                  	escreva ("Você precisará informar 4 números para compor sua agência" + "\n" + "informe o " + i+ "° número: ")
					           	leia (contador)
					           	enquanto (contador >= 10){
					           		escreva ("Por favor, digite apenas 1 número por vez.")
					           		leia (contador)
					               	}
					                agencia[i] = contador
					               }
					           limpa()
					    
					
					        escreva("\n\n")
					       
					
						// Agora, uma forma de garantir apenas 5 números.
						
                               inteiro contaCorrenteVerificador [6], contador2
                               
                               para (inteiro H =1; H <6; H++){
                               	escreva ("Você precisará informar 5 números para compor Conta Corrente" + "\n" + "informe o " + H+ "° número (apenas 1 número): ")
                               	
                               	leia (contador2)
                               	enquanto(contador2 >= 10){
                               		escreva("Por favor, digite apenas 1 número por vez.")
                               		leia(contador2)
                               		}
                               	contaCorrenteVerificador [H] = contador2
                               	 }
                               	limpa()
                               	
                                    	

						// Aqui, iremos ler o dígito verificador
						escreva("\nDigite o Número Verificador da sua conta (apenas 1 número) :\n")
						leia(digitoCC)
						enquanto(digitoCC >=10){
						escreva("\nDigite o Número Verificador da sua conta (apenas 1 número) :\n")
						
						leia(digitoCC)
						}
						limpa()

						
				// Definição da conta do titular
				
						escreva("\nConta Corrente criada com sucesso!", "\n")
						usuario = verdadeiro
						escreva ("Estes são os números da agência:" + "\t")
						 para(inteiro i=1; i < 5; i++){
						 	
					          escreva(  agencia[i] + "\t" )
					         
					           
					        }
					        
					        escreva("\n")
					        escreva("Estes são os números da conta Corrente:" + "\t")
					        para(inteiro k=1; k<6; k++){
					        	escreva (+ contaCorrenteVerificador[k]+ "\t")}
					        	escreva("-  " + digitoCC)
					       escreva("\n")
					       
						
						escreva("Saldo da conta: R$" + saldoInicial + "\n")
				

				//Realização do primeiro depósito
				//Aqui, colocarei uma condição para evitar que o usuário informe valores inválidos.

				
				        inteiro deposito =0
				         
			      		escreva("Você gostaria de realizar  um deposito inicial na sua conta?" + "\n" + "1 - SIM / 2 - NÃO\n ")
			      		
			     		leia(deposito)
			     		enquanto(deposito >2){
			     			escreva("por favor, informe 1 ou 2."+ "\n" +"Você gostaria de realizar  um deposito inicial na sua conta?" + "\n" + "1 - SIM / 2 - NÃO\n" )
			     			leia(deposito)
			     			   }
			     		
                               
	     		escolha(deposito){

	     	             caso 1:
				     		escreva("\nQual valor você deseja depositar? R$ ")
					 		leia(valor)
					 		saldoCC = saldoCC + valor
					   		escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
					   		escreva("\n")
					   		pare
	     			
	     		        caso 2:
				     		escreva("\nDeseja escolher outra opçao do nosso menu?" + "\n" + "1 - SIM; 2 - NÃO\n")
				     		inteiro parar
				     		leia(parar)

	     		       escolha(parar){

	     		              caso 1:
					     		escreva("\nEscolha outra opção do nosso menu.\n")
					     		pare

	     		              caso 2:
					     		escreva("\nDigite 7 para SAIR.\n")
					     		pare
					     			
					     		}

	     		pare
	     		     }
	     		pare


                     //Fim do Primeiro caso do MENU
                     //Iremos entrar no segundo caso do MENU

                     
	     		                                      //Consultar saldo

	     		

	     		caso 2:
	     		        se (usuario == falso) {
	     		        	escreva("\nSinto muito, mas você precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     				
	     				pare
	     				}

	     			   senao
			     		escreva("Seu saldo da Conta Corrente é de: " + saldoCC + "\n")
						escreva("Seu saldo da Conta Poupança é de: " + saldoCP + "\n")
			     		pare

	     		
                     // Fim do segundo caso do MENU.

                     //Iremos entrar no terceiro caso do MENU.

                     
	     		                                 //Saque da conta Corrente

	     		caso 3:
	     			 se (usuario == falso) {
	     			  	escreva("\nDesculpe, mas você precisa de uma conta para acessar ao banco.\n")
	     			  	escreva("\n")
	     			  	
		     			pare
		     			}

		     		senao
		     			limpa()
	     				escreva("\nQual valor você desejaria sacar? \n")
	     				leia(valor)
	     		    
	     			se((saldoCC - valor) >= 0){
						saldoCC = saldoCC - valor
						escreva("Seu saldo atual é de: R$ " + saldoCC + "\n")
	     				}
	     			senao
	     			escreva("\nSaldo invalido para saque! \n")
	     			pare

	     			
                     //Fim do terceiro caso do MENU.
                     //Iremos entrar no quarto caso do MENU. 
                     
	     								//Transferência entre contas 

	     		caso 4:
	     			se (usuario == falso) {
	     				escreva("\nSinto muito, mas precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     				
	     				pare
	     				}
	     				
	     			senao	     		 
	     				escreva("\nQual valor que deseja transferir? \n")
						leia(valor)

					se(valor <= 0){
						escreva("Desculpe, mas não é possível aplicar valor igual ou menor que zero")}
				 
					senao se ((saldoCC - valor) >= 0){
			 			saldoCC =  saldoCC -valor
			 			saldoCP = saldoCP + valor
			   			escreva("\nSeu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
			   			escreva("\nSeu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
			   			} 
			   	     senao
			   			escreva("\nValor insuficiente na Conta Correte para transferir para Conta Poupança.\n")
			   			pare

			   			
          		//Fim do quarto caso do MENU.
          		//Iremos iniciar o quinto caso do MENU
          		
			     							//Deposito Conta Corrente

			     caso 5:			     
			     	se (usuario == falso) {
	     				escreva("\nSinto Muito, mas você precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     					     			
	     				pare
	     			}

	     			senao
	     				limpa()
	     				escreva("\nQual valor você deseja depositar? R$ ")
		 				leia(valor)
		 				saldoCC = saldoCC + valor
		   				escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
		   				escreva("\n")
		   				pare
   			     //Fim do quinto caso do MENU.
   			     //Iremos iniciar o sexto caso do MENU.
   			     
			     								//Resgate

			     caso 6:
			     	se (usuario == falso) {
	     				escreva("\nSinto muito, mas você precisa de uma conta para acessar ao banco.\n")
	     				escreva("\n")
	     					     			
	     				pare
	     				}

	     			senao
			     		escreva("\nQual valor você desejaria resgatar? \n")
						leia(valor)
				 
					se((saldoCP - valor) >= 0){
										
			 			saldoCC = saldoCC + valor
			 			saldoCP = saldoCP - valor
			   			escreva("\nSeu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
			   			escreva("\nSeu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
					}
			   				pare
                     //Fim do sexto caso do MENU.
                     //Iremos entrar no sétimo e último caso do MENU.
                     
			     									//Sair

			     caso 7:	     			
			    		 escreva("\n Espero te ver em breve. Até mais!\n")
     				 menu = falso
     				 
			   		 pare
	     				
		 	     } 
		 	
	          }    enquanto(menu == verdadeiro) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */