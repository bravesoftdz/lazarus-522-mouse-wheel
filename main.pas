unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ApplicationProperties1: TApplicationProperties;
    getwheel: TLabeledEdit;
    Panel1: TPanel;
    procedure ApplicationProperties1UserInput(Sender: TObject; Msg: Cardinal);
    procedure getwheelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ApplicationProperties1UserInput(Sender: TObject; Msg: Cardinal
  );
begin
  if Msg = 522 then
  begin
     getwheel.Text := IntToStr(Msg) + ', mouse wheel event';
  end;
end;

procedure TForm1.getwheelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  getwheel.Text := 'mouse moving over TLabeledEdit';
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  getwheel.Text := 'mouse moving over TPanel';
end;

end.

