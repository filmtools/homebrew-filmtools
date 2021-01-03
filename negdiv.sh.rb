class NegdivSh < Formula
  desc "Orange mask removal for color negatives, as authored by Antti Penttala"
  homepage "https://github.com/filmtools/negdiv.sh"
  url "https://github.com/filmtools/negdiv.sh/archive/1.0.2.tar.gz"
  sha256 "9a726589e6089ac80ed88d229fb22e3f1abf9ee97d64723278243448a77ac4ee"

  depends_on "imagemagick"
  depends_on "ufraw"

  def install
    bin.install "negdiv.sh"
  end

  test do
    # Check if "Usage: negdiv" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "Usage: negdiv", shell_output("#{bin}/negdiv.sh", 1)
  end
end
