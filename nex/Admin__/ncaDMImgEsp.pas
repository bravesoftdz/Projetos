unit ncaDMImgEsp;

interface

uses
  SysUtils, Classes, ImgList, Controls, cxGraphics, System.ImageList;

type
  TdmImgEsp = class(TDataModule)
    imgs48: TcxImageList;
    imgs24: TcxImageList;
    imgs16: TcxImageList;
    imgs24_nova: TcxImageList;
    imgs48_nova: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImgEsp: TdmImgEsp;

implementation

{$R *.dfm}

end.
