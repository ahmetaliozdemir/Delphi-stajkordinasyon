unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;
type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    ImageList1: TImageList;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    Label2: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Label16: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image2: TImage;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    bolumcmb: TComboBox;
    Button10: TButton;
    Button8: TButton;
    Button9: TButton;
    TabSheet2: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Image3: TImage;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    kbolumcmb: TComboBox;
    Button4: TButton;
    Yeni: TButton;
    Button12: TButton;
    Button13: TButton;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBGrid3: TDBGrid;
    bastar: TDateTimePicker;
    bittar: TDateTimePicker;
    Button14: TButton;
    DBEdit11: TDBEdit;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    FlowPanel1: TFlowPanel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button15: TButton;
    Button16: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    TabSheet5: TTabSheet;
    DBText1: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    DBGrid4: TDBGrid;
    DBEdit12: TDBEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    islem: TFDQuery;
    Edit1: TEdit;
    odkod: TRadioButton;
    odad: TRadioButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Button21: TButton;
    Button22: TButton;
    Button7: TButton;
    ogrencicmb: TComboBox;
    Label14: TLabel;
    isletme: TComboBox;
    Label24: TLabel;
    Button11: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gizle();
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bolumcmbChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure bolumcek(var c:TComboBox);
    procedure dbaktif(var s:Boolean);
    procedure lblClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button9Click(Sender: TObject);
    procedure gresimguncelle(var s : TDBGrid;var i:TImage;Const b:Integer);
    procedure ogrencicek(var c:TComboBox) ;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button13Click(Sender: TObject);
    procedure YeniClick(Sender: TObject);
    procedure isletmecek(var c:TComboBox) ;
    procedure Button12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure kbolumcmbChange(Sender: TObject);
    procedure ogrencicmbChange(Sender: TObject);
    procedure isletmeChange(Sender: TObject);
    procedure bastarChange(Sender: TObject);
    procedure bittarChange(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    Procedure FileCopy( Const sourcefilename, targetfilename: String );
    procedure Button25Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        kadsoyad : String;
        kresim : String;
        kno : integer;
  end;

var
  Form2: TForm2;
  bolumid:Array of Integer;
  ogrenciid:Array of Integer;
  isletmeid:Array of Integer;
  tabs:Integer;
  dosyayolu: string;
  kresimyol: String;
  kresimadi: String;
  kadsoyad: String;
  kid:integer;

implementation

  uses Unit1;
{$R *.dfm}

procedure TForm2.gizle();
var
  I: Integer;

begin

   for I := 0 to tabs-1 do
    begin
     PageControl1.Pages[I].TabVisible := false;
    end;

end;

 procedure TForm2.dbaktif(var s:Boolean);
 begin
  FDConnection1.Connected := s;
  FDQuery1.Active := s;
  FDQuery2.Active := s;
  FDQuery3.Active := s;
  FDQuery4.Active := s;
  FDQuery5.Active := s;
  islem.Active := s;
 end;

procedure TForm2.Label4Click(Sender: TObject);
begin
label4.Caption := kadsoyad;
end;

procedure TForm2.lblClick(Sender: TObject);
begin
ShowMessage(kadsoyad);

end;

procedure TForm2.YeniClick(Sender: TObject);
begin
FDQuery2.Insert;
Button13.Enabled := true;
Button7.Enabled := true;
end;

procedure TForm2.bolumcmbChange(Sender: TObject);
var bkod:Integer;
begin
   bkod := bolumid[bolumcmb.ItemIndex];
   FDQuery1.Edit;
   DBGrid1.Fields[6].AsString := bkod.ToString;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
FDQuery1.Insert;
Button8.Enabled := True;
Button21.Enabled := True;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
isletme.Enabled := False;
ogrencicmb.Enabled := False;
bastar.Enabled := False;
bittar.Enabled := False;
button11.Enabled := False;
DBEdit11.Enabled := False;
FDQuery3.Post;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
  FDQuery2.Post;
Button13.Enabled := false;
Button7.Enabled := false;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
 FDQuery2.Edit;
Button8.Enabled := true;
Button13.Enabled := true;
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
isletme.Enabled := True;
ogrencicmb.Enabled := True;
bastar.Enabled := True;
bittar.Enabled := True;
button11.Enabled := True;
DBEdit11.Enabled := True;
FDQuery3.Edit;
end;

procedure TForm2.Button1Click(Sender: TObject);
var i:Integer;
begin
gizle();
PageControl1.Pages[0].TabVisible := True;

//ShowMessage(ParamStr(0));
   bolumcek(bolumcmb);
end;

 procedure TForm2.bittarChange(Sender: TObject);
var bkod:String;
begin
 bkod := Datetostr(bittar.Date);
   FDQuery3.Edit;
   DBGrid3.Fields[5].AsString := bkod;
end;

procedure TForm2.bolumcek(var c:TComboBox) ;
 var i:integer;
begin
  i := 0;
with islem do
begin
c.Items.Clear;
close;
sql.clear;
sql.add('select * from bolum');
active:=true;
first;
SetLength(bolumid,islem.RecordCount);
while not eof do
begin
bolumid[i] := FieldByName('bolum_id').AsInteger;
c.items.add(FieldByName('bolum_adi').AsString);
i := i + 1;
next;
end;
end;
end;

procedure TForm2.ogrencicek(var c:TComboBox) ;
 var i:integer;
begin
  i := 0;
with islem do
begin
c.Items.Clear;
close;
sql.clear;
sql.add('select * from ogrenci');
active:=true;
first;
SetLength(ogrenciid,islem.RecordCount);
while not eof do
begin
ogrenciid[i] := FieldByName('ogr_no').AsInteger;
c.items.add(FieldByName('ogr_ad').AsString + ' ' + FieldByName('ogr_soyad').AsString + ' ' + FieldByName('ogr_kod').AsString);
i := i + 1;
next;
end;
end;
end;

procedure TForm2.ogrencicmbChange(Sender: TObject);
var bkod:Integer;
begin
 bkod := ogrenciid[ogrencicmb.ItemIndex];
   FDQuery3.Edit;
   DBGrid3.Fields[1].AsString := bkod.ToString;
end;

procedure TForm2.isletmecek(var c:TComboBox) ;
 var i:integer;
begin
  i := 0;
with islem do
begin
c.Items.Clear;
close;
sql.clear;
sql.add('select * from isletme');
active:=true;
first;
SetLength(isletmeid,islem.RecordCount);
while not eof do
begin
isletmeid[i] := FieldByName('isletme_no').AsInteger;
c.items.add(FieldByName('isletme_ad').AsString);
i := i + 1;
next;
end;
end;
end;

procedure TForm2.isletmeChange(Sender: TObject);
var bkod:Integer;
begin
 bkod := isletmeid[isletme.ItemIndex];
   FDQuery3.Edit;
   DBGrid3.Fields[3].AsString := bkod.ToString;
end;

procedure TForm2.kbolumcmbChange(Sender: TObject);
var bkod:Integer;
begin
 bkod := bolumid[kbolumcmb.ItemIndex];
   FDQuery2.Edit;
   DBGrid2.Fields[3].AsString := bkod.ToString;
end;

procedure TForm2.Button21Click(Sender: TObject);
var openDialog : TOpenDialog;
begin
      openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
    if not openDialog.Execute
  then ShowMessage('hata')
  else
  begin
  kresimyol := openDialog.FileName;
  kresimadi := ExtractFileName(openDialog.FileName);
  Image2.Picture.LoadFromFile(kresimyol);
  FDQuery1.Edit;
  FDQuery1.Fields[7].AsString := kresimadi;
  end;
  openDialog.Free;
end;

procedure TForm2.Button22Click(Sender: TObject);
begin
 FDQuery1.Edit;
Button8.Enabled := true;
Button21.Enabled := true;
end;

procedure TForm2.Button23Click(Sender: TObject);
begin
isletme.Enabled := True;
ogrencicmb.Enabled := True;
bastar.Enabled := True;
bittar.Enabled := True;
button11.Enabled := True;
DBEdit11.Enabled := True;
FDQuery3.Insert;
end;

procedure TForm2.Button24Click(Sender: TObject);
var buttonSelected:Integer;
begin

buttonSelected := messagedlg('??renciyi silmek istiyormusunuz ?',mtCustom,
                              [mbYes,mbCancel], 0);
  if buttonSelected = mrYes    then
  begin
  FDQuery3.Delete;
  isletme.Enabled := False;
ogrencicmb.Enabled := False;
bastar.Enabled := False;
bittar.Enabled := False;
button11.Enabled := false;
DBEdit11.Enabled := False;
  end;

end;

procedure TForm2.Button25Click(Sender: TObject);
var openDialog : TOpenDialog;
begin
  openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
    if not openDialog.Execute
  then ShowMessage('hata')
  else
  begin
  kresimyol := openDialog.FileName;
  kresimadi := ExtractFileName(openDialog.FileName);
  Image2.Picture.LoadFromFile(kresimyol);
  FDQuery1.Edit;
  FDQuery1.Fields[7].AsString := kresimadi;
  end;
  openDialog.Free;
end;

Procedure TForm2.FileCopy( Const sourcefilename, targetfilename: String );
Var
S, T: TFileStream;
Begin
S := TFileStream.Create( sourcefilename, fmOpenRead );
try
T := TFileStream.Create( targetfilename,
fmOpenWrite or fmCreate );
try
T.CopyFrom(S, S.Size ) ;
finally
T.Free;
end;
finally
S.Free;
end;
End;

procedure TForm2.Button2Click(Sender: TObject);
begin
gizle();
PageControl1.Pages[1].TabVisible := True;
bolumcek(kbolumcmb);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
gizle();
PageControl1.Pages[2].TabVisible := True;
ogrencicek(ogrencicmb);
isletmecek(isletme);
isletme.Enabled := False;
ogrencicmb.Enabled := False;
bastar.Enabled := False;
bittar.Enabled := False;
end;

procedure TForm2.Button4Click(Sender: TObject);
var buttonSelected:Integer;
begin

buttonSelected := messagedlg('??renciyi silmek istiyormusunuz ?',mtCustom,
                              [mbYes,mbCancel], 0);
  if buttonSelected = mrYes    then FDQuery2.Delete;

   Button13.Enabled := false;
Button7.Enabled := false;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
label23.Caption := ExtractFileDir(Application.ExeName);
end;


procedure TForm2.Button7Click(Sender: TObject);
var openDialog : TOpenDialog;
begin
      openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
    if not openDialog.Execute
  then ShowMessage('hata')
  else
  begin
  kresimyol := openDialog.FileName;
  kresimadi := ExtractFileName(openDialog.FileName);
  Image3.Picture.LoadFromFile(kresimyol);
  FDQuery2.Edit;
  FDQuery2.Fields[6].AsString := kresimadi;
  end;
  openDialog.Free;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
FDQuery1.Post;
Button8.Enabled := false;
Button21.Enabled := false;

end;

procedure TForm2.Button9Click(Sender: TObject);
var buttonSelected : Integer;
begin
buttonSelected := messagedlg('??renciyi silmek istiyormusunuz ?',mtCustom,
                              [mbYes,mbCancel], 0);
  if buttonSelected = mrYes    then FDQuery1.Delete;

   Button8.Enabled := false;
Button21.Enabled := false;
end;

procedure TForm2.bastarChange(Sender: TObject);
var bkod:String;
begin
 bkod := Datetostr(bastar.Date);
   FDQuery3.Edit;
   DBGrid3.Fields[4].AsString := bkod;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.gresimguncelle(var s : TDBGrid;var i:TImage;Const b:Integer);
var resimurl:String;
begin
 resimurl :=  ExtractFilePath(Application.ExeName)+'resimler\'+s.Fields[b].AsString;
if(Length(s.Fields[b].AsString)>0) Then
begin
  i.Picture.LoadFromFile(resimurl);
end;
end;

procedure TForm2.DBGrid1ColEnter(Sender: TObject);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
gresimguncelle(DBGrid1,Image2,7);
end;

procedure TForm2.DBGrid2CellClick(Column: TColumn);
begin
gresimguncelle(DBGrid1,Image2,7);;
end;

procedure TForm2.DBGrid2ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
gresimguncelle(DBGrid2,Image3,6);
end;

procedure TForm2.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
gresimguncelle(DBGrid2,Image3,6);
end;

procedure TForm2.DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
gresimguncelle(DBGrid2,Image3,6);
end;

procedure TForm2.DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
gresimguncelle(DBGrid2,Image3,6);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
with FDQuery1 do
begin
  Close;
  SQL.Clear;
  if (odkod.Checked) then
  begin
    SQL.Add('select * from ogrenci where ogr_kod LIKE ''%' + Edit1.Text + '%''');
  end
  Else
  Begin
     SQL.Add('select * from ogrenci where ogr_ad LIKE ''%' + Edit1.Text + '%''');
  End;

  Active := True;
end;


end;

procedure TForm2.FormActivate(Sender: TObject);
begin
tabs := PageControl1.PageCount;
bolumcek(bolumcmb);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.FormShow(Sender: TObject);
var s:Boolean;
begin
  s:=True;
dbaktif(s);
Label4.Caption := kadsoyad;
Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'/resimler/'+kresim);

end;

end.
