class Cocmd < Formula
  version "1.0.78"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "e9e4fb95705bb7324f67a3c8be27ef897754172cc6e89fdddc318a9bfef0da69"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "02ffa9c63de47be9f0c32d2ee48eb609b497a4851ba87e9e8af5e0f8d6eab93a"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end