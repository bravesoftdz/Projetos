unit ncEndereco;

interface

uses sysutils, classes, DB;

type

  TncEndereco = class
    enID         : TGUID;
    enEndereco   : String;
    enEndereco2  : String;
    enCidade     : String;
    enUF         : String;
    enBairro     : String;
    enCEP        : String;
    enNumero     : String;
    enCodMun     : String;
    enDest       : String;
    enPais       : String;
    enObs        : String;
    enPos        : Byte;
    enCliente    : Cardinal;
    enDefCad     : Boolean;
    enDefCobr    : Boolean;
    enDefEntrega : Boolean;

    constructor Create; 

    function Resumo: String;

    function Vazio: Boolean;

    function ResumoEntrega(L: TncEndereco): String;

    function ResumoLinhaUnica: String;

    function is_br: Boolean;
    function is_foreign: Boolean;

    function NFeOk: Boolean;

    function Alterou(B: TncEndereco): Boolean;
    procedure Assign(B: TncEndereco);
    procedure Clear;

    procedure SaveToDataset(D: TDataset);
    procedure LoadFromDataset(D: TDataset);
  end;
  

implementation

{ TncEndereco }

uses ncGuidUtils, ncClassesBase;

function TncEndereco.Alterou(B: TncEndereco): Boolean;
begin
  Result := 
    (enEndereco<>B.enEndereco) or
    (enEndereco2<>B.enEndereco) or
    (enCidade<>B.enCidade) or
    (enUF<>B.enUF) or
    (enBairro<>B.enBairro) or
    (enCEP<>B.enCEP) or
    (enNumero<>B.enNumero) or
    (enCodMun<>B.enCodMun) or
    (enDest<>B.enDest) or
    (enPais<>B.enPais) or
    (enPos<>B.enPos) or
    (enCliente<>B.enCliente) or
    (enObs<>B.enObs) or
    (enDefCad<>B.enDefCad) or
    (enDefCobr<>B.enDefCobr) or
    (enDefEntrega<>B.enDefEntrega);
end;

procedure TncEndereco.Assign(B: TncEndereco);
begin
  enID         := B.enID;
  enEndereco   := B.enEndereco;
  enEndereco2  := B.enEndereco2;
  enCidade     := B.enCidade;
  enUF         := B.enUF;
  enBairro     := B.enBairro;
  enCEP        := B.enCEP;
  enNumero     := B.enNumero;
  enCodMun     := B.enCodMun;
  enDest       := B.enDest;
  enPais       := B.enPais;
  enPos        := B.enPos;
  enCliente    := B.enCliente;
  enObs        := B.enObs;
  enDefCad     := B.enDefCad;
  enDefCobr    := B.enDefCobr;
  enDefEntrega := B.enDefEntrega;
end;

procedure TncEndereco.Clear;
begin
  enID         := TGuidEx.New;
  enEndereco   := '';
  enEndereco2  := '';
  enCidade     := '';
  enUF         := '';
  enBairro     := '';
  enCEP        := '';
  enNumero     := '';
  enCodMun     := '';
  enDest       := '';
  enPais       := gConfig.PaisNorm;
  enObs        := '';
  enCliente    := 0;
  enPos        := 0;
  enDefCad     := False;
  enDefCobr    := False;
  enDefEntrega := False;
end;

constructor TncEndereco.Create;
begin
  inherited;
  Clear;
end;

function TncEndereco.is_br: Boolean;
begin
  Result := SameText('BR', enPais);
end;

function TncEndereco.is_foreign: Boolean;
begin
  Result := not SameText(gConfig.PaisNorm, enPais);
end;

procedure TncEndereco.LoadFromDataset(D: TDataset);
var F: TField;
begin
  if not D.FieldByName('endereco_id').IsNull then
    enID         := TGuidEx.FromString(D.FieldByName('endereco_id').AsString);

  if TGuidEx.IsEmpty(enID) then enID := TGuidEx.New;

  F := D.FindField('cliente_id');

  if F<>nil then
    enCliente := F.AsLongWord else
    enCliente := D.FieldByName('id').AsLongWord;
    
  enEndereco   := D.FieldByName('endereco').AsString;
  enEndereco2  := D.FieldByName('endereco2').AsString;
  enCidade     := D.FieldByName('cidade').AsString;
  enUF         := D.FieldByName('uf').AsString;
  enBairro     := D.FieldByName('bairro').AsString;
  enCEP        := D.FieldByName('CEP').AsString;
  enNumero     := D.FieldByName('end_numero').AsString;
  enCodMun     := D.FieldByName('end_CodMun').AsString;
  enDest       := D.FieldByName('end_dest').AsString;
  enPais       := D.FieldByName('pais').AsString;
  if enPais='' then enPais := gConfig.PaisNorm;

  enObs        := D.FieldByName('end_obs').AsString;

  F := D.FindField('pos');
  if Assigned(F) then
    enPos := F.AsInteger else
    enPos := 0;  

  F := D.FindField('def_cad');
  if Assigned(F) then 
    enDefCad := F.AsBoolean else
    enDefCad := True;

  F := D.FindField('def_cob');
  if Assigned(F) then 
    enDefCobr := F.AsBoolean else
    enDefCobr := True;                                                                  
    
  F := D.FindField('def_end');
  if Assigned(F) then 
    enDefEntrega := F.AsBoolean else
    enDefEntrega := True;
end;

function TncEndereco.NFeOk: Boolean;
begin
  if is_br then begin
    Result := (Trim(enEndereco)>'') and
              (Trim(enNumero)>'') and
              (SoDig(enCodMun)>'') and
              (Trim(enCidade)>'') and
              (Length(SoDig(enCEP))=8) and
              (Trim(enUF)>'');
  end else begin
    Result := (Trim(enEndereco)>'') and
              (Trim(enCidade)>'');
  end;
end;

function TncEndereco.Resumo: String;

procedure Add(S: String; aSep: String = sLinebreak);
begin
  if Trim(S)='' then Exit;
  if Result>'' then Result := Result + aSep;
  Result := Result + Trim(S);
end;

begin
  Result := '';
  Add(enDest);
  if is_br then 
    Add(enEndereco+' '+Trim(enNumero)+' '+Trim(enEndereco2)) 
  else begin
    Add(enEndereco);
    Add(enEndereco2);
  end;
  Add(enBairro);
  Add(enCidade);
  Add(enUF, ', ');
  Add(enCEP, ', ');
  if is_br and (enCodMun>'') then
    Add('IBGE: '+enCodMun, ', ');
  Add(enObs);
end;

function TncEndereco.ResumoEntrega(L: TncEndereco): String;

procedure Add(S: String; aSep: String = sLinebreak);
begin
  if Trim(S)='' then Exit;
  if Result>'' then Result := Result + aSep;
  Result := Result + Trim(S);
end;

begin
  Result := '';
  Add(enDest);
  if is_br then 
    Add(enEndereco+' '+Trim(enNumero)+' '+Trim(enEndereco2)) 
  else begin
    Add(enEndereco);
    Add(enEndereco2);
  end;
  Add(enBairro);
  
  if (L=nil) or (not SameText(enCidade, L.enCidade)) then begin
    Add(enCidade);
    Add(enUF, '-');
  end;  
  Add(enObs);
end;

function TncEndereco.ResumoLinhaUnica: String;

procedure Add(S: String; aSep: String = ', ');
begin
  if Trim(S)='' then Exit;
  if Result>'' then Result := Result + aSep;
  Result := Result + Trim(S);
end;

begin
  Result := '';
  if is_br then 
    Add(enEndereco+' '+Trim(enNumero)+' '+Trim(enEndereco2)) 
  else begin
    Add(enEndereco);
    Add(enEndereco2, ' ');
  end;
  Add(enBairro);
  Add(enCidade);
  Add(enUF, '-');
end;

procedure TncEndereco.SaveToDataset(D: TDataset);
var F: TField;
begin
  D.FieldByName('endereco_id').AsString := TGuidEx.ToString(enID);

  F := D.FindField('cliente_id');

  if F<>nil then
    F.AsLongWord := enCliente else
    D.FieldByName('id').AsLongWord := enCliente;
    
  D.FieldByName('endereco').AsString := enEndereco;
  D.FieldByName('endereco2').AsString := enEndereco2;
  D.FieldByName('cidade').AsString := enCidade;
  D.FieldByName('uf').AsString := enUF;
  D.FieldByName('bairro').AsString := enBairro;
  D.FieldByName('CEP').AsString := enCEP;
  D.FieldByName('end_numero').AsString := enNumero;
  D.FieldByName('end_CodMun').AsString := enCodMun;
  D.FieldByName('end_dest').AsString := enDest;
  D.FieldByName('pais').AsString := enPais;
  D.FieldByName('end_obs').AsString := enObs;

  F := D.FindField('pos');
  if Assigned(F) then
    F.AsInteger := enPos;

  F := D.FindField('def_cad');
  if Assigned(F) then 
    F.AsBoolean := enDefCad;

  F := D.FindField('def_cob');
  if Assigned(F) then 
    F.AsBoolean := enDefCobr;
    
  F := D.FindField('def_end');
  if Assigned(F) then 
    F.AsBoolean := enDefEntrega;
end;


function TncEndereco.Vazio: Boolean;
begin
  Result := (enEndereco='') and (enEndereco2='') and (enCidade='') and (enUF='') and (enBairro='') and (enCEP='') and (enNumero='') and (enDest='');
end;

end.
