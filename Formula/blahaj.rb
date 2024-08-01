class Blahaj < Formula
  desc "️‍️️‍Gay sharks at your local terminal - lolcat-like CLI tool"
  homepage "https://github.com/GeopJr/BLAHAJ"
  url "https://github.com/GeopJr/BLAHAJ/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "07f025c480f398ce9c83e20f411c825a923ea9cdc505bd40c7110b5f68dcd492"
  license "BSD-2-Clause"

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
