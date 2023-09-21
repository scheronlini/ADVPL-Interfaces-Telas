#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFTRadMen
   Criação de uma Janela com o objeto do tipo TRadMenu que permite o usuario marcar e desmarcar uma opção por vez, com modelo Radio.
    @type  Function
    @author Scheron Martins
    @since 21/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de uma Janelacom o objeto do tipo TRadMenu que permite o usuario marcar e desmarcar uma opção por vez, 
    com modelo Radio.
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               TRadMenu    https://tdn.totvs.com/display/tec/TRadMenu
               @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
/*/
User Function uFTRadMen()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local lPixel
Local nRadio
Local aItems
Local bSetGet

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

nLinIni := 01
nColIni := 01
nLinFim := 100
nColFim := 12
lPixel  := .T.   
nRadio  := 1
aItems := {'Item01','Item02','Item03','Item04','Item05'}
bSetGet := {|u|Iif (PCount()==0,nRadio,nRadio:=u)}
  oRadio := TRadMenu():New (nLinIni, nColIni, aItems, bSetGet,oDlg,/*uParam6*/,/*bChange*/,/*nClrText*/,/*nClrPane*/,/*cMsg*/;
  ,/*uParam11*/,/*bWhen*/,nLinFim,nColFim,/*bValid*/,/*uParam16*/,/*uParam17*/,lPixel)

ACTIVATE MsDialog oDlg CENTERED

RETURN
