#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exMSPanel
    Criação de dois paineis dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Painel
    @see : MSDialog()     https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...MSPanel   https://tdn.totvs.com/display/tec/@+...+MSPANEL
    /*/

User Function uFMSPanel()
Local oDlg

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 400 , 900 PIXEL

@ 029, 021 MSPANEL painel1 SIZE 178, 160 OF oDlg COLOR CLR_BLACK, CLR_HGRAY PROMPT "Painel 1"

@ 029, 250 MSPANEL painel2 SIZE 178, 160 OF oDlg COLOR CLR_BLACK, CLR_HGRAY PROMPT "Painel 2"

ACTIVATE MsDialog oDlg CENTERED

Return


