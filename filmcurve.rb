class Filmcurve < Formula
  desc "Finds exposure zone for a given film density (or vice versa)"
  homepage "https://github.com/filmtools/filmcurve"
  url "https://github.com/filmtools/filmcurve/archive/0.0.2.tar.gz"
  sha256 "0bc31c946bb357e54d9f8270da6cb78e78f9e887f8787ccb0bc7f40f572da6c2"

  bottle :unneeded

  depends_on "numpy"
  depends_on "matplotlib"

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
