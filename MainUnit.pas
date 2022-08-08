unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TNotePad = class(TForm)
    Memo1: TMemo;
    BtnSave: TButton;
    BtnLoad: TButton;
    BtnClear: TButton;
    BtnExit: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    SaveOpt: TMenuItem;
    LoadOpt: TMenuItem;
    ClearOpt: TMenuItem;
    N1: TMenuItem;
    ExitOpt: TMenuItem;
    PopupMenu1: TPopupMenu;
    SavePU: TMenuItem;
    LoadPU: TMenuItem;
    ClearPU: TMenuItem;
    N2: TMenuItem;
    ExitPU: TMenuItem;
    HelpSel: TMenuItem;
    AboutOpt: TMenuItem;
    CalcSel: TMenuItem;
    FarenSel: TMenuItem;
    procedure BtnExitClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveOptClick(Sender: TObject);
    procedure LoadOptClick(Sender: TObject);
    procedure ClearOptClick(Sender: TObject);
    procedure ExitOptClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure SavePUClick(Sender: TObject);
    procedure LoadPUClick(Sender: TObject);
    procedure ClearPUClick(Sender: TObject);
    procedure ExitPUClick(Sender: TObject);
    procedure AboutOptClick(Sender: TObject);
    procedure CalcSelClick(Sender: TObject);
    procedure FarenSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

 const
    cFileName = 'Note.txt';

var
  NotePad: TNotePad;

implementation

uses about_Unit, Calc_Unit, Foreng_Unit;

{$R *.dfm}


procedure TNotePad.BtnExitClick(Sender: TObject);
begin
    close;
end;

procedure TNotePad.BtnSaveClick(Sender: TObject);
begin
     Memo1.Lines.SaveToFile(cFileName);
     BtnSave.Enabled := False;
end;

procedure TNotePad.BtnClearClick(Sender: TObject);
begin
      Memo1.Lines.Clear
end;

procedure TNotePad.BtnLoadClick(Sender: TObject);
begin
Memo1.Lines.LoadFromFile(cFileName);
end;

procedure TNotePad.FormCreate(Sender: TObject);
begin
if FileExists(cFileName) Then
    BtnLoad.enabled := True
    else
    BtnLoad.Enabled := False;
end;



procedure TNotePad.SaveOptClick(Sender: TObject);
begin
BtnSave.Click()
end;


procedure TNotePad.LoadOptClick(Sender: TObject);
begin
BtnLoad.Click()
end;


procedure TNotePad.ClearOptClick(Sender: TObject);
begin
BtnClear.Click()
end;


procedure TNotePad.ExitOptClick(Sender: TObject);
begin
BtnExit.Click()
end;


procedure TNotePad.Memo1Change(Sender: TObject);
begin
BtnSave.Enabled := True;
end;

procedure TNotePad.SavePUClick(Sender: TObject);
begin
    BtnSave.Click()
end;

procedure TNotePad.LoadPUClick(Sender: TObject);
begin
    BtnLoad.Click()
end;

procedure TNotePad.ClearPUClick(Sender: TObject);
begin
  BtnClear.Click()
end;

procedure TNotePad.ExitPUClick(Sender: TObject);
begin
  BtnExit.Click()
end;

procedure TNotePad.AboutOptClick(Sender: TObject);
begin
AboutForm.ShowModal;
end;

procedure TNotePad.CalcSelClick(Sender: TObject);
begin
CalcForm.ShowModal;
end;

procedure TNotePad.FarenSelClick(Sender: TObject);
begin
FarenForm.ShowModal;
end;

end.

