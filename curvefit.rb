class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/filmspeed/curvefit"
  url "https://github.com/filmspeed/curvefit/archive/2.0.3.tar.gz"
  sha256 "79fec8b6969d05a07a4d00c73c88adc6846c0728b81e5fe37f447c187f135968"

  bottle :unneeded


  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "numpy"
  depends_on "matplotlib"

  def install
    bin.install "bin/curvefit"
    # prefix.install "USAGE"
    # prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "usage: curvefit", shell_output("#{bin}/curvefit", 1)
  end
end
