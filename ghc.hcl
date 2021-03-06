description = "GHC is a state-of-the-art, open source, compiler and interactive environment for the functional language Haskell."
binaries = ["bin/*"]

on unpack {
  run { cmd = "/bin/chmod" args = ["-R", "+w", "."] dir = "${root}" }
  run { cmd = "/bin/make" args = ["install"] dir = "${root}/ghc-${version}" }
  run { cmd = "/bin/rm" args = ["-rf", "${root}/ghc-${version}"] }
  run { cmd = "/bin/chmod" args = ["-R", "-w", "."] dir = "${root}" }
}

linux {
  source = "https://downloads.haskell.org/~ghc/${version}/ghc-${version}-x86_64-centos7-linux.tar.xz"
}

darwin {
  source = "https://downloads.haskell.org/~ghc/${version}/ghc-${version}-x86_64-apple-darwin.tar.xz"
}

version "8.10.4" {}
version "9.0.1" {}
