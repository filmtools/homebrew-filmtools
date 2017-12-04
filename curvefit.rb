class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/filmspeed/curvefit"
  url "https://github.com/filmspeed/curvefit/archive/1.0.6.tar.gz"
  sha256 "782c68d8f26a453acd904872f17e35212318de010170265a5852569c98ded1b8"

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
