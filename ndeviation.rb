class Ndeviation < Formula
  desc "Calculates push/pull 'N' deviation for developed film densities."
  homepage "https://github.com/filmspeed/ndeviation"
  url "https://github.com/filmspeed/ndeviation/archive/1.0.6.tar.gz"
  sha256 "ca023cc0c5c8cb7325bbe8318c6cfbf1b70afed4db9075c2920d45c0adcc9cc4"

  bottle :unneeded


  depends_on :python
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
