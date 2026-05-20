cask "publican" do
  version "0.1.3"
  sha256 "2df36c45b46971e0e02a2e4dd0a3fa5dc5bc8503aa93be4e21902fad0c8ce1e6"

  url "https://github.com/anddav123/Publican/releases/download/v#{version}/Publican-macOS.dmg"
  name "Publican"
  desc "Native macOS GUI for Homebrew"
  homepage "https://github.com/anddav123/Publican"

  depends_on macos: ">= :ventura"

  app "Publican.app"

  caveats <<~EOS
    Publican is currently an unsigned alpha build.
    macOS may require right-click > Open the first time you launch it.

    Some Macs may block the cask install with a warning such as:

      "Publican.app is damaged and can't be opened. You should move it to the Bin."

    For this alpha build, remove the quarantine flag manually before launching:

      xattr -dr com.apple.quarantine /Applications/Publican.app
      open /Applications/Publican.app

    Long term, Publican should be signed and notarised so this workaround is not needed.
  EOS
end
