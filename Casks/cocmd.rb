cask "cocmd" do
  version "1.0.7"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "7be836a1f2fe8d36cdb23bb2f8d766549ac3d15e599c56562430394b435a7f02"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "2a5a8089a0f80aff02749bc631151779ddacb1f5b4cdd42b0b1b2781328696de"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end