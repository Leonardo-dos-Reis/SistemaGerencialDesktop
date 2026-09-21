unit View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Effects, Components.CustomHoverButton,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmMenuPrincipal = class(TForm)
    rctFundoMenuPrincipal: TRectangle;
    lytContainerMenuPrincipal: TLayout;
    grdSeparadorMenuFrame: TGridPanelLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    BtnFermentacao: THoverButton;
    lytContainerBotao: TLayout;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

    procedure CriarBotaoCustom;
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation



{$R *.fmx}

{ TfrmMenuPrincipal }

procedure TfrmMenuPrincipal.Button1Click(Sender: TObject);
begin
  BtnFermentacao.NormalColor := TAlphaColorRec.Crimson;
end;

procedure TfrmMenuPrincipal.Button2Click(Sender: TObject);
begin
  BtnFermentacao.HoverColor := TAlphaColorRec.Green;
end;

procedure TfrmMenuPrincipal.CriarBotaoCustom;
begin
  BtnFermentacao := THoverButton.Create(Self);
  BtnFermentacao.Parent := lytContainerBotao;
  BtnFermentacao.Align := TAlignLayout.Client;
  BtnFermentacao.Cursor := crHandPoint;
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
CriarBotaoCustom;
end;

end.
