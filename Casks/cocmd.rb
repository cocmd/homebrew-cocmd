cask "cocmd" do
  version "1.0.8"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "8fad7ddacb31fd0626a224c6ebab4dd5dbc61c3866ebd085866c83a4de231f73"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "5080e62743f17912cfc9a0fba9aabdb0a77d9e9fe88bb322122f937b479f1269"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end