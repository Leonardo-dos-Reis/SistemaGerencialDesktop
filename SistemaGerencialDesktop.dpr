program SistemaGerencialDesktop;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'View.Principal.pas' {frmMenuPrincipal},
  View.MenuLateral in 'View.MenuLateral.pas' {fraMenuLateral: TFrame},
  Components.CustomHoverButton in 'Components.CustomHoverButton.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
