class BonnMensa < Formula
  include Language::Python::Virtualenv

  desc "Meal plans for university canteens in Bonn"
  homepage "https://github.com/alexanderwallau/bonn-mensa"
  url "https://github.com/alexanderwallau/bonn-mensa/archive/refs/tags/1.1.tar.gz"
  sha256 "2225fea60128f4ec48148657d458d0e6a53d91ac98f740672b40ab647057dc99"
  license "MIT"

  head "https://github.com/alexanderwallau/bonn-mensa.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/bonn-mensa-1.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "cd2780cd3aaed56234955709f0c98cbf110a1fccea0ef10c1580186714716dd3"
    sha256 cellar: :any_skip_relocation, ventura:       "91868e058d9945431d4172353a501cca89b7f81dfa8c2c88d9fcdedf46892cc3"
  end

  depends_on :macos
  depends_on "python@3.13"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
    sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "holidays" do
    url "https://files.pythonhosted.org/packages/da/53/027167d3bd78c293d977021d44cb6b3e750f65039334ad411caf6050a5ba/holidays-0.67.tar.gz"
    sha256 "d9a21be2c01e68f28bae1544a36736566830b065f467b59bca32caefb4c4487f"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # check if help text is printed
    output = shell_output("#{bin}/mensa --help")
    assert_match "usage:", output
  end
end
