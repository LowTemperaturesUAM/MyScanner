unit Trip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, math;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Spinedit1: TSpinEdit;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    Label1: TLabel;
    Label2: TLabel;
    Button5: TButton;
    ScrollBar3: TScrollBar;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button6: TButton;
    Label8: TLabel;
    Button7: TButton;
    Button8: TButton;
    procedure Button5Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Spinedit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Speed, Size, times, Strom_Stop, ZPDac, IADC, Mult, MultI: Integer;
  Kontakt,StopTrip: Boolean;
  end;

var
  Form5: TForm5;

implementation

uses Config_Trip, Liner, DataAdcquisition,
  Scanner1;

function dac_set(ndac,valor:integer) : boolean ; external 'take_dilucion.dll' ;
function dac_init : boolean ;  external 'take_dilucion.dll' ;
function adc_take(chn,mux,n:integer) : boolean ; external 'take_dilucion.dll' ;
function adc_init : boolean ;  external 'take_dilucion.dll' ;
function PID1_hold(b:Boolean) : Boolean ;  external 'take_dilucion.dll' ;
function Bit_Modula(b:Boolean) : Boolean ;  external 'take_dilucion.dll' ;
function take_initialize : boolean ;  external 'take_dilucion.dll' ;
function take_finalize : boolean ;  external 'take_dilucion.dll' ;

{$R *.DFM}

procedure TForm5.Button5Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm5.ScrollBar2Change(Sender: TObject);
begin
Size:=ScrollBar2.Position;
Label6.Caption:=InttoStr(Size);
end;

procedure TForm5.ScrollBar1Change(Sender: TObject);
begin
Speed:=ScrollBar1.Position;
Label5.Caption:=InttoStr(Speed);
end;

procedure TForm5.ScrollBar3Change(Sender: TObject);
begin
Strom_Stop:=ScrollBar3.Position;
Label4.Caption:= InttoStr(Strom_Stop);
end;

procedure TForm5.FormShow(Sender: TObject);
begin
Form6.Show;
Size:=ScrollBar2.Position;
Speed:=ScrollBar1.Position;
Strom_Stop:=ScrollBar3.Position;
times:=SpinEdit1.Value;
Form6.Show;
ZPDAC:=Form6.SpinEdit1.Value;
IADC:=Form6.Spinedit2.Value;
if (Form6.Checkbox1.checked) then Mult:=1 else Mult:=-1;
if (Form6.Checkbox2.checked) then MultI:=1 else MultI:=-1;
Form6.Hide;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
i,j: LongInt;
k,l,m: LongInt;
enviaZ: SmallInt;
x: Single;

begin

StopTrip:=False;
i:=0;

while (i<times) and (StopTrip=False) do
begin
  for j:=-32767 to 32767 do
  begin
   if Frac(j/Speed)=0 then begin

   enviaZ:=Mult*Round(j*Size/10);
   x:=(j+32767)/32767+i;
   //Label7.Caption:=InttoStr(enviaZ);
   Form10.dac_set(ZPDac,enviaZ, nil);
   end;
  end;
  Application.ProcessMessages;
i:=i+1;
end;
   Form10.dac_set(ZPDac,0, nil);
end;

procedure TForm5.Spinedit1Change(Sender: TObject);
begin
times:=SpinEdit1.Value;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
i,j: LongInt;
k,l,m: LongInt;
enviaZ: SmallInt;
x: Single;

begin
StopTrip:=False;
i:=0;

while (i<times) and (StopTrip=False) do
begin
  for j:=-32767 to 32767 do
  begin
   if Frac(j/Speed)=0 then begin

   enviaZ:=-1*Mult*Round(j*Size/10);
   x:=(j+32767)/32767+i;
   //Label7.Caption:=InttoStr(enviaZ);
   Form10.dac_set(ZPDac,enviaZ, nil);
   end;
  end;
  Application.ProcessMessages;
i:=i+1;
end;
    Form10.dac_set(ZPDac,0, nil);
end;

procedure TForm5.Button3Click(Sender: TObject);
var
i,j: Integer;
k: LongInt;
enviaZ: Integer;
x: Single;

begin
  StopTrip:=False;
  i:=0;
while (i<100) and (StopTrip=False) do
begin
  for j:=-32767 to 32767 do
  begin
   if Frac(j/Speed)=0 then begin

   enviaZ:=-1*Mult*Round(j*Size/10);
   x:=(j+32767)/32767+i;
   //Label7.Caption:=InttoStr(enviaZ);
   Form10.dac_set(ZPDac,enviaZ, nil);
   end;
  end;
  Application.ProcessMessages;
i:=i+1;
end;
    Form10.dac_set(ZPDac,0, nil);
end;

procedure TForm5.Button4Click(Sender: TObject);
var
Strom_jetzt: Single;
punto_salida: boolean;

begin
//Esta para probar hay que asignarle un valor minimo de corriente a aprtir de la cual pare de moverse
//Strom_jetzt:=9;//adc_take(0,ADCI,Form1.P_Scan_Mean))
//StopTrip:=False;
StopTrip:=False;
punto_salida:=false;
while (punto_salida=false) do
begin
Strom_jetzt:=  Form10.adc_take(Form6.SpinEdit2.Value,Form6.SpinEdit2.Value,Form1.P_Scan_Mean);
//Label7.caption:=Floattostr(Strom_jetzt);
//times:=1000;
//while (abs(Strom_jetzt)<(Strom_Stop/10)) and (StopTrip=False) do Button1Click(nil);
Label7.Caption:='Moving';
while (abs(Strom_jetzt)<(Form6.spinCurrentLimit.Value/100)) and (StopTrip=False) do
begin
Button1Click(nil);
Strom_jetzt:=  Form10.adc_take(Form6.SpinEdit2.Value,Form6.SpinEdit2.Value,Form1.P_Scan_Mean);
end;
punto_salida:=True;
Label7.Caption:='Not Moving';
//times:=Spinedit1.Value;
end
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
if (StopTrip=False) then StopTrip:=True;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
if (Round(SpinEdit1.Value/10)>0) then SpinEdit1.Value:=Round(SpinEdit1.Value/10)
else SpinEdit1.Value:=1;
end;

procedure TForm5.Button8Click(Sender: TObject);
begin
SpinEdit1.Value:=SpinEdit1.Value*10;
end;

end.
