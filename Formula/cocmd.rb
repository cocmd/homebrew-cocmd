class Cocmd < Formula
  version "1.0.81"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "c353cf0c67d41cf53b6b55a4bdb61690ab69266cd6fedfcdd3c28f11cf5cae4d"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "6dca96e2d9ce0dc5065e0146782b09b825747d69cab3b602d987afe338e3933c"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end