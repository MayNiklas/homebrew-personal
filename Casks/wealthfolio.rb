cask "wealthfolio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "485f2339e4bb61ee89ca835c0aeb93ed9e43928244c9d16a5024c364e0156cf3",
         intel: "fc3ba701d3c47c313b28f2710409a218ad9b9cefdbbda1d5d556a4ebb9dcf617"

  url "https://github.com/afadil/wealthfolio/releases/download/v#{version}/Wealthfolio_#{version}_#{arch}.dmg",
      verified: "github.com/afadil/wealthfolio/"
  name "Wealthfolio"
  desc "Beautiful Private and Secure Desktop Investment Tracking Application"
  homepage "https://wealthfolio.app/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between the release being created
  # and the homepage being updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Wealthfolio.app"

  zap trash: [
    "~/Library/Application Support/com.teymz.wealthfolio",
    "~/Library/Caches/com.teymz.wealthfolio",
    "~/Library/Saved Application State/com.teymz.wealthfolio.savedState",
    "~/Library/WebKit/com.teymz.wealthfolio",
  ]
end
