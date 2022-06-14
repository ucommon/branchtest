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
    procedure DoSomethingWithTheCake(Cake: TCake);
    procedure EatThis(Cake: TCake);
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
  Cake: TCake;
begin
  Cake := TCake.Create;
  DoSomethingWithTheCake(Cake);
end;


procedure TForm1.DoSomethingWithTheCake(Cake: TCake);
begin
  Cake.Sort := 'Nougat';
  EatThis(Cake);
end;

procedure TForm1.EatThis(Cake: TCake);
begin
  //...
end;

end.
