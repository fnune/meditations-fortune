{pkgs}:
pkgs.stdenv.mkDerivation {
  description = "Builds and installs a fortune database file using Marcus Aurelius's Meditations";

  pname = "meditations-fortune";
  version = "1.0.0";

  src = ./meditations;

  nativeBuildInputs = [pkgs.fortune];

  phases = ["installPhase"];

  installPhase = ''
    install -D $src $out/share/games/fortunes/meditations
    strfile $out/share/games/fortunes/meditations $out/share/games/fortunes/meditations.dat
  '';

  meta = {
    license = with pkgs.lib.licenses; [mit publicDomain];
    longDescription = ''
      Builds and installs a fortune database file using Marcus Aurelius's
      Meditations. Once installed, you can simply run `fortune meditations` to
      get a paragraph. In addition to the original roman numerals that indicate
      the paragraph number, I have added a prefix indicating which book the
      paragraph belongs to.
    '';
  };
}
