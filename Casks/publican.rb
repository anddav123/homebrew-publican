cask "publican" do
  version "0.1.0-alpha"
  sha256 "6178f64ff52205369940aa984cd0712336a9ddd7ca8dcb5fcafc42393d584dc9"

  url "https://github.com/anddav123/Publican/releases/download/v#{version}/Publican-macOS.dmg"
  name "Publican"
  desc "Native macOS GUI for Homebrew"
  homepage "https://github.com/anddav123/Publican"

  depends_on macos: ">= :ventura"

  app "Publican.app"

  caveats <<~EOS
    Publican is currently an unsigned alpha build.
    macOS may require right-click > Open the first time you launch it.
  EOS
end
