class Blahaj < Formula
  desc "️‍️️‍Gay sharks at your local terminal - lolcat-like CLI tool"
  homepage "https://github.com/GeopJr/BLAHAJ"
  url "https://github.com/GeopJr/BLAHAJ/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "07f025c480f398ce9c83e20f411c825a923ea9cdc505bd40c7110b5f68dcd492"
  license "BSD-2-Clause"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/blahaj-2.2.0"
    sha256 cellar: :any,                 arm64_sonoma: "a33db055261e1c04dbd3ed05df39229a750eb1007ddfaef9cbf01ecbc02146b3"
    sha256 cellar: :any,                 ventura:      "9280e46d4dba2152be6976496486834623a86f02fc4dde9cc44763185c3e61bc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5b6d9e8296ac44f3a97513559378edecd8ba046e97234ebc7ec79d18d7273190"
  end

  depends_on "crystal" => :build
  depends_on "bdw-gc"
  depends_on "libevent"
  depends_on "libyaml"
  depends_on "pcre2"

  def install
    system "make"
    bin.install "bin/blahaj"
  end

  test do
    # check if help text is printed
    output = shell_output("#{bin}/blahaj --help")
    assert_match "Usage:", output
  end
end
