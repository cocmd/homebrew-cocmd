cask "cocmd" do
  version "1.0.68"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "9f9c4e4a4166b754d8a33605a6ecb24120e54257b8055e8a9aee190e3d908562"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "a3cd47272d52b34ed5e86449b48deb03e32336684625dade0a35406a66b52129"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  def install
    bin.install "cocmd"
  end

  zap trash: "~/.cocmd"
end