cask "cocmd" do
  version "1.0.71"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "38c9eccbe268231408d2a7747cf3451882809aeefe776281a366a56cf9ccb878"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "b8fe894bcf1e3f7070baffe2242da64f2eac3e8ebc6df2c35ddaecf5a5ade3c9"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end