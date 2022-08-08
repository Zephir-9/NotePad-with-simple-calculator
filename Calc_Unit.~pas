unit Calc_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Math;

type
  TCalcForm = class(TForm)
    CinEdit: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    SpbMC: TSpeedButton;
    SpbMR: TSpeedButton;
    SpbMS: TSpeedButton;
    SpbMPlus: TSpeedButton;
    SpbC: TSpeedButton;
    SpbBs: TSpeedButton;
    Spb0: TSpeedButton;
    Spb1: TSpeedButton;
    Spb4: TSpeedButton;
    Spb7: TSpeedButton;
    Spb00: TSpeedButton;
    Spb2: TSpeedButton;
    Spb5: TSpeedButton;
    Spb8: TSpeedButton;
    SpbDot: TSpeedButton;
    Spb3: TSpeedButton;
    Spb6: TSpeedButton;
    Spb9: TSpeedButton;
    SpbSign: TSpeedButton;
    SpbPlus: TSpeedButton;
    SpbMinus: TSpeedButton;
    SpbMlt: TSpeedButton;
    SpbDiv: TSpeedButton;
    SpbEqual: TSpeedButton;
    SpbSqrt: TSpeedButton;
    SpbPower: TSpeedButton;
    SpbInv: TSpeedButton;
    procedure SpbCClick(Sender: TObject);
    procedure SpbBsClick(Sender: TObject);
    procedure SpbMCClick(Sender: TObject);
    procedure SpbMRClick(Sender: TObject);
    procedure SpbMSClick(Sender: TObject);
    procedure SpbMPlusClick(Sender: TObject);
    procedure Spb0_9Click(Sender: TObject);
    procedure SpbSignClick(Sender: TObject);
    procedure SpbInvClick(Sender: TObject);
    procedure SpbSqrtClick(Sender: TObject);
    procedure SpbDotClick(Sender: TObject);
    procedure SpbOperClick(Sender: TObject);
    procedure SpbEqualClick(Sender: TObject);
    procedure Spb00Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  CalcForm: TCalcForm;
  nMem, Mem : Real;
  nArc1, nArc2 : Double;
  cOper : String;

implementation

{$R *.dfm}

procedure TCalcForm.SpbCClick(Sender: TObject);
begin
   CinEdit.Text := '';
end;

procedure TCalcForm.SpbBsClick(Sender: TObject);
begin
CinEdit.Text := Copy(CinEdit.Text, 1, Length(CinEdit.Text) - 1);
If (CinEdit.Text = '') Then
//CinEdit.Text := '0';
end;

procedure TCalcForm.SpbMCClick(Sender: TObject);
begin
Mem := 0;
Label1.Visible := false;
end;

procedure TCalcForm.SpbMRClick(Sender: TObject);
begin
CinEdit.Text := FloatToStr(nMem);
end;

procedure TCalcForm.SpbMSClick(Sender: TObject);
begin
nMem := StrToFloat(CinEdit.Text);
Label1.Visible := true;
end;

procedure TCalcForm.SpbMPlusClick(Sender: TObject);
begin
nMem := nMem + StrToFloat(CinEdit.Text);
Label1.Visible := true;
end;

procedure TCalcForm.Spb0_9Click(Sender: TObject);
begin
if(CinEdit.Text = '0') Then
    CinEdit.Text := '';

    CinEdit.Text := CinEdit.Text +
    Copy((Sender as TComponent).Name, 4, 1);

end;

procedure TCalcForm.SpbSignClick(Sender: TObject);
begin
CinEdit.Text := FloatToStr(-StrToFloat(CinEdit.Text));
end;

procedure TCalcForm.SpbInvClick(Sender: TObject);
begin
    try
       CinEdit.Text := FloatToStr(1/StrToFloat(CinEdit.Text));
    except
       ShowMessage('Ошибка расчёта');
    end;
end;

procedure TCalcForm.SpbSqrtClick(Sender: TObject);
begin
    try
       CinEdit.Text := FloatToStr(sqrt(StrToFloat(CinEdit.Text)));
    except
       ShowMessage('!!!!' +chr(10) + chr(13) + 'dasfdf');
    end;
end;

procedure TCalcForm.SpbDotClick(Sender: TObject);
begin
if(Pos(DecimalSeparator, CinEdit.Text) = 0) Then
CinEdit.Text := CinEdit.Text + DecimalSeparator;
end;

procedure TCalcForm.SpbOperClick(Sender: TObject);
var cName: String;
begin

    nArc1 := StrToFloat(CinEdit.Text);
    cName := (Sender as TComponent).Name;
    cOper := Copy(cName, 4, Length(cName) - 3);
    CinEdit.Text := '0';

end;

procedure TCalcForm.SpbEqualClick(Sender: TObject);
begin
    nArc2 := StrToFloat(CinEdit.Text);
     if(cOper = 'Div') Then
     Try
         nArc1 := nArc1 / nArc2;
     except
       ShowMessage('!!!!' +chr(10) + chr(13) + 'dasfdf');
       nArc1 := 0;
    end
    Else if(cOper = 'Mlt')  then
    begin
    nArc1 := nArc1 * nArc2;
    end
    Else if(cOper = 'Minus')  then
    begin
    nArc1 := nArc1 - nArc2;
    end
    Else if(cOper = 'Plus')  then
    begin
    nArc1 := nArc1 + nArc2;
    end
    Else if(cOper = 'Power')  then
    begin
    nArc1 := Power(nArc1, nArc2);
    end;

   CinEdit.Text := FloatToStr(nArc1);
end;

procedure TCalcForm.Spb00Click(Sender: TObject);
begin
if(CinEdit.Text = '0') Then
begin
    CinEdit.Text := '';
    end
else if(CinEdit.Text = '00') Then
begin
    CinEdit.Text := '';
end;

CinEdit.Text := CinEdit.Text + '00';
end;

end.
