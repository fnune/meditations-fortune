{
  pkgs,
  description,
  ...
}:
pkgs.stdenv.mkDerivation {
  pname = "meditations-fortune";
  version = "1.0.0";

  src = ./meditations;

  nativeBuildInputs = [pkgs.fortune];

  phases = ["installPhase"];

  installPhase = ''
    install -D $src $out/share/fortunes/meditations
    strfile $out/share/fortunes/meditations $out/share/fortunes/meditations.dat
  '';

  meta = {
    inherit description;
    license = with pkgs.lib.licenses; [mit publicDomain];
    longDescription = ''
      ${description}. Once installed, you can simply run
      `fortune meditations` to get a paragraph. In addition to
      the original roman numerals that indicate the paragraph
      number, I have added a prefix indicating which book the
      paragraph belongs to.
    '';
  };
}
