unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    edt6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    DISKON: TLabel;
    Ldiskon: TLabel;
    procedure Posisiawal;
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Posisiawal;
begin
  btn1.Enabled:=true;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
  edt1.Clear;
  edt1.Enabled:= True;
  edt2.Clear;
  edt2.Enabled:= True;
  edt3.Clear;
  edt3.Enabled:= True;
  edt4.Clear;
  edt4.Enabled:= True;
  edt5.Clear;
  edt5.Enabled:= True;
end;


procedure TForm1.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
  begin
    chk2.Checked:=false;
    Ldiskon.Caption:='10%';
  end;
end;

procedure TForm1.chk2Click(Sender: TObject);
begin
  if chk2.Checked then
  begin
    chk1.Checked:=false;
    Ldiskon.Caption:='5%';
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
btn1.Enabled:=true;
btn2.Enabled:=true;
btn3.Enabled:=true;
btn4.Enabled:=true;
btn5.Enabled:=true;
edt1.Clear;
edt1.Enabled:= True;
edt2.Clear;
edt2.Enabled:= True;
edt3.Clear;
edt3.Enabled:= True;
edt4.Clear;
edt4.Enabled:= True;
edt5.Clear;
edt5.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if (edt1.Text = '') and (edt2.Text ='') and (edt3.Text = '') and (edt4.Text = '') and (edt5.Text = '') and
(edt6.Text = '') then
  begin
    ShowMessage('Masukkan teks');
    Exit;
  end else
  if DataModule2.Zkustomer.Locate('nik', edt1.Text, []) then
  begin
    ShowMessage('Data Dengan nik ' + edt1.Text + ' Sudah Ada Didalam Sistem');
  end else
  begin
    DataModule2.Zkustomer.SQL.Clear;
    DataModule2.Zkustomer.SQL.Add('INSERT INTO kustomer  VALUES (:id, :nik, :nama, :telp, :email, :alamat, :member)');
    DataModule2.Zkustomer.ParamByName('id').AsString := a;
    DataModule2.Zkustomer.ParamByName('nik').AsString := edt1.Text;
    DataModule2.Zkustomer.ParamByName('nama').AsString := edt2.Text;
    DataModule2.Zkustomer.ParamByName('telp').AsString := edt3.Text;
    DataModule2.Zkustomer.ParamByName('email').AsString := edt4.Text;
    DataModule2.Zkustomer.ParamByName('alamat').AsString := edt5.Text;
    if chk1.Checked then
    begin
      DataModule2.Zkustomer.ParamByName('member').AsString := chk1.Caption;
    end else
    begin
      DataModule2.Zkustomer.ParamByName('member').AsString := chk2.Caption;
    end;
    DataModule2.Zkustomer.ExecSQL;

    DataModule2.Zkustomer.SQL.Clear;
    DataModule2.Zkustomer.SQL.Add('SELECT * FROM kustomer');
    DataModule2.Zkustomer.Open;
    ShowMessage('Data berhasil disimpan');
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if edt1.Text = '' then
  begin
    ShowMessage('NIK Tidak Boleh Kosong!');
  end else
  begin
    DataModule2.Zkustomer.SQL.Clear;
    DataModule2.Zkustomer.SQL.Add('UPDATE kustomer SET nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member WHERE Id = :id');
    DataModule2.Zkustomer.ParamByName('nik').AsString := edt1.Text;
    DataModule2.Zkustomer.ParamByName('nama').AsString := edt2.Text;
    DataModule2.Zkustomer.ParamByName('telp').AsString := edt3.Text;
    DataModule2.Zkustomer.ParamByName('email').AsString := edt4.Text;
    DataModule2.Zkustomer.ParamByName('alamat').AsString := edt5.Text;
    if chk1.Checked then
    begin
      DataModule2.Zkustomer.ParamByName('member').AsString := chk1.Caption;
    end else
    begin
      DataModule2.Zkustomer.ParamByName('member').AsString := chk2.Caption;
    end;
    DataModule2.Zkustomer.ParamByName('id').AsString := a; // Assuming 'a' is the ID value
    DataModule2.Zkustomer.ExecSQL;

    // Clear the SQL statement before executing the SELECT query
    DataModule2.Zkustomer.SQL.Clear;
    DataModule2.Zkustomer.SQL.Add('SELECT * FROM kustomer');
    DataModule2.Zkustomer.Open;
    ShowMessage('Data berhasil diupdate');
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  edt1.Text := UpperCase(DataModule2.Zkustomer.Fields[1].AsString);
  edt2.Text := UpperCase(DataModule2.Zkustomer.Fields[2].AsString);
  edt3.Text := UpperCase(DataModule2.Zkustomer.Fields[3].AsString);
  edt4.Text := UpperCase(DataModule2.Zkustomer.Fields[4].AsString);
  edt5.Text := UpperCase(DataModule2.Zkustomer.Fields[5].AsString);
  if DataModule2.Zkustomer.Fields[6].AsString = 'YA' then
  begin
    chk1.Checked := True;
    chk2.Checked := False;
  end
  else
  begin
    chk1.Checked := False;
    chk2.Checked := True;
  end;
  a := DataModule2.Zkustomer.Fields[0].AsString;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModule2.Zkustomer do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM kustomer WHERE id = ''' + a + '''');
      ExecSQL;

      SQL.Clear;
      SQL.Add('SELECT * FROM kustomer');
      Open;
      ShowMessage('Data berhasil dihapus');
    end;
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Posisiawal;
end;

end.
