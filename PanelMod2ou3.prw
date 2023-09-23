#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fMSPan2
    Criacao de tres paineis dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 22/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Painel
    @see : MSDialog()     https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...MSPanel   https://tdn.totvs.com/display/tec/@+...+MSPANEL
           @ ...BUTTON    https://tdn.totvs.com/pages/releaseview.action?pageId=238891543
           @ ... SAY      https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
/*/ 

User Function fMSPan2()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local nColorText
Local nColorFund

nLinIni := 0
nColIni := 0
nLinFim := 300
nColFim := 600
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM nLinIni, nColIni TO nLinFim, nColFim PIXEL

nLinIni := 10
nColIni := 260
nLinFim := 40
nColFim := 14
cTitulo := "Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 30
nColIni := 10
nLinFim := 285
nColFim := 20
cTitulo := ""
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan1 SIZE nLinFim, nColFim OF oDlg COLOR nColorText, nColorFund  PROMPT cTitulo

nLinIni := 5
nColIni := 70
nLinFim := 60
nColFim := 50
cTitulo1 := "Cabecalho"
@ nLinIni, nColIni SAY oSay1 PROMPT cTitulo1 SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oMsPan1 PIXEL

nLinIni := 60
nColIni := 10
nLinFim := 285
nColFim := 20
cTitulo := ""
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan2 SIZE nLinFim, nColFim OF oDlg COLOR nColorText, nColorFund PROMPT cTitulo

nLinIni := 5
nColIni := 70
nLinFim := 60
nColFim := 50
cTitulo2 := "Detalhe"
@ nLinIni, nColIni SAY oSay2 PROMPT cTitulo2 SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oMsPan2 PIXEL

nLinIni := 90
nColIni := 10
nLinFim := 285
nColFim := 20
cTitulo := ""
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan3 SIZE nLinFim, nColFim OF oDlg COLOR nColorText, nColorFund  PROMPT cTitulo

nLinIni := 5
nColIni := 70
nLinFim := 60
nColFim := 50
cTitulo3 := "Rodape"
@ nLinIni, nColIni SAY oSay3 PROMPT cTitulo3 SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oMsPan3 PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return


