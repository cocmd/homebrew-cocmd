cask "cocmd" do
  version "1.0.8"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "2a7187b6510eb4ee4d5d58692ecc73a20a233b8cdc2eadaa61efb9b7bda0ab52"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "b7ef1398523147d9e44a332e7ef7465a6fff1120e1c6fe763e68bee7ebd702f7"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end