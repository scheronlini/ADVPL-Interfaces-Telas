#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFMsBrGetB
   Cria��o de um objeto do tipo grade com registros em linhas e informa��es em colunas.
    @type  Function
    @author Scheron Martins
    @since 21/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da Cria��o de um objeto do tipo grade com registros em linhas e informa��es em colunas.
        @see : MSDialog()    https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               @ ...BUTTON   https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
               MsBrGetDBase  https://tdn.totvs.com/display/tec/MsBrGetDBase
               TCColumn      https://tdn.totvs.com/display/tec/TCColumn
    /*/

User Function uFMsBrGetB()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local aDados
Local lPixel
Local cAlinhamen
Local lBitmap
Local lEdit

nLinIni := 0
nColIni := 0
nLinFim := 600
nColFim := 900
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni , nColIni TO nLinFim, nColFim PIXEL

nLinIni := 200
nColIni := 300
nLinFim := 114
nColFim := 21
cTitulo := "Botao para Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 0
nColIni := 0
nLinFim := 440
nColFim := 170
lPixel  := .T.
oBrowse := MsBrGetDBase():new( nLinIni, nColIni, nLinFim, nColFim,/*bLine*/,/*aHeaders*/,/*aColSizes*/, oDlg,/*cField*/,/*uVal1*/,/*uVal2*/,/*bChange*/;
,/*bLDblClick*/,/*bRClick*/,/*oFont*/,/*oCursor*/,/*nClrFore*/,/*nClrBack*/,/*cMsg*/, .F., "", lPixel,/*bWhen*/, .F.)
    
    aDados := {}
    aAdd( aDados, { "01", "Nome 01", "Descri��o 01", "Conteudo 01" } )
    aAdd( aDados, { "02", "Nome 02", "Descri��o 02", "Conteudo 02" } )
    aAdd( aDados, { "03", "Nome 03", "Descri��o 03", "Conteudo 03" } )
    aAdd( aDados, { "04", "Nome 04", "Descri��o 04", "Conteudo 04" } )
    aAdd( aDados, { "05", "Nome 05", "Descri��o 05", "Conteudo 05" } )
    oBrowse:setArray( aDados )  // Define vetor para a browse
 
    cAlinhamen := "LEFT"  
    lBitmap    := .F.
    lEdit      := .F.                            //Define titulo colunas do Browse
    oBrowse:addColumn( TCColumn():new( "Filial", { || aDados[oBrowse:nAt, 1] },/*cPicture*/,/*uParam4*/,/*uParam5*/, cAlinhamen,/*nLargura*/,lBitmap, lEdit))
    oBrowse:addColumn( TCColumn():new( "Nome", { || aDados[oBrowse:nAt, 2] },/*cPicture*/,/*uParam4*/,/*uParam5*/, cAlinhamen,/*nLargura*/,lBitmap, lEdit))
    oBrowse:addColumn( TCColumn():new( "Descri��o", { || aDados[oBrowse:nAt, 3] },/*cPicture*/,/*uParam4*/,/*uParam5*/, cAlinhamen,/*nLargura*/,lBitmap, lEdit))
    oBrowse:addColumn( TCColumn():new( "Conte�do", { || aDados[oBrowse:nAt, 4] },/*cPicture*/,/*uParam4*/,/*uParam5*/, cAlinhamen,/*nLargura*/,lBitmap, lEdit))
    oBrowse:Refresh()

ACTIVATE MsDialog oDlg CENTERED

RETURN
