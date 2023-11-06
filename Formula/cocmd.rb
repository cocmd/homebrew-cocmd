class Cocmd < Formula
  version "1.0.76"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "934c57c575bb5454b75f2dedba12a607da5d0cd39f480c1c37189529209ccdd3"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "c687bdeda29e9732509a9d197938f2571b78e4a0bcd618b6eb851598d186a17b"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end