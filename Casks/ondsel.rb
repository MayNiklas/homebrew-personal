cask "ondsel" do
  arch arm: "apple-silicon-arm64", intel: "intel-x86_64"

  version "2024.2.2"
  sha256 arm:   "666358b259ebc5bcb2f9f5eba0c2607bad236b7f716bb5d0dd2fba3a1be78092",
         intel: "447f023fedd79fe167d663863cee5e0f455adffa8a952f4d14f343fe354772b2"

  # TODO: find a solution to replace the hardcoded build number in the url
  url "https://github.com/Ondsel-Development/FreeCAD/releases/download/#{version}/Ondsel_ES_#{version}.37240-macOS-#{arch}.dmg",
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
