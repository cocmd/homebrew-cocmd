class Cocmd < Formula
  version "1.0.82"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "fd99569a3d5bb58d64eef9d695d8560fbc4373e7a52370b466a05fcd2fdeb9ee"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "4cf7ac33fda6019bfeef5a316026fcd739b61b44ec6a8e6e6bb9a7cf0317da93"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end