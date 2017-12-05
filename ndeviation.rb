class Ndeviation < Formula
  desc "Calculates push/pull 'N' deviation for developed film densities."
  homepage "https://github.com/filmtools/ndeviation"
  url "https://github.com/filmtools/ndeviation/archive/2.0.5.tar.gz"
  sha256 "3cab8b5ff89089e2a19bfc1c3023d390e638dcfa395607e1a2aa8879cbe1eb89"

  bottle :unneeded


  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "filmtools/filmtools/curvefit"

  def install
    bin.install "cli/ndeviation"
    # prefix.install "USAGE"
    # prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "usage: ndeviation", shell_output("#{bin}/ndeviation", 1)
  end
end
