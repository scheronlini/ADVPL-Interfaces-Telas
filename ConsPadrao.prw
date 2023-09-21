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

User Function exConsPadrao()
    If Select("SX2") == 0
        RPCSetEnv("99", "01", "Administrador", "", "")
    EndIf
 
    fTela()
Return
 
Static Function fTela()

    Local oDialogPvt
    Local oGetObj7 
    Local xGetObj7    := Space(TamSX3('B1_COD')[1])

    DEFINE MsDialog oDialogPvt TITLE "Tela Customizada" FROM 0,0 TO 281 , 358 PIXEL
      
    @ 49, 4 SAY oSay PROMPT 'Digite o que procura'  SIZE 70, 6 COLORS CLR_RED,CLR_WHITE OF oDialogPvt PIXEL 
        
    oGetObj7  := TGet():New(48, 74, {|u| Iif(PCount() > 0 , xGetObj7 := u, xGetObj7)}, oDialogPvt, 100, 10, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, , , , .T., /*uParam15*/, /*uParam16*/, /*bWhen*/, /*uParam18*/, /*uParam19*/, /*bChange*/, /*lReadOnly*/, /*lPassword*/, /*uParam23*/, /*cReadVar*/, /*uParam25*/, /*uParam26*/, /*uParam27*/, .T.)
    oGetObj7:cF3        := 'SB1'

    @ 116, 88 BUTTON  oSair PROMPT "Botao para Sair" SIZE 70, 15 OF oDialogPvt PIXEL

    ACTIVATE MsDialog oDialogPvt CENTERED

Return
