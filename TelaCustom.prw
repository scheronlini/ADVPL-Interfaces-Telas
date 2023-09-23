#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function Tela com consulta padrao, tabela e valor total
    Criacao de tres paineis dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 22/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da Tela com consulta padrao, tabela e valor total
    @see : MSDialog()     https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...MSPanel   https://tdn.totvs.com/display/tec/@+...+MSPANEL
           @ ...BUTTON    https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ... SAY      https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
           @ ... GET   https://tdn.engpro.totvs.com.br/display/tec/@+...+GET
    /*/
User Function fTelaC()
    
    If Select("SX2") == 0
        RPCSetEnv("99", "01", "Administrador", "", "")
    EndIf
 
    fTelaCust()    
Return

static Function fTelaCust()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local nColorText
Local nColorFund
Local cGet1 := "99.999,99" + Space(10)

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
nColFim := 100
cTitulo := ""
nColorText := CLR_BLACK
nColorFund := CLR_HGRAY
@ nLinIni, nColIni MSPANEL oMsPan1 SIZE nLinFim, nColFim OF oDlg COLOR nColorText, nColorFund  PROMPT cTitulo

nLinIni := 11
nColIni := 5
nLinFim := 70
nColFim := 10  
cTitulo1 := "Código Cliente"
@ nLinIni, nColIni SAY oSay PROMPT cTitulo1  SIZE nLinFim, nColFim COLORS CLR_BLUE,CLR_WHITE OF oMsPan1 PIXEL 
        
nLinIni := 10
nColIni := 60
nLinFim := 60
nColFim := 10
bSetGet := {|u| Iif(PCount() > 0 , xGetObj7 := u, xGetObj7)}
xGetObj7    := Space(TamSX3('B1_COD')[1])  
lHasButton :=  .T.
lPixel := .T.
oGetObj7  := TGet():New(nLinIni, nColIni, bSetGet, oMsPan1, nLinFim, nColFim, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, /*oFont*/ ,;
     /*uParam12*/ , /*uParam13*/, lPixel, /*uParam15*/, /*uParam16*/, /*bWhen*/, /*uParam18*/, /*uParam19*/, /*bChange*/, /*lReadOnly*/, /*lPassword*/,;
      /*uParam23*/, /*cReadVar*/, /*uParam25*/, /*uParam26*/, /*uParam27*/, lHasButton )
oGetObj7:cF3        := 'SB1'

nLinIni   := 30
nColIni   := 1
nLinFim   := 277
nColFim   := 50
aHeaders  := {'Codigo','Produto','Descrição','Qtde','Vl. Unitario'}
lPixel    := .T.
aColSizes := {30,30,80,30,35}
oBrowse := TWBrowse():New( nLinIni, nColIni, nLinFim, nColFim,/*bLine*/,aHeaders,aColSizes,;                              
oMsPan1,/*cField*/,/*uValue1*/,/*uValue2*/,/*bChange*/,/*bLDblClick*/,/*bRClick*/,/*oFont*/,/*oCursor*/,/*nClrFore*/,/*nClrBack*/,/*cMsg*/,/*uParam20*/,/*cAlias*/,lPixel)    

aBrowse := {{'','','','',''},;
            {'','','','',''},;
            {'','','','',''}}
oBrowse:SetArray(aBrowse)  

oBrowse:bLine := {||{aBrowse[oBrowse:nAt,01], aBrowse[oBrowse:nAt,02], aBrowse[oBrowse:nAt,03];
, aBrowse[oBrowse:nAt,04] , aBrowse[oBrowse:nAt,05]}}  

nLinIni := 90
nColIni := 150
nLinFim := 50
nColFim := 10  
cTitulo2 := "Valor Total"
@ nLinIni, nColIni SAY oSay2 PROMPT cTitulo2  SIZE nLinFim, nColFim COLORS CLR_BLUE,CLR_WHITE OF oMsPan1 PIXEL 

nLinIni := 85
nColIni := 180
nLinFim := 50
nColFim := 10
@ nLinIni, nColIni GET oGet1 VAR cGet1 SIZE nLinFim, nColFim OF oMsPan1 PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
