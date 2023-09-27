cask "cocmd" do
  version "1.0.6"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "6c880d6bc2eb11271c00dd35d1bf117444cf2a4b1400f93a7e27cc77a5a2bcca"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "04ed7effebb333cd8ddd951908b9e76f18ef42501b4e9ea350714f4e81a11ff6"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end