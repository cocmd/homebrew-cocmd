cask "cocmd" do
  version "1.0.63"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "6615568380ff46f39ff132cbb85cf74195f69078a62aa443e58016fcfe8aa500"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "d3f40f084b083d5cebfdbf5541f45ecf1411ef594a7fa56a6187504a22593034"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end