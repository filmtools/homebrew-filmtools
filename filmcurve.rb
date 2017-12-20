class FilmCurve < Formula
  desc "Finds exposure zone for a given film density (or vice versa)"
  homepage "https://github.com/filmtools/filmcurve"
  url "https://github.com/filmtools/filmcurve/archive/0.0.1.tar.gz"
  sha256 "21337b62966487b20edb85704b6dadc87f7d5fc1de60c45909a2f9b5142e1158"

  bottle :unneeded

  depends_on :python if MacOS.version <= :snow_leopard

  include Language::Python::Virtualenv

  def install
    virtualenv_install_with_resources
  end

  test do
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "usage: filmcurve", shell_output("#{bin}/filmcurve", 1)
  end
end
