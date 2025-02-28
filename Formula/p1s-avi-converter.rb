class P1sAviConverter < Formula
  include Language::Python::Virtualenv

  desc "Simple script to convert AVI to MP4"
  homepage "https://github.com/MayNiklas/p1s-avi-converter"
  url "https://github.com/MayNiklas/p1s-avi-converter/archive/refs/tags/1.0.0.tar.gz"
  sha256 "017f323dac8eeca8e0ef1a2a72580bba0d9d5ff4616cdb51d72fe7e6d12ce4ca"

  head "https://github.com/MayNiklas/p1s-avi-converter.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/p1s-avi-converter-1.0.0"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "25f80f02af45a33e93b3703cb2a8dc5a3c799efb3b4e100517caf000d8770ac5"
    sha256 cellar: :any_skip_relocation, ventura:       "52cac42a93297d3baca2204117416bb4bbd90ff0709b16ed64d622847e4fa008"
  end

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "python"

  resource "ffmpeg-python" do
    url "https://files.pythonhosted.org/packages/dd/5e/d5f9105d59c1325759d838af4e973695081fbbc97182baf73afc78dec266/ffmpeg-python-0.2.0.tar.gz"
    sha256 "65225db34627c578ef0e11c8b1eb528bb35e024752f6f10b78c011f6f64c4127"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/a7/b2/4140c69c6a66432916b26158687e821ba631a4c9273c474343badf84d3ba/future-1.0.0.tar.gz"
    sha256 "bd2968309307861edae1458a4f8a4f3598c03be43b97521076aebf5d94c07b05"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # check if help text is printed
    output = shell_output("#{bin}/avi-converter --help")
    assert_match "usage:", output
  end
end
