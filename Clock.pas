unit Clock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dateutils, MPlayer;

type
  TForm1 = class(TForm)
    btn: TButton;
    img: TImage;
    edth: TEdit;
    edtm: TEdit;
    edts: TEdit;
    lbl: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn2: TButton;
    lbl3: TLabel;
    tme: TTimer;
    lbl0: TLabel;
    procedure btnClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
var
 a,tt:real;
 x,h,m,s,r:integer;
begin
 tme.Enabled:=true;
 lbl.Caption:='';
 a:=(pi/30);
 lbl.Font.Color:=clred;
 lbl.Font.Size:=43;
 lbl.Caption:='';
 img.Canvas.Pen.Width:=10;
 img.canvas.Ellipse(10,10,450,450);
 img.Canvas.MoveTo(220,220);
 h:=dateutils.HourOf(time);
 m:=dateutils.MinuteOf(time);
 s:=dateutils.SecondOf(time) ;
 lbl0.Caption:=timetostr(time);
for x := 1 to 60 do
 begin
  img.Canvas.pen.width:=5;
  r:=210;
  tt:=x/5;
  img.Canvas.Font.Size:=30;
   if x mod 5=0 then
    begin
     img.Canvas.Pen.Width:=10;
     r:=200;
     if x mod 12=0 then
      img.Canvas.TextOut(round(210+(r-31)*cos(-pi/2+a*x)),round(205+(r-30)*sin(-pi/2+a*x)),floattostr(tt))
     else
      img.Canvas.TextOut(round(217+(r-35)*cos(-pi/2+a*x)),round(205+(r-30)*sin(-pi/2+a*x)),floattostr(tt));
    end;
  img.Canvas.MoveTo(round(230+r*cos(a*x)),round(230+r*sin(a*x)));
  img.Canvas.LineTo(round(230+220*cos(a*x)),round(230+220*sin(a*x)));
  img.Canvas.MoveTo(230,230);
 end;
 img.canvas.LineTo(230+round(100*cos(-pi/2+5*a*h+a*5*m/60+a*5*s/3600)),round(230+100*sin(-pi/2+a*h*5+a*5*m/60+a*5*s/3600)));
 img.Canvas.moveto(230,230);
 img.canvas.LineTo(230+round(200*cos(-pi/2+a*m+a*s/60)),round(230+200*sin(-pi/2+a*m+a*s/60)));
 img.Canvas.moveto(230,230);
 img.Canvas.Pen.Width:=5;
 img.Canvas.Pen.Color:=clred;
 img.canvas.LineTo(230+round(200*cos(-pi/2+a*s)),round(230+200*sin(-pi/2-a*s)));
 img.Canvas.Pen.Color:=clblack;
end;


procedure TForm1.btnClick(Sender: TObject);
var
 a,tt:real;
 x,h,m,s,codeh,codem,codes,r:integer;
begin
 tme.Enabled:=false;
 lbl0.Caption:='';
 a:=(pi/30);
 lbl.Font.Color:=clred;
 lbl.Font.Size:=40;
  repeat
   val(edth.Text,h,codeh);
   val(edtm.Text,m,codem);
   val(edts.Text,s,codes);
    if (codeh<>0) or (codem<>0) or (codes<>0)then
     begin
      lbl.Caption:='        Letters not allowed!';
      exit;
     end;
    if (0>h) or (h>23) then
     begin
      lbl.Caption:='  Hours must be from 0 to 23!';
      exit;
     end;
    if (0>m) or (m>59) then
     begin
      lbl.Caption:='Minutes must be from 0 to 59!';
      exit;
     end;
    if (0>s) or (s>59) then
     begin
      lbl.Caption:='Seconds must be from 0 to 59!';
      exit;
     end;
  until (codeh=0) and (codem=0) and (codes=0)and (0<=h) and(h<24) and (0<=m) and (m<60) and (0<=s) and (s<60);
 lbl.Caption:='';
 img.Canvas.Pen.Width:=10;
 img.canvas.Ellipse(10,10,450,450);
 img.Canvas.MoveTo(220,220);
for x := 1 to 60 do
  begin
   img.Canvas.pen.width:=5;
   r:=210;
   tt:=x/5;
   img.Canvas.Font.Size:=30;
   if x mod 5=0 then
     begin
      img.Canvas.Pen.Width:=10;
      r:=200;
      if x mod 12=0 then
       img.Canvas.TextOut(round(210+(r-31)*cos(-pi/2+a*x)),round(205+(r-30)*sin(-pi/2+a*x)),floattostr(tt))
      else
      img.Canvas.TextOut(round(217+(r-35)*cos(-pi/2+a*x)),round(205+(r-30)*sin(-pi/2+a*x)),floattostr(tt));
     end;
   img.Canvas.MoveTo(round(230+r*cos(a*x)),round(230+r*sin(a*x)));
   img.Canvas.LineTo(round(230+220*cos(a*x)),round(230+220*sin(a*x)));
   img.Canvas.MoveTo(230,230);
  end;
 img.canvas.LineTo(230+round(100*cos(-pi/2+5*a*h+a*5*m/60+a*5*s/3600)),round(230+100*sin(-pi/2+a*h*5+a*5*m/60+a*5*s/3600)));
 img.Canvas.moveto(230,230);
 img.canvas.LineTo(230+round(200*cos(-pi/2+a*m+a*s/60)),round(230+200*sin(-pi/2+a*m+a*s/60)));
 img.Canvas.moveto(230,230);
 img.Canvas.Pen.Width:=5;
 img.Canvas.Pen.Color:=clred;
 img.canvas.LineTo(230+round(200*cos(-pi/2+a*s)),round(230+200*sin(-pi/2+a*s)));
 img.Canvas.Pen.Color:=clblack;
end;

end.
