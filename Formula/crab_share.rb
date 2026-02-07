class CrabShare < Formula
  desc "Simple application to upload files to an S3 bucket and receive a shareable link"
  homepage "https://github.com/lounge-rocks/crab_share"

  url "https://github.com/lounge-rocks/crab_share/archive/refs/tags/0.2.3.tar.gz"
  sha256 "95e86eedfbda2b625785ed0182871bc055c56f74715735a677e9b10ce418d326"

  head "https://github.com/lounge-rocks/crab_share.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/crab_share-0.2.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "ad4606e957915914716f372664ed4f02d0b9e7f63b5aed49b7f3453afb87cb29"
  end

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"crab_share", "--generate-completion", shells: [:bash, :zsh])
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
