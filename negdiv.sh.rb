class NegdivSh < Formula
  desc "Orange mask removal for color negatives, as authored by Antti Penttala"
  homepage "https://github.com/filmtools/negdiv.sh"
  url "https://github.com/filmtools/negdiv.sh/archive/1.0.0.tar.gz"
  sha256 "c7bd0234d77d4ad3dd3e91376a7f363ddb13ce24d44cf37471e53b66a608ca01"

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
