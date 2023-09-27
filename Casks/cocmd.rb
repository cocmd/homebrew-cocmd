cask "cocmd" do
  version "1.0.7"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "ffdf7aeafd3d1c750d9ff5933091950f3adde5e86acaa7fa06f60e6ddaac00e4"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "a8412438fd40bf5ad0e2c4d8843cd60ed174b62f1d53c8b6e0ee3328c349a3ea"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end