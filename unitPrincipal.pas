unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.Math, StrUtils;

type
  TCalculator = class(TForm)
    btnReset: TButton;
    pnlResult: TPanel;
    pnlCommon: TPanel;
    btn9: TButton;
    btnZero: TButton;
    btnDot: TButton;
    btn1: TButton;
    btn7: TButton;
    btn3: TButton;
    btn2: TButton;
    btn6: TButton;
    btn5: TButton;
    btn8: TButton;
    btn4: TButton;
    btnDiv: TButton;
    btnMul: TButton;
    btnMinus: TButton;
    btnPlus: TButton;
    btnPercent: TButton;
    txtResult: TEdit;
    btnEqual: TButton;
    procedure btnZeroClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnMulClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEqualClick(Sender: TObject);
    function LastCharIsOperator: Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculator: TCalculator;

implementation

{$R *.dfm}

function EvaluateExpression(const Expr: string): Double;
var
  i: Integer;
  CurrentNumber: string;
  Operator: Char;
  Value1, Value2: Double;
begin
  Result := 0;
  CurrentNumber := '';
  Operator := ' ';

  for i := 1 to Length(Expr) do
  begin
    if CharInSet(Expr[i], ['0'..'9', '.']) then
    begin

      CurrentNumber := CurrentNumber + Expr[i];
    end
    else if CharInSet(Expr[i], ['+', '-', '*', '/']) then
    begin

      if CurrentNumber <> '' then
      begin
        if Operator = ' ' then
          Value1 := StrToFloat(CurrentNumber)
        else
        begin
          Value2 := StrToFloat(CurrentNumber);
          case Operator of
            '+': Value1 := Value1 + Value2;
            '-': Value1 := Value1 - Value2;
            '*': Value1 := Value1 * Value2;
            '/': if Value2 <> 0 then
                   Value1 := Value1 / Value2
                 else
                   raise Exception.Create('Erro: Divis�o por zero!');
          end;
        end;
        CurrentNumber := '';
      end;
      Operator := Expr[i];
    end;
  end;


  if CurrentNumber <> '' then
  begin
    Value2 := StrToFloat(CurrentNumber);
    case Operator of
      '+': Result := Value1 + Value2;
      '-': Result := Value1 - Value2;
      '*': Result := Value1 * Value2;
      '/': if Value2 <> 0 then
             Result := Value1 / Value2
           else
             raise Exception.Create('Erro: Divis�o por zero!');
    else
      Result := StrToFloat(CurrentNumber);
    end;
  end;
end;

function TCalculator.LastCharIsOperator: Boolean;
var
  LastChar: Char;
begin
  if Length(txtResult.Text) = 0 then
    Exit(False);

  LastChar := txtResult.Text[Length(txtResult.Text)];


  Result := (LastChar = '+') or (LastChar = '-') or (LastChar = '*') or (LastChar = '/');
end;


procedure TCalculator.btn1Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '1';
end;

procedure TCalculator.btn2Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '2';
end;

procedure TCalculator.btn3Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '3';
end;

procedure TCalculator.btn4Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '4';
end;

procedure TCalculator.btn5Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '5';
end;

procedure TCalculator.btn6Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '6';
end;

procedure TCalculator.btn7Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '7';
end;

procedure TCalculator.btn8Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '8';
end;

procedure TCalculator.btn9Click(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '9';
end;

procedure TCalculator.btnDivClick(Sender: TObject);
begin
  if not LastCharIsOperator then
    txtResult.Text := txtResult.Text + '/';
end;

procedure TCalculator.btnDotClick(Sender: TObject);
begin
    txtResult.Text := txtResult.Text + '.';
end;

procedure TCalculator.btnEqualClick(Sender: TObject);
  var
    result: Double;
begin
  try
    if LastCharIsOperator then
      txtResult.Text := Copy(txtResult.Text, 1, Length(txtResult.Text) -1);

      result := EvaluateExpression(txtResult.Text);
      txtResult.Text := FloatToStr(result);
  except
    on E: Exception do
      txtResult.Text := 'Error';
  end;
end;

procedure TCalculator.btnMinusClick(Sender: TObject);
begin
  if not LastCharIsOperator then
    txtResult.Text := txtResult.Text + '-';
end;

procedure TCalculator.btnMulClick(Sender: TObject);
begin
  if not LastCharIsOperator then
    txtResult.Text := txtResult.Text + '*';
end;

procedure TCalculator.btnPercentClick(Sender: TObject);
var
  currentValue: Double;
begin
  try
  currentValue := StrToFloat(txtResult.Text);
  currentValue := currentValue / 100;
  txtResult.Text := FloatToStr(currentValue);
  except
  txtResult.Text := 'Error';
  end;
end;

procedure TCalculator.btnPlusClick(Sender: TObject);
begin
  if not LastCharIsOperator then
    txtResult.Text := txtResult.Text + '+';
end;

procedure TCalculator.btnResetClick(Sender: TObject);
begin
txtResult.Clear;
end;

procedure TCalculator.btnZeroClick(Sender: TObject);
begin
txtResult.Text := txtResult.Text + '0';
end;


procedure TCalculator.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
  VK_NUMPAD0: btnZeroClick(Sender);
  VK_NUMPAD1: btn1Click(Sender);
  VK_NUMPAD2: btn2Click(Sender);
  VK_NUMPAD3: btn3Click(Sender);
  VK_NUMPAD4: btn4Click(Sender);
  VK_NUMPAD5: btn5Click(Sender);
  VK_NUMPAD6: btn6Click(Sender);
  VK_NUMPAD7: btn7Click(Sender);
  VK_NUMPAD8: btn8Click(Sender);
  VK_NUMPAD9: btn9Click(Sender);
  VK_ADD: btnPlusClick(Sender);
  VK_SUBTRACT: btnMinusClick(Sender);
  VK_MULTIPLY: btnMulClick(Sender);
  VK_DIVIDE: btnDivClick(Sender);
  VK_RETURN: btnEqualClick(Sender);
  VK_DECIMAL: btnDotClick(Sender);
  VK_DELETE, VK_BACK: btnResetClick(Sender);
  end;
end;

end.
