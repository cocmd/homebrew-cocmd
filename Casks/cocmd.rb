cask "cocmd" do
  version "1.0.62"

  if Hardware::CPU.intel?
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-x86_64-apple-darwin.tar.gz"
    sha256 "591a96100a76b3758c3eb7da636234cf279028b2e255d3d28bc88227fb279e5f"
  else
    url "https://github.com/cocmd/cocmd/releases/download/v#{version}/cocmd-aarch64-apple-darwin.tar.gz"
    sha256 "88ca7fbd7a03493e901f4ec7f9b071190f1143f7bfdc094883f95f9991d7ac9c"
  end

  name "Cocmd"
  desc "Streamlined Command Line Operations for Dev Teams"
  homepage "https://cocmd.org/"

  app "cocmd"

  zap trash: "~/Library/Caches/cocmd"
end