#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFFolder
    Criação um folder com 5 abas dentro de uma janela do tipo MSDialog com um botão para sair
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Folder
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ...FOLDER https://tdn.engpro.totvs.com.br/display/tec/@+...+FOLDER
    /*/

User Function uFFolder()

Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo

nLinIni := 0
nColIni := 0
nLinFim := 600
nColFim := 800
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM nLinIni, nColIni TO nLinFim , nColFim PIXEL

nLinIni := 260
nColIni := 260
nLinFim := 114
nColFim := 21
cTitulo := "Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 10
nColIni := 15
nLinFim := 260
nColFim := 200
@ nLinIni, nColIni FOLDER oFolder SIZE nLinFim, nColFim OF oDlg  PIXEL

oFolder:AddItem("Pasta 01",.T.)
oFolder:AddItem("Pasta 02",.T.)
oFolder:AddItem("Pasta 03",.T.)
oFolder:AddItem("Pasta 04",.T.)
oFolder:AddItem("Pasta 05",.T.)

ACTIVATE MsDialog oDlg CENTERED

Return
