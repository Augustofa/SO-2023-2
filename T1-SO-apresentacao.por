programa {
  funcao inicio() {
    inteiro numProcessos, i, tempo = 0, tempoTotal = 0, ultimaChegada = -1, ultimaChegadaPos = -1
    cadeia nomes[15]
    inteiro temposUso[15], temposChegada[15]

    escreva("Insira o número de Processos: ")
    leia(numProcessos)

    // Inserção dos dados
    para(i = 0; i < numProcessos; i++){
      escreva("Insira o nome do Processo: ")
      leia(nomes[i])
    
      escreva("Insira o tempo de uso do Processo: ")
      leia(temposUso[i])
      tempoTotal = tempoTotal + temposUso [i]

      escreva("Insira o tempo de chegada do Processo: ")
      leia(temposChegada[i])

      se(temposChegada[i] > ultimaChegada){
      	ultimaChegada = temposChegada[i]
      	ultimaChegadaPos = i
      }
    }

    // Tempo total de execução = chegada do último processo + sua duração
    se(ultimaChegada + temposUso[ultimaChegadaPos] > tempoTotal){
    	 tempoTotal = ultimaChegada + temposUso[ultimaChegadaPos]
    }

    escreva("\nProcessos inseridos:\n")
    para(i = 0; i < numProcessos; i++){
		escreva("Nome: ", nomes[i], " Tempo de Uso: ", temposUso[i], " Tempo de Chegada: ", temposChegada[i], "\n")
    }
    escreva("\n")

    inteiro menorPos = -1, menorTempo = -1
    enquanto(tempo < tempoTotal){
	 // Descobre qual processo que já chegou na fila com menor tempo
      para(i = 0; i < numProcessos; i++){
        	se(temposChegada[i] <= tempo e temposUso[i] > 0){
          	se(temposUso[i] < menorTempo ou menorTempo == -1){
            		menorPos = i
            		menorTempo = temposUso[i]
          	}
        	}
      }
      se (menorPos == -1) { 
      	escreva ("Tempo: ", tempo, " - nenhum processo \n")
      }
      senao {
      	escreva("Tempo: ", tempo, " - Processo: ", nomes [menorPos], "(" , temposUso[menorPos], ")\n")
      	temposUso[menorPos]--
      	se(temposUso[menorPos] == 0){
      		menorTempo = -1
      		menorPos = -1
      	}
      }
      tempo++
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1847; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {temposUso, 5, 12, 9}-{temposChegada, 5, 27, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */