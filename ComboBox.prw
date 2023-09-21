#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFComboBox
   Criação de uma tela com ComboBox
    @type  Function
    @author Scheron Martins
    @since 21/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da Criação de uma tela com ComboBox
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               TComboBox   https://tdn.totvs.com/display/tec/TComboBox 
/*/

User Function uFComboBox()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local aItems
Local cCombo
Local bSetGet
Local lPixel

nLinIni := 0
nColIni := 0
nLinFim := 550
nColFim := 1100
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg1 TITLE cTitulo FROM nLinIni, nColIni TO nLinFim, nColFim PIXEL

nLinIni := 2
nColIni := 2
nLinFim := 100
nColFim := 20
aItems  := {'Item1','Item2','Item3'}
bSetGet := {|u|if(PCount()>0,cCombo:=u,cCombo)}
cCombo  := aItems[1]
lPixel  := .T.
    oCombo1 := TComboBox():New(nLinIni,nColIni, bSetGet,;
    aItems, nLinFim, nColFim,oDlg1,/*uParam8*/,/*bChange*/;
    ,/*bValid*/,/*nClrText*/,/*nClrBack*/,lPixel,/*oFont*/,/*uParam15*/,/*uParam16*/,/*bWhen*/,/*uParam18*/,/*uParam19*/,/*uParam20*/,/*uParam21*/,'cCombo')

ACTIVATE MsDialog oDlg1 CENTERED
