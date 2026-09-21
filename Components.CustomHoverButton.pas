unit Components.CustomHoverButton;

interface

uses
  System.Classes,
  System.UITypes,
  FMX.Types,
  FMX.Controls,
  FMX.Layouts,
  FMX.Graphics,
  FMX.Objects;

type
  THoverButton = class(TLayout)
  private
    FRoundRect: TRoundRect;
    FCorOriginalBotao: TAlphaColor;

    //==================================================================================
    //
    // ------------------------------ Efeito Hover -------------------------------------
    //
    //==================================================================================

    procedure MouseEnter(Sender: TObject);
    procedure MouseLeave(Sender: TObject);

    function ClarearCor(PCorOriginal: TAlphaColor; PPercentual: Single):TAlphaColor;
  protected

  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{ THoverButton }

constructor THoverButton.Create(AOwner: TComponent);
  begin
    inherited Create(AOwner);

    HitTest := True;

    FRoundRect := TRoundRect.Create(Self);
    FRoundRect.HitTest := False;
    FRoundRect.Parent := Self;
    FRoundRect.Align := TAlignLayout.Client;

    FRoundRect.Fill.Color := TAlphaColorRec.Steelblue;
    FCorOriginalBotao := FRoundRect.Fill.Color;
    FRoundRect.Stroke.Kind := TBrushKind.None;

    OnMouseEnter := MouseEnter;
    OnMouseLeave := MouseLeave;

  end;

procedure THoverButton.MouseEnter(Sender: TObject);
  begin
    FRoundRect.Fill.Color := ClarearCor(FCorOriginalBotao,30);
  end;

procedure THoverButton.MouseLeave(Sender: TObject);
  begin
    FRoundRect.Fill.Color := FCorOriginalBotao;
  end;

function THoverButton.ClarearCor(PCorOriginal: TAlphaColor; PPercentual: Single):TAlphaColor;
	var
		LCorRec: TAlphaColorRec;
	begin
		LCorRec := TAlphaColorRec(PCorOriginal);
    PPercentual := PPercentual / 100;

		LCorRec.R := Round(LCorRec.R + (255 - LCorRec.R) * PPercentual);
		LCorRec.G := Round(LCorRec.G + (255 - LCorRec.G) * PPercentual);
		LCorRec.B := Round(LCorRec.B + (255 - LCorRec.B) * PPercentual);

    Result := TAlphaColor(LCorRec);
	end;

end.
