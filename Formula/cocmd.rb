class Cocmd < Formula
  version "1.0.77"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "66fefe93eefe75994b90c8c551036f64afddb0b4dcf6bf1f115a31f9c889ab2f"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "6278aefd7b1ad061e96ec4893daf0bbcb05a76b21e1c03ccb2f3b18fb81ca285"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end