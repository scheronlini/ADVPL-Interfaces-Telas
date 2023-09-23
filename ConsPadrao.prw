#include 'TOTVS.CH'

/*/{Protheus.doc} User Function fConsPad
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

User Function fConsPad()
    
    If Select("SX2") == 0
        RPCSetEnv("99", "01", "Administrador", "", "")
    EndIf
 
    fTela()    
Return
 
Static Function fTela()

Local oGetObj7 
Local xGetObj7
Local lHasButton
Local nLinIni
Local nColIni
Local nLinFim
Local nColFim
Local bSetGet
Local cTitulo

    nLinIni := 0
    nColIni := 0
    nLinFim := 281
    nColFim := 358
    cTitulo := "Tela Customizada"
    DEFINE MsDialog oDlg TITLE cTitulo FROM nLinIni, nColIni TO nLinFim , nColFim PIXEL

    nLinIni := 49
    nColIni := 4
    nLinFim := 70
    nColFim := 6  
    cTitulo1 := "Say"
    @ nLinIni, nColIni SAY oSay PROMPT cTitulo1  SIZE nLinFim, nColFim COLORS CLR_RED,CLR_WHITE OF oDlg PIXEL 
        
    nLinIni := 48
    nColIni := 74
    nLinFim := 100
    nColFim := 10
    bSetGet := {|u| Iif(PCount() > 0 , xGetObj7 := u, xGetObj7)}
    xGetObj7    := Space(TamSX3('B1_COD')[1])  
    lHasButton :=  .T.
    lPixel := .T.
    oGetObj7  := TGet():New(nLinIni, nColIni, bSetGet, oDlg, nLinFim, nColFim, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, /*oFont*/ ,;
     /*uParam12*/ , /*uParam13*/, lPixel, /*uParam15*/, /*uParam16*/, /*bWhen*/, /*uParam18*/, /*uParam19*/, /*bChange*/, /*lReadOnly*/, /*lPassword*/,;
      /*uParam23*/, /*cReadVar*/, /*uParam25*/, /*uParam26*/, /*uParam27*/, lHasButton )
    oGetObj7:cF3        := 'SB1'

    nLinIni := 116
    nColIni := 88
    nLinFim := 70
    nColFim := 15
    cTitulo := "Botao para Sair"
    @ nLinIni, nColIni BUTTON  oSair PROMPT cTitulo SIZE nLinFim, nColFim OF oDlg PIXEL

    ACTIVATE MsDialog oDlg CENTERED

Return
