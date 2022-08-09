program SecondDegre;
var a,b,c,delta,x0,x1,x2 : real;
Begin
Writeln(' ****************** RESOLUTION DE L''EQUATION DE SECOND DEGRE *************************');
Writeln;
Write('Saisir le coefficient a : ');
readln(a);
Write('Saisir le coefficient b : ');
readln(b);
Write('Saisir le coefficient c : ');
readln(c);
delta := b*b - 4*a*c;
if delta < 0 then write('Pas de solution')
else if delta = 0 then
begin
x0 := -b/(2*a);
Write('La solution est : ',x0:2:3);
end
else
begin
x1 := -b-sqrt(delta)/(2*a);
x2 := -b+sqrt(delta)/(2*a);
Write('Les solutions sont : ',x1:2:3,' et ',x2:2:3);
end;
readln;
End. 