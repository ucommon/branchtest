{****************************************************************************************************************************
  Copyright (c) 2022 Häcker Automation GmbH. All rights reserved.
  https://haecker-automation.de
****************************************************************************************************************************}
unit Sample;

interface

{$REGION 'uses'}
  uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Forms,
    Vcl.Dialogs, Vcl.StdCtrls;
{$ENDREGION}

type
  TCake = class
    private
      fSort: string;

    public
      property Sort: string read fSort write fSort;
  end;


  TForm1 = class(TForm)
    btnStart: TButton;
    procedure btnStartClick(Sender: TObject);
  private
    procedure DoSomethingWithTheCake(const ACake: TCake);
    procedure EatThis(const ACake: TCake);
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnStartClick(Sender: TObject);
var
  vCake: TCake;
begin
  vCake := TCake.Create;
  DoSomethingWithTheCake(vCake);
end;


procedure TForm1.DoSomethingWithTheCake(const ACake: TCake);
begin
  ACake.Sort := 'Nougat';
  EatThis(ACake);
end;

procedure TForm1.EatThis(const ACake: TCake);
begin
  //...
end;

end.
