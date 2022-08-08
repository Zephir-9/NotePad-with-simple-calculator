unit Foreng_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFarenForm = class(TForm)
    Memo1: TMemo;
    FarenBtn: TBitBtn;
    CelsBtn: TBitBtn;
    ExitBtn: TBitBtn;
    FindBtn: TBitBtn;
    FindDialog1: TFindDialog;
    ClsBtn: TBitBtn;
    procedure ExitBtnClick(Sender: TObject);
    procedure FarenBtnClick(Sender: TObject);
    procedure CelsBtnClick(Sender: TObject);
    procedure FindBtnClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ClsBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FarenForm: TFarenForm;

implementation

{$R *.dfm}

procedure TFarenForm.ExitBtnClick(Sender: TObject);
begin
Close
end;

function CelToFar(ADegree: Integer): String;
begin
    Result := FormatFloat('0.0',(ADegree * 1.8) + 32) ;
end;

function FarToCel(ADegree: Integer): String;
begin
    Result := FormatFloat('0.0',(ADegree - 32) * 1.8);
end;

procedure TFarenForm.FarenBtnClick(Sender: TObject);
var i :Integer;
begin
    Memo1.Clear;
    For i:= 0 to 100 do
    Memo1.Lines.Add(FormatFloat('0.0',i)+ ' градусов Цельсия = '+
                    CelToFar(i)+' градусов Фаренгейта');
    Memo1.SetFocus;
    Memo1.SelStart := 0;
    Memo1.SelLength := 0;
end;

procedure TFarenForm.CelsBtnClick(Sender: TObject);
var i: Integer;
begin
    Memo1.Clear;
    For i := 0 to 100 do
    Memo1.Lines.Add(FormatFloat('0.0', i) + ' градусов Фаренгейта = ' +
                    FarToCel(i) + ' градусов Цельсия');
    Memo1.SetFocus;
    Memo1.SelStart := 0;
    Memo1.SelLength := 0;
end;

procedure TFarenForm.FindBtnClick(Sender: TObject);
begin
   FindDialog1.Execute;
end;

procedure TFarenForm.FindDialog1Find(Sender: TObject);
var i, j:Integer;
    AChars, APos: Integer;
begin
    For i:= 0 to Memo1.Lines.Count - 1 do
    begin
        APos := Pos(FindDialog1.FindText, Memo1.Lines[i]);
        if APos <> 0 then begin
        AChars := 0;
        For j := 0 to i - 1 do
        AChars := AChars + Length(Memo1.Lines[j]);
        AChars := AChars +(2*i);
        AChars := AChars + Apos - 1;
        Memo1.SetFocus;
        Memo1.SelStart := AChars;
        memo1.SelLength := Length(Memo1.Lines[j]);
    end;
    end;
    end;

procedure TFarenForm.ClsBtnClick(Sender: TObject);
begin
Memo1.Clear;
end;

end.
