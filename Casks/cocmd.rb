cask "cocmd" do
  version "1.0.61"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "92786f90b0ea2de245b8c8eb7ad97f98aac72b8f4d5eb224bf805246e7ad5f98"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "7bbbae6428839273eaa17db4cab1f74cc9b62fa0b220c541c8f33524b0fcd458"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end