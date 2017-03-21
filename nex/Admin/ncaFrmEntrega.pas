unit ncaFrmEntrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, cxButtons,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, dxLayoutContainer,
  cxTextEdit, cxCurrencyEdit, cxClasses, dxLayoutControl, ncMovEst, ncaFrmPesqEndereco, ncaFrmPesqTranspEnt,
  cxCheckBox, cxMaskEdit, cxSpinEdit, dxLayoutControlAdapters, cxRadioGroup;

type
  
  TFrmEntrega = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsEndereco: TcxTabSheet;
    tsTransp: TcxTabSheet;
    cxImageList1: TcxImageList;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    btnConfig: TcxButton;
    tsFrete: TcxTabSheet;
    lcFreteGroup_Root: TdxLayoutGroup;
    lcFrete: TdxLayoutControl;
    edFrete: TcxCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    lbFretePadrao: TcxLabel;
    lcFretePadrao: TdxLayoutItem;
    grPesoVol: TdxLayoutGroup;
    edVol: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    cbEnviarPesoVol: TcxCheckBox;
    lcEnviarPesoVol: TdxLayoutItem;
    edPesoLiq: TcxCurrencyEdit;
    lcPesoLiq: TdxLayoutItem;
    edPesoBruto: TcxCurrencyEdit;
    lcPesoBruto: TdxLayoutItem;
    lcPadraoPesoVol: TdxLayoutItem;
    lbPadraoPesoVol: TcxLabel;
    lcPesoAuto: TdxLayoutItem;
    cbPesoAuto: TcxCheckBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lcPadraoPesoAuto: TdxLayoutItem;
    lbPadraoPesoAuto: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edDestPaga: TcxRadioButton;
    lcDestPaga: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edEmitentePaga: TcxRadioButton;
    lcEmitentePaga: TdxLayoutItem;
    lbPadraoPaga: TcxLabel;
    lcPadraoPaga: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    lcSemFrete: TdxLayoutItem;
    edSemFrete: TcxRadioButton;
    lcTerceiros: TdxLayoutItem;
    edTerceiros: TcxRadioButton;
    grPorConta2: TdxLayoutGroup;
    grPorConta: TdxLayoutGroup;
    procedure btnAvancarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edFretePropertiesChange(Sender: TObject);
    procedure lbFretePadraoClick(Sender: TObject);
    procedure cbEnviarPesoVolClick(Sender: TObject);
    procedure cbPesoAutoClick(Sender: TObject);
    procedure lbPadraoPesoVolClick(Sender: TObject);
    procedure lbPadraoPesoAutoClick(Sender: TObject);
    procedure edPesoLiqPropertiesChange(Sender: TObject);
    procedure edPesoBrutoPropertiesChange(Sender: TObject);
    procedure lbPadraoPagaClick(Sender: TObject);
    procedure edEmitentePagaClick(Sender: TObject);
  private
    { Private declarations }
    FMovEst : TncMovEst;
    FEnd : TFrmPesqEndereco;
    FTransp : TFrmPesqTranspEnt;
    FShowed : Boolean;
    procedure Atualiza;

    function modFrete: Byte;
  public
    function Editar(aMovEst: TncMovEst): Boolean;

    function FreteStr: String;

    procedure AjustaFoco;

    procedure OnAvancar(Sender: TObject); 
  end;

var
  FrmEntrega: TFrmEntrega;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaStrings, ncClassesBase, ncaDM;

{ TFrmEntrega }

procedure TFrmEntrega.AjustaFoco;
begin
  if not FShowed then Exit;

  case Paginas.ActivePageIndex of
    0 : FEnd.AjustaFoco;
    1 : FTransp.AjustaFoco;
    2 : edFrete.SetFocus;  
  end;
end;

procedure TFrmEntrega.Atualiza;
begin
  with Dados do begin
    grPesoVol.Visible := (FMovEst.TipoNFE=tiponfe_nfe) and (FTransp.TipoFor<>tipofor_entregador);
    lcDestPaga.Visible := (FMovEst.TipoNFE=tiponfe_nfe) and (FTransp.TipoFor<>tipofor_entregador);
    lcEmitentePaga.Visible := lcDestPaga.Visible;
    lcEmitentePaga.Enabled := lcDestPaga.Visible and (edFrete.Value<0.01);
    lcTerceiros.Visible := lcDestPaga.Visible;
    lcTerceiros.Enabled := lcEmitentePaga.Enabled;
    lcDestPaga.Enabled := lcEmitentePaga.Enabled;
    lcSemFrete.Visible := lcDestPaga.Visible;
    lcSemFrete.Enabled := lcDestPaga.Enabled;

    if (edFrete.Value>0.009) then 
      edDestPaga.Checked := True;

    lcEnviarPesoVol.Visible := grPesoVol.Visible;

    lcPadraoPaga.Visible := lcEmitentePaga.Visible and lcEmitentePaga.Enabled and (modFrete <> gConfig.modFretePadrao);
    
    lbFretePadrao.Visible := CM.UA.Admin and (edFrete.Value <> gConfig.FretePadrao);
    lbPadraoPesoVol.Visible := CM.UA.Admin and grPesoVol.Visible and (cbEnviarPesoVol.Checked <> tNFConfigenviar_peso_vol_def.Value);
    lbPadraoPesoAuto.Visible := CM.UA.Admin and (cbPesoAuto.Checked <> tNFConfigauto_calc_peso_def.Value);
    grPesoVol.Enabled := cbEnviarPesoVol.Checked;
    lcPesoLiq.Enabled := not cbPesoAuto.Checked;
    lcPesoBruto.Enabled := not cbPesoAuto.Checked;
  end;
end;

procedure TFrmEntrega.btnAvancarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : begin
      FEnd.Valida;
      Paginas.ActivePageIndex := 1;
    end;
    1 : begin
      FTransp.Valida;
      Paginas.ActivePageIndex := 2;
    end;
    2 : begin  
      Paginas.ActivePageIndex := 0;
      FEnd.Valida;
      Paginas.ActivePageIndex := 1;
      FTransp.Valida;

      if grPesoVol.Visible and cbEnviarPesoVol.Checked then begin
        if edVol.Value<1 then begin
          edVol.SetFocus;
          raise Exception.Create('É necessário informar a quantidade de volumes a serem transportados.');
        end;

        if not cbPesoAuto.Checked then begin
          edPesoLiq.PostEditValue;
          edPesoBruto.PostEditValue;
          if edPesoLiq.Value<0.001 then begin
            edPesoLiq.SetFocus;
            raise Exception.Create('É necessário informar o peso líquido.');
          end;

          if edPesobruto.Value<0.001 then begin
            edPesoBruto.SetFocus;
            raise Exception.Create('É necessário informar o peso bruto.');
          end;
        end;

        if (edFrete.Value>0.009) and 
           (FMovEst.TipoNFE in [tiponfe_nfe, tiponfe_nfce, tiponfe_sat]) and
           (not (FTransp.TipoFor in [tipofor_entregador, tipofor_transp])) 
        then begin
          Paginas.ActivePageIndex := 1;
          raise Exception.Create('É necessário informar um entregador ou transportadora quando há cobrança de frete/taxa de entrega.');
        end;
        
      end;
      ModalResult := mrOk;
    end;
  end;
end;

procedure TFrmEntrega.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex :=  Paginas.ActivePageIndex - 1;
  AjustaFoco;
end;

procedure TFrmEntrega.cbEnviarPesoVolClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmEntrega.cbPesoAutoClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmEntrega.edEmitentePagaClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmEntrega.edFretePropertiesChange(Sender: TObject);
begin
  edFrete.PostEditValue;
  Atualiza;
end;

function TFrmEntrega.Editar(aMovEst: TncMovEst): Boolean;
var S: String;
begin
  FMovEst := aMovEst;
  FEnd.Load(aMovEst.Cliente, aMovEst.Native_End_Entrega);
  if FMovEst.Entregar then begin
    FTransp.Load(aMovEst.TranspEnt);
    edFrete.Value := aMovEst.Frete;
    cbEnviarPesoVol.Checked := (FMovEst.TranspPesoVol>0);
    cbPesoAuto.Checked := (FMovEst.TranspPesoVol=peso_vol_auto);
    edVol.Value := FMovEst.TranspVol;
    edPesoLiq.Value := FMovEst.TranspPesoL;
    edPesoBruto.Value := FMovEst.TranspPesoB;
    S := GetValueFromStr(FMovEst.Extra, 'modFrete');
    if S='9' then
      edSemFrete.Checked := True
    else
    if S='1' then
      edDestPaga.Checked := True
    else
    if S='2' then
      edTerceiros.Checked := True
    else
      edEmitentePaga.Checked := True;
  end else begin
    if Dados.tbCli.Locate('ID', FMovEst.Cliente, []) and (Dados.tbCliTranspEntPadrao.Value>0) then
      FTransp.Load(Dados.tbCliTranspEntPadrao.Value) else
      FTransp.Load(gConfig.TranspEntPadrao);
    case gConfig.modFretePadrao of
      0 : edEmitentePaga.Checked := True;
      2 : edTerceiros.Checked := True;
      9 : edSemFrete.Checked := True;
    else
      edDestPaga.Checked := True;  
    end;
    edFrete.Value := gConfig.FretePadrao;
    cbEnviarPesoVol.Checked := Dados.tNFConfigenviar_peso_vol_def.Value;
    cbPesoAuto.Checked := Dados.tNFConfigauto_calc_peso_def.Value;
  end;
    
  Paginas.ActivePageIndex := 0;

  Atualiza;
  
  ShowModal;

  if ModalResult=mrOk then begin
    Result := True;
    FMovEst.Frete := edFrete.Value;
    FMovEst.endereco_entrega := FEnd.MTendereco_id.AsString;
    FMovEst.TranspEnt := FTransp.IDTransp;

    S := FMovEst.Extra;
    if lcDestPaga.Visible then begin
      if edEmitentePaga.Checked then
        SetValueFromStr(S, 'modFrete', '0') 
      else
      if edDestPaga.Checked then
        SetValueFromStr(S, 'modFrete', '1') 
      else
      if edTerceiros.Checked then
        SetValueFromStr(S, 'modFrete', '2')
      else
        SetValueFromStr(S, 'modFrete', '9') 
    end else
      SetValueFromStr(S, 'modFrete', '9');

    if cbEnviarPesoVol.Checked then begin
      if cbPesoAuto.Checked then
        FMovEst.TranspPesoVol := peso_vol_auto else
        FMovEst.TranspPesoVol := peso_vol_manual;
    end else
      FMovEst.TranspPesoVol := peso_vol_nao_enviar;
    FMovEst.TranspVol := edVol.Value;
    FMovEst.TranspPesoL := edPesoLiq.Value;
    FMovEst.TranspPesoB := edPesoBruto.Value;
    FMovEst.Extra := S;
  end else
    Result := False;
end;

procedure TFrmEntrega.edPesoBrutoPropertiesChange(Sender: TObject);
begin
  edPesoBruto.PostEditValue;
end;

procedure TFrmEntrega.edPesoLiqPropertiesChange(Sender: TObject);
begin
  edPesoLiq.PostEditValue;
end;

procedure TFrmEntrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEntrega.FormCreate(Sender: TObject);
begin
  FShowed := False;
  Paginas.ActivePageIndex := 0;
  FEnd := TFrmPesqEndereco.Create(Self);
  FEnd.OnAvancar := OnAvancar;
//  FEnd.btnOk.Visible := False;
  FEnd.panPri.Parent := tsEndereco;
  FTransp := TFrmPesqTranspEnt.Create(Self);
  FTransp.panPri.Parent := tsTransp;
  FTransp.OnAvancar := OnAvancar;
end;

procedure TFrmEntrega.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Esc   : ModalResult:=mrCancel;
    Key_M     : if (ssCtrl in Shift) and (Paginas.ActivePageIndex=0) then FEnd.btnGMapsClick(nil);
    Key_R     : if (ssCtrl in Shift) and (Paginas.ActivePageIndex=0) then FEnd.btnRotaClick(nil);
    Key_E     : if (ssCtrl in Shift) and (Paginas.ActivePageIndex=0) then FEnd.lbCopiarClick(nil);
    Key_F2    : if (Paginas.ActivePageIndex=2) and btnAvancar.Enabled then btnAvancar.Click; 
  end;

end;

procedure TFrmEntrega.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then Key := #0;
end;

procedure TFrmEntrega.FormShow(Sender: TObject);
begin
  FShowed := True;
  AjustaFoco;
end;

function TFrmEntrega.FreteStr: String;
begin
  if edFrete.Value>0.009 then
    Result := CurrencyToStr(edFrete.Value);
end;

procedure TFrmEntrega.lbFretePadraoClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.FretePadrao := edFrete.Value;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);
  lbFretePadrao.Visible := False;
end;

procedure TFrmEntrega.lbPadraoPagaClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.modFretePadrao := modFrete;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);
  lbPadraoPaga.Visible := False;
end;

procedure TFrmEntrega.lbPadraoPesoAutoClick(Sender: TObject);
begin
  with Dados do begin
    tNFConfig.Edit;
    tNFConfigauto_calc_peso_def.Value := cbPesoAuto.Checked;
    tNFConfig.Post;
    lbPadraoPesoAuto.Visible := False;
  end;
end;

procedure TFrmEntrega.lbPadraoPesoVolClick(Sender: TObject);
begin
  with Dados do begin
    tNFConfig.Edit;
    tNFConfigenviar_peso_vol_def.Value := cbEnviarPesoVol.Checked;
    tNFConfig.Post;
    lbPadraoPesoVol.Visible := False;
  end;
end;

function TFrmEntrega.modFrete: Byte;
begin
  if edSemFrete.Checked then 
    Result := 9  
  else
  if edEmitentePaga.Checked then
    Result := 0
  else
  if edTerceiros.Checked then
    Result := 2
  else
    Result := 1;
end;

procedure TFrmEntrega.OnAvancar(Sender: TObject);
begin
  btnAvancar.Click;
end;

procedure TFrmEntrega.PaginasChange(Sender: TObject);
begin
  if FShowed then Atualiza;
  btnVoltar.Enabled := (Paginas.ActivePageIndex > 0);
  if FShowed then AjustaFoco;
  if Paginas.ActivePage=tsFrete then
    btnAvancar.Caption := rsConcluir+'!' else
    btnAvancar.Caption := rsAvancar+' >>';
end;

end.
