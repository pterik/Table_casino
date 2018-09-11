unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, DateUtils, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdSSL, IdSSLOpenSSL,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdCmdTCPClient, IdIntercept,
  IdZLibCompressorBase, IdCompressorZLib, IdCookieManager, Vcl.OleCtrls, SHDocVw,
  IdCustomTransparentProxy, IdSocks,  ExtCtrls, UWebBrowserWrapper;

const
  Site='https://betgames9.betgames.tv/';
  SiteTable='https://betgames9.betgames.tv/ext/game/results/testpartner';
  MySite='http://pterik.com/';

type
  TMainForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    MonthCalendar1: TMonthCalendar;
    wbTest: TWebBrowser;
    sbMain: TStatusBar;
    BitBtnSave: TBitBtn;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdHTTP1Redirect(Sender: TObject; var dest: string;
      var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    fWBW: TWebBrowserWrapper;
    function IsPageLoaded(const Url: string): boolean;
    procedure UpdateStatusBar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses  MSHTML, FmSaveEncodingDlg;
{$R *.dfm}

{$IFDEF UNICODE}
function EncodingName(const Encoding: TEncoding): string;
begin
  if TEncoding.IsStandardEncoding(Encoding) then
  begin
    if Encoding = TEncoding.ASCII then
      Result := 'ASCII'
    else if Encoding = TEncoding.BigEndianUnicode then
      Result := 'Unicode (BE)'
    else if Encoding = TEncoding.Default then
      Result := 'Default'
    else if Encoding = TEncoding.Unicode then
      Result := 'Unicode (LE)'
    else if Encoding = TEncoding.UTF7 then
      Result := 'UTF7'
    else if Encoding = TEncoding.UTF8 then
      Result := 'UTF8';
  end
  else
  begin
    if Encoding is TMBCSEncoding then
      Result := 'MBCS'
    else
      Result := 'Unknown';
  end;
end;
{$ENDIF}

procedure TMainForm.IdHTTP1Redirect(Sender: TObject; var dest: string;
  var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
begin
 Handled := True;
end;

function TMainForm.isPageLoaded(const Url:string):boolean;
var stream: TMemoryStream;
begin
Result:=false;
stream:=TMemoryStream.Create;
//IdHttp1.Get(Url, stream);
//Stream.saveToFile('D:\temp\Helloworld.html');
stream.Free;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
var EOP:boolean;
PageNum:integer;
Year, Month, Day: Word;
Sdate:string;
PageUrl:string;
stream: TMemoryStream;
begin
try
try
stream:=TMemoryStream.Create;
//'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36';
Memo1.Clear;
if MonthCalendar1.Date>Now() then
  begin
  ShowMessage('���� ��������� � �������, �������� ������ ����');
  exit;
  end;
DecodeDate(MonthCalendar1.Date, Year, Month, Day);
SDate:=IntToStr(Year)+'-'+IntToStr(Month)+'-'+IntToStr(Day);
EOP:=false;
Memo1.Lines.Add(MySite);
//IdHttp1.Get(MySite, stream);
//wbTest.Navigate(SiteTable);
fWBW.NavigateToURL(SiteTable);
UpdateStatusBar;
Sleep(1000);
//IdHTTP1.Disconnect;
//WebBrowser1.saveToFile('D:\temp\pterik'+IntToStr(random(9999999))+'.html');

Memo1.Lines.Add(Site);

//IdHttp1.Get(Site, stream);
Sleep(1000);
//IdHTTP1.Disconnect;
//Stream.saveToFile('D:\temp\Site'+IntToStr(random(9999999))+'.html');
PageNum:=1;
while not EOP do
  begin
    PageUrl:=SiteTable+'/'+SDate+'/8/'+IntToStr(PageNum);
    Memo1.Lines.Add(PageUrl);

    //IdHttp1.Get(PageUrl, stream);
    Sleep(1000);
    //IdHTTP1.Disconnect;
    //Stream.saveToFile('D:\temp\Table'+IntToStr(random(9999999))+'.html');
    //EOP:=not isPageLoaded(PageUrl);
    inc(PageNum);
    if pageNum =2 then EOP:=true;
  end;
except on E:Exception do
Memo1.Lines.Add(E.Message);
end;
finally
stream.Free;
end;
end;

procedure TMainForm.BitBtnSaveClick(Sender: TObject);
begin
  if dlgSave.Execute then
  begin
//    {$IFDEF UNICODE}
//    if Assigned(SaveEncodingDlg.Encoding) then
//      fWBW.SaveToFile(dlgSave.FileName, SaveEncodingDlg.Encoding)
//    else
//      fWBW.SaveToFile(dlgSave.FileName);
//    {$ELSE}
    fWBW.SaveToFile(dlgSave.FileName);
//    {$ENDIF}
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
MonthCalendar1.Date:=Now()-30;
MonthCalendar1.MaxDate:=Now();
wbTest.Silent:=true;
fWBW := TWebBrowserWrapper.Create(wbTest);
TEncoding.Default;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  fWBW.Free;
end;

procedure TMainForm.FormShow(Sender: TObject);
 var Wrapper: TWebBrowserWrapper;
begin
  Wrapper := TWebBrowserWrapper.Create(wbTest);
  try
    Wrapper.NavigateToURL('about:blank');
  finally
    Wrapper.Free;
  end;

end;

procedure TMainForm.UpdateStatusBar;
var
  Doc: IHTMLDocument2;
begin
  if not Assigned(fWBW.WebBrowser.Document) then
    exit;
  // wait for document to load
  while fWBW.WebBrowser.ReadyState <> READYSTATE_COMPLETE do
    Application.ProcessMessages;
  if fWBW.WebBrowser.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then
    {$IFDEF UNICODE}
    sbMain.SimpleText := Format(
      'Charset: %s    Encoding: %s', [Doc.charset, EncodingName(fWBW.Encoding)]
    );
    {$ELSE}
    sbMain.SimpleText := Format('Charset: %s', [Doc.charset]);
    {$ENDIF}
end;

end.

