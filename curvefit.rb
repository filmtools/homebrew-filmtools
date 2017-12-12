class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/filmtools/curvefit"
  url "https://github.com/filmtools/curvefit/archive/2.0.5.tar.gz"
  sha256 "a7b6fb44cb7e80b9c0ca345624619d7867bf2f2187167ae1e23690b6ea67a42b"

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
