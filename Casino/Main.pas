unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, DateUtils, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdSSL, IdSSLOpenSSL,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdCmdTCPClient, IdIntercept,
  IdZLibCompressorBase, IdCompressorZLib, IdCookieManager, Vcl.OleCtrls, SHDocVw,
  IdCustomTransparentProxy, IdSocks, UWebBrowserWrapper;

const Site='https://betgames9.betgames.tv/';
SiteTable='https://betgames9.betgames.tv/ext/game/results/testpartner';
MySite='http://pterik.com/';

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    MonthCalendar1: TMonthCalendar;
    MemoHtml: TMemo;
    WebBrowser1: TWebBrowser;
    UltraWebBrowser: TWebBrowserWrapper;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdHTTP1Redirect(Sender: TObject; var dest: string;
      var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
  private
    function IsPageLoaded(const Url: string): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.IdHTTP1Redirect(Sender: TObject; var dest: string;
  var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
begin
 Handled := True;
end;

function TForm1.isPageLoaded(const Url:string):boolean;
var stream: TMemoryStream;
begin
Result:=false;
stream:=TMemoryStream.Create;
//IdHttp1.Get(Url, stream);
Stream.saveToFile('D:\temp\Helloworld.html');
stream.Free;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
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
WebBrowser1.Navigate(SiteTable);
Sleep(1000);
//IdHTTP1.Disconnect;
//WebBrowser1.saveToFile('D:\temp\pterik'+IntToStr(random(9999999))+'.html');

Memo1.Lines.Add(Site);

//IdHttp1.Get(Site, stream);
Sleep(1000);
//IdHTTP1.Disconnect;
Stream.saveToFile('D:\temp\Site'+IntToStr(random(9999999))+'.html');
PageNum:=1;
while not EOP do
  begin
    PageUrl:=SiteTable+'/'+SDate+'/8/'+IntToStr(PageNum);
    Memo1.Lines.Add(PageUrl);

    //IdHttp1.Get(PageUrl, stream);
    Sleep(1000);
    //IdHTTP1.Disconnect;
    Stream.saveToFile('D:\temp\Table'+IntToStr(random(9999999))+'.html');
//    EOP:=not isPageLoaded(PageUrl);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
MonthCalendar1.Date:=Now()-30;
MonthCalendar1.MaxDate:=Now();
end;

end.

