#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function exEnchoice
   Criação uma Enchoice
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de uma Enchoice
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ... SAY   https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
           @ ... GET   https://tdn.engpro.totvs.com.br/display/tec/@+...+GET
    /*/

User Function uFEnchoic()
Local oDlg, oSay, oGet1
Local cGet1 := Space(20)

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 600 , 800 PIXEL

@ 260, 260 BUTTON Confirmar PROMPT "Sair" SIZE 114, 21 OF oDlg PIXEL

@ 30, 10 SAY oSay PROMPT 'Say' SIZE 200,20 COLORS CLR_RED,CLR_WHITE OF oDlg PIXEL 

@ 20, 40 GET oGet1 VAR cGet1 SIZE 200,20 OF oDlg PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
