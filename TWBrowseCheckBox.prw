#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fTWBrowC
   Criacao de um objeto do tipo grade com registros em linhas e informacoes em colunas e Coluna CheckBox.
    @type  Function
    @author Scheron Martins
    @since 22/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da Criacao de um objeto do tipo grade com registros em linhas e informacoes em colunas e Coluna CheckBox.
        @see : MSDialog()    https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               @ ...BUTTON   https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
               TWBrowse      https://tdn.totvs.com/display/tec/TWBrowse
    /*/
User Function fTWBrowC()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local aHeaders
Local aColSizes
Local lPixel

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

nLinIni   := 1
nColIni   := 1
nLinFim   := 440
nColFim   := 170
aHeaders  := {'','Codigo','Descri��o'}
lPixel    := .T.
aColSizes := {20,30,30}

oOK := LoadBitmap(GetResources(), "lbok")
oNO := LoadBitmap(GetResources(), "lbno")
oBrowse := TWBrowse():New( nLinIni, nColIni, nLinFim, nColFim,/*bLine*/,aHeaders,aColSizes,;                              
oDlg,/*cField*/,/*uValue1*/,/*uValue2*/,/*bChange*/,/*bLDblClick*/,/*bRClick*/,/*oFont*/,/*oCursor*/,/*nClrFore*/,/*nClrBack*/,/*cMsg*/,/*uParam20*/,/*cAlias*/,lPixel)    
aBrowse   := {{.T.,'CLIENTE 001','RUA CLIENTE 001','BAIRRO CLIENTE 001'},;                    
{.F.,'CLIENTE 002','RUA CLIENTE 002','BAIRRO CLIENTE 002'},;                    
{.T.,'CLIENTE 003','RUA CLIENTE 003','BAIRRO CLIENTE 003'} }    
oBrowse:SetArray(aBrowse)    
oBrowse:bLine := {||{If(aBrowse[oBrowse:nAt,01],oOK,oNO),aBrowse[oBrowse:nAt,02], aBrowse[oBrowse:nAt,03],aBrowse[oBrowse:nAt,04] } }    
oBrowse:bLDblClick := {|| aBrowse[oBrowse:nAt][1] := !aBrowse[oBrowse:nAt][1],;                               
oBrowse:DrawSelect()}  

ACTIVATE MsDialog oDlg CENTERED
RETURN
