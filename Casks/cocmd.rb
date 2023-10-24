cask "cocmd" do
  version "1.0.65"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "c1c46a7d6a0d9f414897266a48b0d7da44fa40052ef0f3777d34e12bcde956d3"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "12991acb8ac78fd795451faff53b9b33f696a2f273b4f15c1dd4d7c995fa8716"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end