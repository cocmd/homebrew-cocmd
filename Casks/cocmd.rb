cask "cocmd" do
  version "1.0.8"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "f643f21a94371c435f30e177b446f34c403024ba34ed31ebdb05b61bf1e891f8"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "1f09e36c3831c06b656f5a3b89807f011964e1236c5715aef05764d74b45ee21"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end