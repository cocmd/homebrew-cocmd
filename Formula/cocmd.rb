class Cocmd < Formula
  version "1.0.75"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "dc68929a3fda520d7f6dd216ec63db88b9ed721cf8c96d809d6c7e0becf3fe73"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "ba95a976fd4a57979a30c49661e279d1d04d1924b81ad9255d194a786ce9bd9d"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end