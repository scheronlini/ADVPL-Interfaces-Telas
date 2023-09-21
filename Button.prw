#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFButton
   Criação de um botão dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Botão
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
    /*/

User Function uFButton()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo

nLinIni := 0
nColIni := 0
nLinFim := 400
nColFim := 900
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni , nColIni TO nLinFim, nColFim PIXEL

nLinIni := 150
nColIni := 300
nLinFim := 114
nColFim := 21
cTitulo := "Botao para Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
