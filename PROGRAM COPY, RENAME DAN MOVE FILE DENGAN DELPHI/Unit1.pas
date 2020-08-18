unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FileCtrl;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      Edit1.Text := OpenDialog1.FileName;
      Edit2.Text := Edit1.Text;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  st : string;
begin
  st := 'D:\ilma\';
  if SelectDirectory(St, [], 0) then
    Edit2.Text:= st+'\'+ExtractFileName(Edit1.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
    begin
      if CopyFile(PChar(Edit1.Text), PChar(Edit2.Text), False) then
        ShowMessage('DATA TELAH TERCOPY');
        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (Edit1.Text<>'')and(Edit3.Text<>'') then
    begin
      if RenameFile(Edit1.Text, Edit3.Text+'.pdf') then
      ShowMessage('FILE TELAH DI MOVE DAN DI RENAME');
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
    end
  else
    ShowMessage('EDIT 3 TIDAK BOLEH KOSONG');

end;

end.
