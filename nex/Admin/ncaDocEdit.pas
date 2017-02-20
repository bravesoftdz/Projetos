unit ncaDocEdit;

interface

uses sysutils, classes, cxEdit, cxButtonEdit;

type
  TncDocEdit = class ( TcxButtonEdit )
  private
    FTipoDoc : Byte;
    FIDDoc   : String;
    FOnAlterou : TNotifyEvent;
    procedure SetIDDoc(const Value: String);
  public
    constructor Create(AOwner: TComponent); override;

    procedure ButtonClick(Sender: TObject; AButtonIndex: Integer);    
  published
    property OnAlterou: TNotifyEvent
      read FOnAlterou write FOnAlterou;
      
    property Tipo: Byte
      read FTipoDoc write FTipoDoc;

    property IDDoc : String
      read FIDDoc write SetIDDoc;
  end;

  TncBaseDocEditHelper = class
    function ObtemNome(aDocID: String): String; virtual; abstract;
    function RunDocMgr(aDocEdit: TncDocEdit): Boolean; virtual; abstract;
  end;

  procedure Register;
  
var
  gDocEditHelper : TncBaseDocEditHelper;

implementation


{ TncDocEdit }

procedure TncDocEdit.ButtonClick(Sender: TObject; AButtonIndex: Integer);
var SID: String;
begin
  if Assigned(gDocEditHelper) then begin
    SID := FIDDoc;
    gDocEditHelper.RunDocMgr(Self);
    if Assigned(FOnAlterou) and (FIDDOC <> SID) then
      FOnAlterou(Self);
  end;  
end;

constructor TncDocEdit.Create(AOwner: TComponent);
begin
  inherited;
  FTipoDoc := 0;
  FIDDoc := '';
  FOnAlterou := nil;
  Properties.Buttons[0].Kind := bkDown;
  Properties.OnButtonClick := ButtonClick;
end;

procedure TncDocEdit.SetIDDoc(const Value: String);
begin
  FIDDoc := Value;
  if FIDDoc>'' then begin
    if Assigned(gDocEditHelper) then begin
      Text := gDocEditHelper.ObtemNome(FIDDoc); 
      if Trim(Text)='' then FIDDoc := '';
    end;  
  end else
    Text := '';

//  Properties.Buttons[0].Caption := Text;  
end;

procedure Register;
begin
  RegisterComponents('NEX', [TncDocEdit]); // do not localize
end;

initialization
  gDocEditHelper := nil;

finalization
  if Assigned(gDocEditHelper) then FreeAndNil(gDocEditHelper);

end.