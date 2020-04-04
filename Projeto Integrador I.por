programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		cadeia Opcao
		inteiro Base10=0, Base2=0, Dividendo=0, Resto=0, Cont=0, Resposta=0, Z=0, A=0, B=0, C=0, D=0, E=0, F=0, G=0, H=0, P1=0 ,P2=0, P3=0 ,P4=0 ,P5=0, P6=0 ,P7=0
		escreva("Esta calculadoroa converte números inteiros entre o sistema binário e o sistema decimal.\n")
		escreva("Caso seja inserido número na Base 10, este será convertido para Base 2.\n")
		escreva("Caso seja inserido número na Base 2, este será convertido para Base 10.\n")
		escreva("Digite \"A\" para converter decimal para binário e \"B\" para o contrário: ")
		leia(Opcao)
		limpa()
		se(Opcao=="A"){
			escreva("Conversão de Base 10 para Base 2: \n")
			escreva("Digite o valor a ser convertido (até 511): ")
			leia(Base10)
			Dividendo=Base10
			Cont=1
			escreva("O resultado em números binários é o seguinte, a ser lido de trás para frente: ")
			enquanto (Dividendo>=2){
               	Resto=Dividendo%2
               	Dividendo=Dividendo/2
               	se (Cont==1){
               		P1=Resto
               	}se (Cont==2){
               		P2=Resto
               	}se (Cont==3){
               		P3=Resto
               	}se (Cont==4){
               		P4=Resto
               	}se (Cont==5){
               		P5=Resto
               	}se (Cont==6){
               		P6=Resto
               	}se (Cont==7){
               		P7=Resto
               	}   
          	Cont++                                              
          	}
			escreva(Dividendo)
          	se (Cont>7){
          		escreva(P7)
          	}se (Cont>6){
          		escreva(P6)
          	}se (Cont>5){
          		escreva(P5)
          	}se (Cont>4){
          		escreva(P4)          	
          	}se (Cont>3){
          		escreva(P3)
          	}se (Cont>2){
          		escreva(P2)
          	}se (Cont>1){
          		escreva(P1)         	          	          	 
          	}
		}senao{
			se(Opcao=="B"){
				escreva("Conversão de Base 2 para Base 10: \n")
				escreva("Digite o valor a ser convertido (Até 8 dígitos): ")
				leia(Base2)
				Z=Base2%2
				A=(Base2/10)%2; H=(Base2/100000000)%2
				B=(Base2/100)%2; G=(Base2/10000000)%2
				C=(Base2/1000)%2; F=(Base2/1000000)%2
				D=(Base2/10000)%2; E=(Base2/100000)%2
				se (Base2<10){
				Resposta=Z
				}senao se (Base2<100){
				Resposta=(2*A+Z)
				}senao se (Base2<1000){
				Resposta=(4*B+2*A+Z)
				}senao se (Base2<10000){
				Resposta=(8*C+4*B+2*A+Z)
				}senao se (Base2<100000){
				Resposta=(16*D+8*C+4*B+2*A+Z)
				}senao se (Base2<1000000){
				Resposta=(32*E+16*D+8*C+4*B+2*A+Z)
				}senao se (Base2<10000000){
				Resposta=(64*F+32*E+16*D+8*C+4*B+2*A+Z)
				}senao se (Base2<100000000){
				Resposta=(128*G+64*F+32*E+16*D+8*C+4*B+2*A+Z)
				}senao se (Base2<1000000000){
				Resposta=(256*H+128*G+64*F+32*E+16*D+8*C+4*B+2*A+Z)
				}senao{
				escreva("O número extrapola a capacidade da calculadora")}
				escreva("O resultado em números decimais é: ",Resposta)
			}senao{
				escreva("A opção selecionada não existe.")
				}
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2923; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */