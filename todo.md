--------------------------------------------------------------------------------

O que fazer:

    Experimentos com os geradores PLAIN+ e CHAIN+ usando o checker
    pós-silício que ele desenvolveu no TCC.

Objetivo:

    Avaliar o impacto apenas dos geradores PLAIN+ e CHAIN+ com o checker
    pós-silício desenvolvido pelo Gabriel em seu TCC e não com o Checker
    pré-silício usado pelo Gabriel/Marleson no paper do ICCD.

--------------------------------------------------------------------------------

Parâmetros:

    Para avaliar o impacto, você deve gerar uma tabela com o esforço médio de
    verificação e a eficácia para** para
    diferentes valores de:

        - Erros: F1, F2, F3, F4 e f29
        - n: [1Ki, 16Ki]
        - s: 32 (fixo)
        - cbc: (1,s) -- K = 1, s = s
        - abc: 2^6 -- X = 6
        - sbc: true para biasing -- False Sharing = False

--------------------------------------------------------------------------------

O que gerar:

    Gerar a segunda metade da tabela: [Modelo para a tabela](ModeloDeTabela.pdf)

--------------------------------------------------------------------------------

O relatório do TCC a ser submetido à banca deve conter:

    1. A descrição das condições experimentais (set up),
    2. A tabela especificada acima e construída segundo o modelo e
    3. A análise dos resultados experimentais descrito na tabela.

__As seções 6.1 e 6.3.3 tem exemplos de como isso deve ser feito.__
