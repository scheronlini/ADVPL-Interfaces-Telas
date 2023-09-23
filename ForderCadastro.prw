#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fFoldCad
    Criação um folder(Aba) com um texto(say) dentro de uma janela do tipo MSDialog com um botão para sair
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de Folder com say dentro
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ...FOLDER https://tdn.engpro.totvs.com.br/display/tec/@+...+FOLDER
    /*/

User Function fFoldCad()

Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo

nLinIni := 0
nColIni := 0
nLinFim := 600
nColFim := 800
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM nLinIni, nColIni TO nLinFim , nColFim PIXEL

nLinIni := 10
nColIni := 260
nLinFim := 100
nColFim := 21
cTitulo := "Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

nLinIni := 40
nColIni := 15
nLinFim := 350
nColFim := 200
@ nLinIni, nColIni FOLDER oFolder SIZE nLinFim, nColFim OF oDlg  PIXEL

oFolder:AddItem("",.T.)

nLinIni := 60
nColIni := 100
nLinFim := 60
nColFim := 50
cTitulo := "Cadastro"
@ nLinIni, nColIni SAY oSay PROMPT cTitulo SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oFolder:aDialogs[1] PIXEL 

ACTIVATE MsDialog oDlg CENTERED

Return
