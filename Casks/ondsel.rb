cask "ondsel" do
  arch arm: "apple-silicon-arm64", intel: "intel-x86_64"

  version "2024.2.1"
  sha256 arm:   "5911ae8133597af8af71e0163090984b62bd75eea16b0960cea002d52685eb97",
         intel: "8448b068997ed782a9fb130fa2fb2c0a2a122f8f71489e8e4f35269e1c5e3790"

  # TODO: find a solution to replace the hardcoded build number in the url
  url "https://github.com/Ondsel-Development/FreeCAD/releases/download/#{version}/Ondsel_ES_#{version}.37226-macOS-#{arch}.dmg",
      verified: "github.com/Ondsel-Development/FreeCAD/"
  name "ondsel"
  desc "FreeCAD fork with a modernized UI"
  homepage "https://ondsel.com/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between the release being created
  # and the homepage being updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Ondsel ES.app"

  zap trash: [
    "~/Library/Application Support/Ondsel",
    "~/Library/Caches/Ondsel",
    "~/Library/Preferences/com.ondsel.Ondsel.plist",
    "~/Library/Preferences/Ondsel",
  ]
end
