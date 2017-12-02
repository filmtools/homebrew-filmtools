class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/filmspeed/curvefit"
  url "https://github.com/filmspeed/curvefit/archive/1.0.5.tar.gz"
  sha256 "cd787d6c94dc982a1a6f8e0923e8aeeff83487e89de62acc21c8a4fc5ae2208f"

  bottle :unneeded


  depends_on :python
  depends_on "numpy"
  depends_on "matplotlib"

  def install
    bin.install "curvefit"
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
