#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fTMultiG
   Criacao de uma Janela com o objeto do tipo TMultiGet com varias linhas disponiveis para digitacao
    @type  Function
    @author Scheron Martins
    @since 21/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao do objeto do tipo TMultiGet com varias linhas disponiveis para digitacao
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               TMultiGet   https://tdn.totvs.com/display/tec/TMultiGet
               @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
               @ ... SAY   https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
/*/
User Function fTMultiG()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local cTexto1
Local bSetGet
Local lPixel

nLinIni := 0
nColIni := 0
nLinFim := 600
nColFim := 900
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni , nColIni TO nLinFim, nColFim PIXEL

nLinIni := 150
nColIni := 300
nLinFim := 114
nColFim := 21
cTitulo := "Botao para Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 20
nColIni := 40
nLinFim := 260
nColFim := 90
cTexto1 := "Linha 01 Multiget 1"
bSetGet := {| u | if( pCount() > 0, cTexto1 := u, cTexto1 ) }
lPixel  := .T.
oTMultiget1 := tMultiget():new(nLinIni, nColIni, bSetGet, ;
    oDlg, nLinFim, nColFim, /*oFont*/, /*uParam8*/, /*uParam9*/, /*uParam10*/, /*uParam11*/, lPixel )

nLinIni := 30
nColIni := 10
nLinFim := 200
nColFim := 20
cTitulo := "Say"
@ nLinIni, nColIni SAY oSay PROMPT cTitulo SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oDlg PIXEL 

ACTIVATE MsDialog oDlg CENTERED
RETURN


