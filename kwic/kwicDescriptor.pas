unit kwicDescriptor;

interface

uses nxllStreams, nxsdDataDictionaryFullText;

type

(*
  TnxKwicDescriptor = class;
  TnxKwicDescriptorclass = class of TnxKwicDescriptor;

  TnxKwicTokenExtractor = class;
  TnxKwicTokenExtractorclass = class of TnxKwicTokenExtractor;
*)

  TnxKwicTokenExtractorDescriptor = class(TnxFieldTokenExtractorDescriptor)
  protected {private}
    kcedKeywordSeparator : WideString;
    procedure SetkcedKeywordSeparator(aSeparator: WideString);
  public
    procedure SaveToWriter(aWriter: TnxWriter; aClientVersion: Integer); override;
    procedure LoadFromReader(aReader: TnxReader); override;
    property KeywordSeparator: WideString
        read kcedKeywordSeparator
        write SetkcedKeywordSeparator;
  end;

implementation

uses nxllBde;

{ TnxKwicTokenExtractorDescriptor }

procedure TnxKwicTokenExtractorDescriptor.LoadFromReader(aReader: TnxReader);
var
  Version: integer;
begin
  inherited;
  Version := aReader.ReadInteger;
  if Version <> 1 then
    raise EnxFulltextIndexDescriptorException.nxCreate(DBIERR_NX_INCOMPATSTREAM);
end;

procedure TnxKwicTokenExtractorDescriptor.SaveToWriter(aWriter: TnxWriter;
  aClientVersion: Integer);
begin
  inherited;
  aWriter.WriteInteger(1);
end;

procedure TnxKwicTokenExtractorDescriptor.SetkcedKeywordSeparator(
  aSeparator: WideString);
begin
  kcedKeywordSeparator := aSeparator;
end;

initialization
  TnxKwicTokenExtractorDescriptor.Register();
finalization
  TnxKwicTokenExtractorDescriptor.Unregister;
end.
