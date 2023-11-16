class Cocmd < Formula
  version "1.0.80"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "d63ab9e608b99aa9536f7a15f71c93c88277f3b8f4b5435cad1eeb940c3a91e4"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "ad0e0942a247fd74c3d6f8ed71f1ea35fe801e550c4ff45421693ce26b8faf0f"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end