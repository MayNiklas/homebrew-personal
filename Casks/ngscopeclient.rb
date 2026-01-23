cask "ngscopeclient" do
  arch arm: "arm64", intel: "intel"

  version "0.1.1"
  sha256 arm:   "a42bd8d3d01c638e14d2cd3cc076abea98584301fa40caf08c97e148bc82144e",
         intel: "3610b9a8baabade60d73787744824a84c1fb53e7b290392a6e214380a393e89e"

  url "https://github.com/ngscopeclient/scopehal-apps/releases/download/v#{version}/ngscopeclient-macos-#{arch}-v#{version}.dmg",
      verified: "github.com/ngscopeclient/scopehal-apps/"
  name "ngscopeclient"
  desc "Advanced T&M remote control and analysis suite"
  homepage "https://www.ngscopeclient.org/"

  depends_on macos: ">= :sonoma"

  app "ngscopeclient.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: ""
end
