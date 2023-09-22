#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFTWBrowse
   Criação de um objeto do tipo grade com registros em linhas e informações em colunas.
    @type  Function
    @author Scheron Martins
    @since 22/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da Criação de um objeto do tipo grade com registros em linhas e informações em colunas.
        @see : MSDialog()    https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               @ ...BUTTON   https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
               TWBrowse      https://tdn.totvs.com/display/tec/TWBrowse
    /*/
User Function uFTWBrowse()
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
aHeaders  := {'Codigo','Descrição'}
lPixel    := .T.
aColSizes := {30,30}

oBrowse := TWBrowse():New( nLinIni, nColIni, nLinFim, nColFim,/*bLine*/,aHeaders,aColSizes,;                              
oDlg,/*cField*/,/*uValue1*/,/*uValue2*/,/*bChange*/,/*bLDblClick*/,/*bRClick*/,/*oFont*/,/*oCursor*/,/*nClrFore*/,/*nClrBack*/,/*cMsg*/,/*uParam20*/,/*cAlias*/,lPixel)    
aBrowse := {{'RUA CLIENTE 001','BAIRRO CLIENTE 001'},;
            {'RUA CLIENTE 002','BAIRRO CLIENTE 002'},;
            {'RUA CLIENTE 003','BAIRRO CLIENTE 003'}}
oBrowse:SetArray(aBrowse)  

oBrowse:bLine := {||{aBrowse[oBrowse:nAt,01], aBrowse[oBrowse:nAt,02] } }  

ACTIVATE MsDialog oDlg CENTERED
RETURN
