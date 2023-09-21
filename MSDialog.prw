#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exMsDialog
    Chama 2 Static functions
    Nestas Static functions, s�o mostradas 2 formas de criar Janela MSDialog 
    com algumas caracteriscas diferentes.
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de MSDialog
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
    /*/

User Function exMsDialog()

MsDialog1()
MsDialog2()

Return 

static Function MsDialog1()
Local oDlg1

DEFINE MsDialog oDlg1 TITLE "Tela Customizada 1" FROM 0,0 TO 550 , 1100 PIXEL

ACTIVATE MsDialog oDlg1 CENTERED
//Quando habilitado a centralização, o from é considerado.
Return

static Function MsDialog2()
Local oDlg2

oDlg2 := MsDialog():New(40, 500, 550, 1100, "Tela Customizada 2",,,,,,CLR_BLACK,,,.T.,,,,)

ACTIVATE MsDialog oDlg2 

Return
