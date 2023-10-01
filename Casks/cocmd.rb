cask "cocmd" do
  version "1.0.8"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "8cd4f12ca302de0f278dd7b115a110f0726f25d45166ab5ac652cb2eeb876e4e"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "a0f3b2bb96092dfbecbae8d6fee591a1267fcd5feaae7f98ddba72ace8e6c1f8"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end