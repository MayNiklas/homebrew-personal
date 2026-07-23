class CrabShare < Formula
  desc "Simple application to upload files to an S3 bucket and receive a shareable link"
  homepage "https://github.com/lounge-rocks/crab_share"

  url "https://github.com/lounge-rocks/crab_share/archive/refs/tags/0.3.1.tar.gz"
  sha256 "359f74a6eddf80df1646ab8c6fba48db9606e4ba939f2b569d5aad413ea1d123"

  head "https://github.com/lounge-rocks/crab_share.git", branch: "main"

  bottle do
    root_url "https://github.com/MayNiklas/homebrew-personal/releases/download/crab_share-0.3.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "58d8cc0ceec492ab69dd9c58b9da807342ef262420469c1fd65e9afe18937cf9"
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

    # upload a test file - expect an error because no credentials are provided
    (testpath/"test.txt").write("Hello World!")
    output = shell_output("#{bin}/crab_share test.txt 2>&1", 1)
    assert_match "Could not read ~/.aws/crab_share.json", output
    assert_match "No such file or directory (os error 2)", output

    # upload a test file that does not exist - expect an error
    output = shell_output("#{bin}/crab_share file-does-not-exist.txt 2>&1", 1)
    assert_match "Path file-does-not-exist.txt does not exist", output
  end
end
