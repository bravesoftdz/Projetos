unit uNxCompression;

interface

uses  SysUtils, Windows, classes, nxllZipCompressor, nxllTypes, ncDebug;

function CompressFile(fnUncomp, fnCompr: string):boolean;
function UnCompressFile(fnCompr, fnUncomp : string):boolean;

implementation

function CompressFile(fnUncomp, fnCompr: string):boolean;
var
    UnCompressedStream, CompressedStream :TMemoryStream;
    UnCompressedStreamSize, CompressedStreamSize : TnxWord32;
    Compressor : TnxZipCompressor;
    f1 : TFileStream;
    f2 : TFileStream;
begin
    result := false;
    UnCompressedStream := TMemoryStream.Create;
    CompressedStream := TMemoryStream.Create;
    Compressor := TnxZipCompressor.Create;
    f1 := TFileStream.Create(fnUncomp, fmOpenRead );
    try
        UnCompressedStream.CopyFrom(f1,0);
        CompressedStream.Position := 0;
        UnCompressedStream.Position := 0;
        UnCompressedStreamSize := UnCompressedStream.Size;
        CompressedStream.Write(UnCompressedStreamSize,4);
        CompressedStream.SetSize(UnCompressedStreamSize+4) ;
        CompressedStream.Position := 4;
        CompressedStreamSize :=
        Compressor.Compress( UnCompressedStream.Memory,
            Pointer(Cardinal(CompressedStream.Memory) + 4),
            UnCompressedStreamSize);
            
        if CompressedStreamSize < UnCompressedStreamSize then begin
            CompressedStream.Position := 0;
            CompressedStream.Write(UnCompressedStreamSize,4);
            CompressedStream.SetSize(CompressedStreamSize+4);
        end else begin
            CompressedStream.Position := 0;
            CompressedStreamSize := 0;
            CompressedStream.Write(CompressedStreamSize,4);
            UnCompressedStream.Position := 0;
            CompressedStream.Write( UnCompressedStream.Memory,
            UnCompressedStreamSize);
        end;

        try
            deletefile(pchar(fnCompr));
            f2 := TFileStream.Create(fnCompr, fmCreate   );
            CompressedStream.seek(0,0);
            f2.copyfrom (CompressedStream, 0);
            f2.Free;

            result := true;
        except
        end;
    finally
        UnCompressedStream.Free;
        CompressedStream.Free;
        Compressor.Free;
        f1.free;
    end;
end;

function UnCompressFile(fnCompr, fnUncomp : string):boolean;
var
    CompressedStream, DecompressedStream :TMemoryStream;
    CompressedStreamSize, DeCompressedStreamSize : TnxWord32;
    Compressor : TnxZipCompressor;
    f1 : TFileStream;
    f2 : TFileStream;
begin
    result := false;
    CompressedStream := TMemoryStream.Create;
    DecompressedStream := TMemoryStream.Create;
    Compressor := TnxZipCompressor.Create;
    f1 := TFileStream.Create(fnCompr, fmOpenRead);
    try
        CompressedStream.CopyFrom(f1,0);
        CompressedStreamSize := f1.size - 4;
        CompressedStream.Position := 0;
        CompressedStream.Read(DeCompressedStreamSize,4);
        DecompressedStream.SetSize (DeCompressedStreamSize);
        try
            Compressor.Uncompress( Pointer(Cardinal(CompressedStream.Memory) + 4),
                DecompressedStream.Memory,
                CompressedStreamSize, DeCompressedStreamSize);

            deletefile(pchar(fnUncomp));
            f2 := TFileStream.Create(fnUncomp, fmCreate   );
            DecompressedStream.seek(0,0);
            f2.copyfrom (DecompressedStream, 0);
            f2.Free;

            result := true;
        except
        end;

    finally
        f1.free;
        CompressedStream.Free;
        DecompressedStream.Free;
        Compressor.Free;
    end;
end;

end.
