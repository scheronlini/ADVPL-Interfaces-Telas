#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fMsDialo
    Chama 2 Static functions
    Nestas Static functions, sao mostradas 2 formas de criar Janela MSDialog 
    com algumas caracteriscas diferentes.
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de MSDialog
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           MSDialog    https://tdn.totvs.com/display/tec/MsDialog
    /*/

User Function fMsDialo()

fMsDialog1()
fMsDialog2()

Return

static Function fMsDialog1()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo

nLinIni := 0
nColIni := 0
nLinFim := 550
nColFim := 1100
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg1 TITLE cTitulo FROM nLinIni, nColIni TO nLinFim, nColFim PIXEL

ACTIVATE MsDialog oDlg1 CENTERED
//Quando habilitado a centralização, o from é considerado.
Return

static Function fMsDialog2()
Local oDlg2
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local lPixel

nLinIni  := 40
nColIni  := 500
nLinFim  := 550
nColFim  := 1100
cTitulo  := "Tela Customizada"
lPixel   := .T. 
oDlg2 := MsDialog():New(nLinIni, nColIni, nLinFim, nColFim, cTitulo,/*uParam6*/,/*uParam7*/,/*uParam8*/,/*uParam9*/,/*nClrText*/,/*nClrBack*/,/*uParam12*/,/*oWnd*/,lPixel)

ACTIVATE MsDialog oDlg2

Return
