{****************************************************************************************************************************
  Copyright (c) 2022 H�cker Automation GmbH. All rights reserved.
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
    procedure EatThisorThat(const ACake: TCake);
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
  EatThisorThat(ACake);
end;

procedure TForm1.EatThisorThat(const ACake: TCake);
var
  vSort: string;
begin
  vSort := ACake.Sort;
  ACake.Sort := 'Marzipan';
  // ...
end;

end.
