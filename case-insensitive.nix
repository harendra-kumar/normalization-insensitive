{ cabal, deepseq, hashable, HUnit, testFramework
, testFrameworkHunit, text
}:

cabal.mkDerivation (self: {
  pname = "case-insensitive";
  version = "1.2.0.1";
  src = ./.;
  buildDepends = [ deepseq hashable text ];
  testDepends = [ HUnit testFramework testFrameworkHunit text ];
  meta = {
    homepage = "https://github.com/basvandijk/case-insensitive";
    description = "Case insensitive string comparison";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})