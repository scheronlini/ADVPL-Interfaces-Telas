#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exMSPanel
    Criação de dois paineis dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Painel
    @see : MSDialog()     https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...MSPanel   https://tdn.totvs.com/display/tec/@+...+MSPANEL
    /*/

User Function uFMSPanel()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local nColorText
Local nColorFund

nLinIni := 0
nColIni := 0
nLinFim := 400
nColFim := 900
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM nLinIni, nColIni TO nLinFim, nColFim PIXEL

nLinIni := 30
nColIni := 20
nLinFim := 178
nColFim := 160
cTitulo := "Painel 1"
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan1 SIZE nLinFim, nColFim OF oDlg COLOR CLR_BLACK, CLR_HGRAY PROMPT cTitulo

nLinIni := 30
nColIni := 250
nLinFim := 178
nColFim := 160
cTitulo := "Painel 2"
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan2 SIZE nLinFim, nColFim OF oDlg COLOR CLR_BLACK, CLR_HGRAY PROMPT cTitulo

ACTIVATE MsDialog oDlg CENTERED

Return


