cask "cocmd" do
  version "1.0.8"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "583f95f76a0469e30aeca52a17479f6c7515e77069aaa165f86048fcf0f50bfe"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "da8e3ba5a3322e0a2dbec43150ef3b42d312475d3602761989acca92d4964673"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end