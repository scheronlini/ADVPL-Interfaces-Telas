#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exFolder
    Criação um folder com 5 abas dentro de uma janela do tipo MSDialog com um botão para sair
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Folder
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ...FOLDER https://tdn.engpro.totvs.com.br/display/tec/@+...+FOLDER
    /*/

User Function exFolder()
Local oDlg, oFolder

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 600 , 800 PIXEL

@ 260, 260 BUTTON Confirmar PROMPT "Sair" SIZE 114, 21 OF oDlg PIXEL

@ 10,15 FOLDER oFolder SIZE 260, 200 OF oDlg  PIXEL

oFolder:AddItem("Pasta 01",.T.)
oFolder:AddItem("Pasta 02",.T.)
oFolder:AddItem("Pasta 03",.T.)
oFolder:AddItem("Pasta 04",.T.)
oFolder:AddItem("Pasta 05",.T.)

ACTIVATE MsDialog oDlg CENTERED

Return
