unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Edit11: TEdit;
    Label15: TLabel;
    Edit12: TEdit;
    Label16: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    Edit14: TEdit;
    Label18: TLabel;
    Edit15: TEdit;
    Label19: TLabel;
    Edit16: TEdit;
    Label20: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Label21: TLabel;
    Button1: TButton;
    Edit19: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Edit20: TEdit;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Button2: TButton;
    Series4: TFastLineSeries;
    Series6: TFastLineSeries;
    Series7: TFastLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  j,N: integer;
  tauk:real;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
S:string;
taun,fi,D1,D2,D3,C1,C2,C3,Tc,l,kl,T,Ta,Tap,dp,a2,a1,a0,b2,b1,b0,Y1,Y2,Y3,W1,W2,W3,tau,h,F1,F2,F3,Aj1,AJ2,AJ3,E3,E2,E1,E1is,E2is,E3is,D: real;
input: TextFile;
begin
if N=6 then
begin;
N:=0;
end;
taun:=300;
E1is:=StrToFloat(Edit1.Text);
Tc:=StrToFloat(Edit5.Text);
l:=StrToFloat(Edit6.Text);
kl:=StrToFloat(Edit7.Text);
T:=StrToFloat(Edit4.Text);
Ta:=StrToFloat(Edit8.Text);
h:=StrToFloat(Edit2.Text);
tauk:=StrToFloat(Edit3.Text);
Tap:=0.02*Tc;
Edit19.Text:=FloatToSTR(Tap);
dp:=StrToFloat(Edit9.Text);
a0:=1/(Tap*Ta*T);
Edit11.Text:=FloatToSTR(a0);
a1:=(dp*Ta+T)/(Tap*Ta*T);
Edit12.Text:=FloatToSTR(a1);
a2:=(dp*T+Tap)/(Tap*T);
Edit13.Text:=FloatToSTR(a2);
b0:=-dp/(Tap*Ta*T);;
Edit14.Text:=FloatToSTR(b0);
b1:=(T*kl*dp-T*dp-Tap)/(Tap*Ta*T);
Edit15.Text:=FloatToSTR(b1);
b2:=(Ta*kl-T)/(Ta*T);
Edit16.Text:=FloatToSTR(b2);
W1:=0; y1:=W1;
Edit20.Text:=FloatToSTR(W1);
W2:=b2*(-l); y2:=W2;
Edit17.Text:=FloatToSTR(W2);
W3:=b1*(-l)+a2*(-W2); y3:=W3;
Edit18.Text:=FloatToSTR(W3);
tau:=0;
AssignFile(input,floattostr(dp)+'_'+floattostr(Tc)+'.txt');
Rewrite(input);
writeln (input,'|Tau|fi|');
N:=N+1;
Chart1.Series[N-1].Clear;
Chart1.Series[N-1].AddXY(0, 0);

repeat
d:=0;
E3is:=0;
F1:=Y2; F2:=Y3; F3:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
D:=0;
AJ1:=F1*h; Y1:=W1+F1/3;
AJ2:=F2*h; Y2:=W2+F2/3;
AJ3:=F3*h; Y3:=W3+F3/3;
Tau:=tau+h/3;
F1:=Y2; F2:=Y3; F3:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
Y1:=W1+(F1+F1*h)/6; ////!!!!
Y2:=W2+(F2+F2*h)/6;
Y3:=W3+(F3+F3*h)/6;
Tau:=tau+h/3;
F1:=Y2; F2:=Y3; F3:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
c1:=F1*H;
Y1:=W1+aj1/8+3/8*C1;
C2:=F2*H;
Y2:=W2+aj2/8+3/8*C2;
C3:=F3*H;
Y3:=W3+aj3/8+3/8*C3;
Tau:=tau+H/2;
F1:=Y2; F2:=Y3; F3:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
D1:=F1*h; Y1:=W1+F1/2-1.5*C1+2*D1;
D2:=F2*h; Y2:=W2+F2/2-1.5*C2+2*D2;
D3:=F3*h; Y3:=W3+F3/2-1.5*C3+2*D3;
tau:=tau+H;
F1:=Y2; F2:=Y3; F3:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
E1:=F1*H;
Y1:=W1+(Aj1+4*D1+E1)/6;   /////!!!!!
E2is:=Abs(-2*Aj1+9*C1-8*D1+E1)/30;
if (E2is>E1is) then E3is:=1;
IF  E2is<E1is/30 then D:=D+1;
E2:=F2*H;
Y2:=W2+(Aj2+4*D2+E2)/6;   /////!!!!!
E2is:=Abs(-2*Aj2+9*C2-8*D2+E2)/30;
if (E2is>E1is) then E3is:=1;
IF  E2is<E1is/30 then D:=D+1;
E3:=F3*H;
Y3:=W3+(Aj3+4*D3+E3)/6;   /////!!!!!
E2is:=Abs(-2*Aj3+9*C3-8*D3+E3)/30;
if (E2is>E1is) then E3is:=1;
IF  E2is<E1is/30 then D:=D+1;
if E3is=0 then
begin
if D=3 then H:=2*H;
tau:=tau;
//fi:=(b2*y2+b1*y3+b0)*l/(Y1+a2*y2+a1*y3+a0);
//fi:=b0*(-l)-a2*Y3-A1*Y2-a0*Y1;
Chart1.Series[N-1].AddXY(tau, Y3+(l*dp));
Chart1.Series[N-1].Title:='d='+FloatToStr(dp)+', Tc='+FloatToStr(Tc);
//Chart1.Series[1].AddXY(tau, Y2);
//Chart1.Series[2].AddXY(tau, Y3);
write(input,'|',(tau):6:5);
write(input,'|',(Y3):6:5);
writeln (input,'|');

W1:=Y1;
W2:=Y2;
W3:=Y3;
end
else
begin
tau:=tau-h-h/3-h/2-h/3;
Y1:=W1;
Y2:=W2;
Y3:=W3;
H:=h/2
end
until tau>taun;
CloseFile(input);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
j:=0;

repeat
Chart1.Series[j].Clear;
j:=j+1;
until j=6;
N:=0;
end;

procedure TForm1.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Edit3.Text='' then tauk:=0
else
begin
tauk:=StrToFloat(Edit3.Text);
Chart1.BottomAxis.Automatic := False ;
Chart1.BottomAxis.Maximum :=tauk;
end
end;

end.
