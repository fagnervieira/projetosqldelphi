unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DLDataSet, Vcl.StdCtrls, DLExtraCompo,
  DLServerConnection, DLButtons, Vcl.Mask, DLEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.IB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.FMTBcd,
  Data.SqlExpr, Data.DBXFirebird, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    detSQL: TDLEdit;
    DLButton1: TDLButton;
    DLButton2: TDLButton;
    DLButton3: TDLButton;
    DLServerConnection1: TDLServerConnection;
    DLLabel1: TDLLabel;
    detCaminho: TDLEdit;
    DLQuery1: TDLQuery;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DLButton1Click(Sender: TObject);
    procedure DLButton2Click(Sender: TObject);
    procedure DLButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DLButton1Click(Sender: TObject);
begin
  DLServerConnection1.Close;
  DLServerConnection1.DatabaseURL := trim(detCaminho.Text);
  DLServerConnection1.Open;
  DLQuery1.Close;
  DLQuery1.SQL.Text := detSQL.Text;
  DLQuery1.ExecSQL;

  showmessage('ok');
end;

procedure TForm1.DLButton2Click(Sender: TObject);
begin
  FDConnection1.Close;
  FDConnection1.Params.Values['Database'] := trim(detCaminho.Text);
  FDConnection1.Open;
  FDQuery1.Close;
  FDQuery1.SQL.Text := detSQL.Text;
  FDQuery1.ExecSQL;

  showmessage('ok');
end;

procedure TForm1.DLButton3Click(Sender: TObject);
begin
  SQLConnection1.Close;
  SQLConnection1.Params.Values['Database'] := trim(detCaminho.Text);
  FDConnection1.Open;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := detSQL.Text;
  SQLQuery1.ExecSQL;

  showmessage('ok');

end;

end.
