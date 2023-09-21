#include 'TOTVS.CH'

/*/{Protheus.doc} User Function exConsPadrao
   Criação uma Consulta Padrão com TGET
    @type  Function
    @author Scheron Martins
    @since 20/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao de uma Consulta Padrão com TGET
    @see : MSDialog()  https://tdn.totvs.com/pages/releaseview.action?pageId=24346988
           @ ...BUTTON https://tdn.totvs.com/pages/releaseview.action?pageId=23889154
           @ ... SAY   https://tdn.engpro.totvs.com.br/display/tec/@+...+SAY
           TGet        https://tdn.totvs.com/display/tec/TGet
           TGet Lupa   https://terminaldeinformacao.com/2023/02/15/por-qual-motivo-tgets-nao-mostram-o-icone-da-lupa/
           RPCSetEnv() https://tdn.totvs.com/pages/releaseview.action?pageId=6814927
    /*/

User Function uFCalendar()

Local lHasButton
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local bSetGet
Local cTitulo
Local dGet
Local cPict
Local nClrFore
Local nClrBack
Local cReadVar

    nLinIni := 0
    nColIni := 0
    nLinFim := 281
    nColFim := 358
    cTitulo := "Tela Customizada"
    DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni, nColIni TO nLinFim , nColFim PIXEL
        
    nLinIni    := 48
    nColIni    := 74
    nLinFim    := 100
    nColFim    := 10
    bSetGet    := { | u | If( PCount() == 0, dGet, dGet := u ) }
    dGet       := Date()
    lHasButton :=  .T.
    lPixel     := .T.
    cPict      := "@D"
    nClrFore   := 0
    nClrBack   := 16777215
    cReadVar   := "dGet"
    oGetObj7  := TGet():New(nLinIni, nColIni, bSetGet, oDlg, nLinFim, nColFim, cPict , /*bValid*/, nClrFore , nClrBack, /*oFont*/ ,;
     /*uParam12*/ , /*uParam13*/, lPixel, /*uParam15*/, /*uParam16*/, /*bWhen*/, /*uParam18*/, /*uParam19*/, /*bChange*/, /*lReadOnly*/, /*lPassword*/,;
      /*uParam23*/, cReadVar , /*uParam25*/, /*uParam26*/, /*uParam27*/, lHasButton )

    nLinIni := 116
    nColIni := 88
    nLinFim := 70
    nColFim := 15
    cTitulo := "Botao para Sair"
    @ nLinIni, nColIni BUTTON  oButton PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

    nLinIni := 49
    nColIni := 4
    nLinFim := 70
    nColFim := 6  
    cTitulo := "Digite a Data"
    @ nLinIni, nColIni SAY oSay PROMPT cTitulo  SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oDlg PIXEL 

    ACTIVATE MsDialog oDlg CENTERED
Return
