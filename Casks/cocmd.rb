cask "cocmd" do
  version "1.0.60"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "8c8f52631962a4c5cfe00b42b4a65236544619d4dbe8f7ab0e05d2818f4b92b0"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "e949177c00655ec3225980c535b70386d28cd5c5c6cf808c0548fad4a7fd4bc7"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end