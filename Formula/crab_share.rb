class CrabShare < Formula
  desc "Simple application to upload files to an S3 bucket and receive a shareable link"
  homepage "https://github.com/lounge-rocks/crab_share"

  url "https://github.com/lounge-rocks/crab_share/archive/refs/tags/0.2.2.tar.gz"
  sha256 "0cfa5c01b02c0fa0052f7031c229a269cff817d91a30bfa204c5e8853a900da0"

  head "https://github.com/lounge-rocks/crab_share.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/crab_share-0.2.2"
    sha256 cellar: :any_skip_relocation, ventura: "e20eb0bb5ca3eb1dfaef9a60459fa6114d953fe8f9cbd0da389ce313bd1ea887"
  end

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # only execute on stable builds
    if build.stable?
      # check if version matches the one in the formula
      assert_match "crab_share #{version}", shell_output("#{bin}/crab_share --version")
    end
    # check if help text is printed
    output = shell_output("#{bin}/crab_share --help")
    assert_match "Usage:", output
  end
end
