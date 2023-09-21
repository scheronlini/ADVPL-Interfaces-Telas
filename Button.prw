#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exButton
   Criação de um botão dentro de uma janela do tipo MSDialog
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Botão
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
    /*/

User Function uFButton()
Local oDlg

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 400 , 900 PIXEL

@ 150, 300 BUTTON Confirmar PROMPT "Botao para Sair" SIZE 114, 21 OF oDlg PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
