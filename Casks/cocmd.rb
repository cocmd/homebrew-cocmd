cask "cocmd" do
  version "1.0.7"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "f7a22738a4ff6379c391ddc66f61c1b1d0ceda252e6b9fc6bf0d17af3ab2273c"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "ecdb521eba9b5a1ba48ea85f37b3245c4c50d8f436cbe8c9363b1355adce778d"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end