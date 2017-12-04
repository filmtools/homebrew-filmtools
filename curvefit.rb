class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/filmspeed/curvefit"
  url "https://github.com/filmspeed/curvefit/archive/2.0.0.tar.gz"
  sha256 "206c4672f9fc004bedb4d4f6c24cb9006a9783a4bdbfac3e18ce34fee9133798"

  bottle :unneeded


  depends_on :python
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
