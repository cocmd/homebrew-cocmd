class Cocmd < Formula
  version "1.0.79"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "fd513138893cec300acc23afbc1a198de69e40a7a21ce754187e5d90a7f86071"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "23be3fea0a1e42ee58392fcbd06cb7ecb60a06e849434097e2464a34c43f3c44"
  end

  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end
end