class Cocmd < Formula
  version "1.0.74"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "96c0d9d7e377a1e7698cda2e6e56ee1b3e5775d5a85b0a86ccb5df8fcbe34fbc"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "2cc67b1e62f440f81a47bf5457348e1cf266400aec7058b101f5c65a62947c3f"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end