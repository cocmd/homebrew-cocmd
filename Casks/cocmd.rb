cask "cocmd" do
  version "1.0.56"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "fcb01ada01fbc458592af71c0653a6d2e5288c36caf2de275e32e5de1983bc94"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "8d58c40842695cfee95f36b3e500aa48d9763fd00fcee2b82a04889f017f4a7b"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end