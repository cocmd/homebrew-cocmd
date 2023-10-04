cask "cocmd" do
  version "1.0.9"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "87988b7146d06d00295c92f4c92d0107d5a6aa72576d327c4990b2ccee6c9fd2"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "4afb621439e3d0dbb7f429a0589f7c611c243abc3b1dbe27cc6640af384d2115"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end