unit htmlCodec;

interface

function htmlDecodeStr(S: String): String;

implementation

type
  Thtmlcode = record
    fHtml : String;
    fString : String;
  end;

const
  htmlCodes : array[0..3] of ThtmlCode = (
    (fHtml : '&amp;'; fString : '&'),
    (fHtml : '&lt;';  fString : '<'),
    (fHtml : '&gt;';  fString : '>'),
    (fHtml : '&quot;'; fString : '"'));

function htmlDecodeStr(S: String): String;
var 
  I, P : Integer;
  Achou : Boolean;
begin  
  Result := S;
  for I := 0 to High(htmlCodes) do 
    repeat
      P := Pos(htmlCodes[I].fHtml, Result);
      if P>0 then begin
        Result := Copy(Result, 1, P-1) + 
                  htmlCodes[I].fString + 
                  Copy(Result, P+Length(htmlCodes[I].fHtml), Length(Result));
      end;
    until (P=0);
end;



end.
