cask "cocmd" do
  version "1.0.9"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "5fe6cf0f53f83d6aa7436b6b9fce65397b2c069a9b685c30810514a6fe9905bd"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "5372e5147e375a334ee5db32dd1376ab6a0f6012ce5f9e6d7ad56dcf1dcf35e9"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end