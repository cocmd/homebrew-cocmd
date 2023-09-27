cask "cocmd" do
  version "1.0.7"

  if Hardware::CPU.intel?
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-Intel.zip"
    sha256 "8b4a9454521efa9c6399f17f1330ce3926ee3dd02d507ad7e0e5a5ccb6d271f5"
  else
    url "https://github.com/Moshe-Roth/cocmd/releases/download/v#{version}/Cocmd-Mac-M1.zip"
    sha256 "46c489b6c0f7e6da973a632f2367c37e1f230bbe10e1ad98176a29db20ca3181"
  end

  name "Cocmd"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://cocmd.org/"

  app "Cocmd.app"

  zap trash: "~/Library/Caches/cocmd"
end