#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function uFTCheckBo
   Criação de uma Janela com o objeto do tipo TCheckBox que permite o usuario marcar e desmarcar.
    @type  Function
    @author Scheron Martins
    @since 21/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de uma Janela com o objeto do tipo TCheckBox que permite o usuario marcar e desmarcar.
        @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
               TCheckBox   https://tdn.totvs.com/display/tec/TCheckBox
               @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
/*/

User Function uFTCheckBo()
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local cTitulo
Local lPixel

nLinIni := 0
nColIni := 0
nLinFim := 400
nColFim := 900
cTitulo := "Tela Customizada"
DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni , nColIni TO nLinFim, nColFim PIXEL

nLinFim := 100
nColFim := 210
nColIni := 01
lPixel  := .T.
   oCheck1 := TCheckBox():New(01,nColIni,'CheckBox 001',/*bSetGet*/,oDlg,nLinFim,nColFim,/*uParam8*/,/*bLClicked*/,/*oFont*/,;
   /*bValid*/,/*nClrText*/,/*nClrPane*/,/*uParam14*/, lPixel)
   oCheck2 := TCheckBox():New(11,nColIni,'CheckBox 002',/*bSetGet*/,oDlg,nLinFim,nColFim,/*uParam8*/,/*bLClicked*/,/*oFont*/,;
   /*bValid*/,/*nClrText*/,/*nClrPane*/,/*uParam14*/, lPixel)
   oCheck3 := TCheckBox():New(21,nColIni,'CheckBox 003',/*bSetGet*/,oDlg,nLinFim,nColFim,/*uParam8*/,/*bLClicked*/,/*oFont*/,;
   /*bValid*/,/*nClrText*/,/*nClrPane*/,/*uParam14*/, lPixel)

nLinIni := 150
nColIni := 300
nLinFim := 114
nColFim := 21
cTitulo := "Botao para Sair"
@ nLinIni, nColIni BUTTON oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

ACTIVATE MsDialog oDlg CENTERED

Return
