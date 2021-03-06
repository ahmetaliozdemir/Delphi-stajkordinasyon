unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Dapt,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    FDQuery1: TFDQuery;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
var kadi,sifre:String;
begin
Form2.FDConnection1.Connected := true;
kadi:= Edit1.Text;
sifre := Edit2.Text;
with FDQuery1 do
begin
  Close();
  SQL.Clear;
  SQL.Add('select * from kullanici,kogretmen where k_ogretmen_no = kogr_id and k_kadi = :kadi and k_sifre = :ksifre');
  ParamByName('kadi').Value := Edit1.Text;
  ParamByName('ksifre').Value := Edit2.Text;
  Active:= True;

  if (RecordCount > 0) then
  begin
  Form2.kadsoyad := FieldByName('kogr_ad').AsString + ' ' + FieldByName('kogr_soyad').AsString;
  Form2.kresim := FieldByName('kogr_resim').AsString;
  Form2.kno := FieldByName('kogr_id').AsInteger;
     Application.ShowMainForm := False;
   Form1.Visible := False;
    Form2.ShowModal;
  end
  Else
  Begin
        ShowMessage('Kullan?c? ad? veya ?ifreniz yanl??!');
  End;
  Active:= False;
  Form2.FDConnection1.Connected := false;
end;

   
end;

procedure TForm1.FormShow(Sender: TObject);
begin

Form2.FDConnection1.ConnectionString := 'Database='+ ExtractFilePath(Application.ExeName) + 'ogrencikordinasyon.db'+';DriverID=SQLite';
//Edit1.Text := Form2.FDConnection1.ConnectionString;
end;

end.
