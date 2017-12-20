class FilmCurve < Formula
  desc "Finds exposure zone for a given film density (or vice versa)"
  homepage "https://github.com/filmtools/filmcurve"
  url "https://github.com/filmtools/filmtools/archive/1.0.0.tar.gz"
  sha256 "a7b6fb44cb7e80b9c0ca345624619d7867bf2f2187167ae1e23690b6ea67a42b"

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
