class Cocmd < Formula
  version "1.0.73"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "1fb06801d71975f770958641c0a8f5bb3c783da6154a34111b6fdbff7bb9db0c"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "b3f26365206e2c8bef555c62e744925ac51d378669843d19b02b79723fa6b3f3"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end

end