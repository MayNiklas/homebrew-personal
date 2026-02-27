class CrabShare < Formula
  desc "Simple application to upload files to an S3 bucket and receive a shareable link"
  homepage "https://github.com/lounge-rocks/crab_share"

  url "https://github.com/lounge-rocks/crab_share/archive/refs/tags/0.3.0.tar.gz"
  sha256 "fccdb99d1fed40ea1115dc20bf080f8eff8494ff50890860ada89042b00e2bbf"

  head "https://github.com/lounge-rocks/crab_share.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/crab_share-0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "a19e8194a439d371a1990e1d23490d03674bdef5985d50cd029d5227d95a60bf"
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
