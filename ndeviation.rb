class Ndeviation < Formula
  desc "Calculates push/pull 'N' deviation for developed film densities."
  homepage "https://github.com/filmspeed/ndeviation"
  url "https://github.com/filmspeed/ndeviation/archive/2.0.0.tar.gz"
  sha256 "4a1e9dceaa45041d086bc5068b185a07f28986af056049d40031f036eb202f38"

  bottle :unneeded


  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "filmspeed/filmspeed/curvefit"

  def install
    bin.install "ndeviation"
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
