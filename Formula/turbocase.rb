class Turbocase < Formula
  include Language::Python::Virtualenv

  desc "Generate an OpenSCAD case template from a KiCAD PCB"
  homepage "https://turbocase.org"
  url "https://codeberg.org/MartijnBraam/TurboCase/archive/1.8.0.tar.gz"
  sha256 "6a0731c79a8cfcbbc63e9606d151c8056d11f50e49bbdda4c921eb7b24c89b84"
  license "MIT"

  head "https://codeberg.org/MartijnBraam/TurboCase.git", branch: "master"

  depends_on :macos
  depends_on "python"

  resource "sexpdata" do
    url "https://files.pythonhosted.org/packages/a7/7f/369a478863a39351be75e0a12602bc29196b31f87bf3432bed2be6379f8e/sexpdata-1.0.2.tar.gz"
    sha256 "92b67b0361f6766f8f9e44b9519cf3fbcfafa755db85bbf893c3e1cf4ddac109"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # check if help text is printed
    output = shell_output("#{bin}/turbocase --help")
    assert_match "usage:", output
  end
end
