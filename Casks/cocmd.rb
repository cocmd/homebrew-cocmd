cask "cocmd" do
  version "1.0.64"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "fae7d694a3040b88fd3a65c2f0d8312506e0f11af0e2095402765030529e4e17"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "77aa8b1a285ce19d4e61c50846fe21b771c78a026127f6f2f615d89e1f210c1b"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end