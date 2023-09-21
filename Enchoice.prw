#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exEnchoice
   Criação uma Enchoice
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de uma Enchoice
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ... SAY   https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
           @ ... GET   https://tdn.engpro.totvs.com.br/display/tec/@+...+GET
    /*/

User Function uFEnchoic()
Local cGet1 := Space(20)
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
DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni, nColIni TO nLinFim, nColFim PIXEL

nLinIni := 260
nColIni := 260
nLinFim := 114
nColFim := 21
cTitulo := "Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 30
nColIni := 10
nLinFim := 200
nColFim := 20
cTitulo := "Say"
@ nLinIni, nColIni SAY oSay PROMPT cTitulo SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oDlg PIXEL 

nLinIni := 20
nColIni := 40
nLinFim := 200
nColFim := 20
@ nLinIni, nColIni GET oGet1 VAR cGet1 SIZE nLinFim, nColFim OF oDlg PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
