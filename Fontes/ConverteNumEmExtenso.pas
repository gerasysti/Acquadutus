unit ConverteNumEmExtenso;

interface

Uses SysUtils, Classes, FolhaFuncs;

Function NumeroEmExtenso(crValor: Currency): String;
Function Converte(sDesc1,sDesc2,sNum: String): String;

implementation

Var
   aUnidades: Array[1..10] of String;
   aDezenas1: Array[1..9]  of String;
   aDezenas2: Array[2..9]  of String;
   aCentenas: Array[1..9]  of String;

Function NumeroEmExtenso(crValor: Currency): String;
Var
   sValor: String[12];
   sMilhoes, sMilhares: String;
Begin
   Result        := '';
   aUnidades[1]  := 'Um';
   aUnidades[2]  := 'Dois';
   aUnidades[3]  := 'Tres';
   aUnidades[4]  := 'Quatro';
   aUnidades[5]  := 'Cinco';
   aUnidades[6]  := 'Seis';
   aUnidades[7]  := 'Sete';
   aUnidades[8]  := 'Oito';
   aUnidades[9]  := 'Nove';
   aUnidades[10] := 'Dez';
   aDezenas1[1]  := 'Onze';
   aDezenas1[2]  := 'Doze';
   aDezenas1[3]  := 'Treze';
   aDezenas1[4]  := 'Quatorze';
   aDezenas1[5]  := 'Quinze';
   aDezenas1[6]  := 'Dezeseis';
   aDezenas1[7]  := 'Dezesete';
   aDezenas1[8]  := 'Dezoito';
   aDezenas1[9]  := 'Dezenove';
   aDezenas2[2]  := 'Vinte';
   aDezenas2[3]  := 'Trinta';
   aDezenas2[4]  := 'Quarenta';
   aDezenas2[5]  := 'Cinquenta';
   aDezenas2[6]  := 'Sessenta';
   aDezenas2[7]  := 'Setenta';
   aDezenas2[8]  := 'Oitenta';
   aDezenas2[9]  := 'Noventa';
   aCentenas[1]  := 'Cento';
   aCentenas[2]  := 'Duzentos';
   aCentenas[3]  := 'Trezentos';
   aCentenas[4]  := 'Quatrocentos';
   aCentenas[5]  := 'Quinhentos';
   aCentenas[6]  := 'Seiscentos';
   aCentenas[7]  := 'Setecentos';
   aCentenas[8]  := 'Oitocentos';
   aCentenas[9]  := 'Novecentos';
   sValor        := CurrToStr(Arredonda(crValor,2));
   If Pos(',',sValor) = 0 Then
      sValor := PreencheZeros(sValor,9)+'.00'
   Else
      If Length(Copy(sValor,Pos(',',sValor)+1,2)) = 1 Then
         sValor := PreencheZeros(sValor,11)+'0'
      Else
         sValor := PreencheZeros(sValor,12);
   sMilhoes  := Converte('Milhão','Milhões',Copy(sValor,1,3));
   Result    := sMilhoes;
   If (crValor>999999.99) And (StrToInt(Copy(sValor,4,6))=0) Then
      Result := Result + ' de Reais';

   // sValor := [000002000,66]
   //            123456789012

   If (StrToInt(Copy(sValor,4,6))=0) And (StrToInt(Copy(sValor,11,2))=0) Then Exit;
   sMilhares := Converte('Mil','',Copy(sValor,4,3));
   Result := Result + ' ' + sMilhares;
   If (Not Empty(Result)) And (StrToInt(Copy(sValor,7,3)) = 0) Then
      Result := Result + ' Reais'
   Else
   If (Not Empty(Result)) And (StrToInt(Copy(sValor,7,3)) <= 100) Then
      Result := Result + ' e';
{
   Else
   If (StrToInt(Copy(sValor,7,3))=0) Then
      Result := Result + ' Reais';
}
   If (StrToInt(Copy(sValor,7,3))=0) And (StrToInt(Copy(sValor,11,2))=0) Then Exit;
   If StrToInt(Copy(sValor,7,3)) > 0 Then
      Result := Result + ' '+Converte('Real','Reais',Copy(sValor,7,3));
   If (Result <> '') And (StrToInt(Copy(sValor,11,2))>0) Then
      Result := Result + ' e';
   Result := Result + ' '+Converte('Centavo','Centavos',Copy(sValor,11,2));
End;

Function Converte(sDesc1,sDesc2,sNum: String): String;
Var
   sDesc: String;
   sNum2: String[3];
   cTeste: Char;
Begin
{
   If StrToInt(sNum) = 18 Then
      cTeste := 'a';
}
   Result := '';
   If StrToInt(sNum) = 0 Then Exit;
   If Length(RTrim(sNum)) < 3 Then
      sNum := '0'+ sNum;
   If sDesc2 = '' Then
      sDesc := sDesc1
   Else
      sDesc := sDesc2;
   If StrToInt(sNum) <= 10 Then
      Result := aUnidades[StrToInt(sNum)]
   Else
   If StrToInt(sNum) <= 19 Then
      Result := aDezenas1[StrToInt(sNum)-10]
   Else
   If StrToInt(sNum) <= 99 Then
   Begin
      sNum2 := sNum;
      If StrToInt(Copy(sNum,1,1)) = 0 Then
         sNum2 := Copy(sNum,2,2);
      Result := aDezenas2[StrToInt(Copy(sNum2,1,1))];
      If StrToInt(_Right(Rtrim(sNum2),1)) > 0 Then
         Result := Result+' e '+aUnidades[StrToInt(_Right(RTrim(sNum2),1))]
   End Else
   Begin
      If StrToInt(sNum) = 100 Then
      Begin
         Result := 'Cem '+sDesc;
         Exit;
      End Else
         Result := aCentenas[StrToInt(Copy(sNum,1,1))];
      If StrToInt(_Right(sNum,2)) > 0 Then
      Begin
         If StrToInt(_Right(sNum,2)) <= 10 Then
            Result := Result + ' e '+aUnidades[StrToInt(_Right(sNum,2))]
         Else If StrToInt(_Right(sNum,2)) <= 19 Then
            Result := Result + ' e '+aDezenas1[StrToInt(_Right(sNum,2))-10]
         Else
         Begin
            sNum2 := sNum;
            If StrToInt(Copy(sNum,1,1)) = 0 Then
               sNum2 := Copy(sNum,2,2);
            Result := Result +' e '+aDezenas2[StrToInt(Copy(sNum2,2,1))];
            If StrToInt(Copy(sNum2,3,1)) > 0 Then
               Result := Result+' e '+aUnidades[StrToInt(_Right(sNum2,1))];
         End;
      End;
   End;
   If StrToInt(sNum) = 1 Then
      Result := Result + ' ' + sDesc1
   Else
      Result := Result + ' ' +sDesc;
End;

end.
