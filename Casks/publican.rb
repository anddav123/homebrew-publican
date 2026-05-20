cask "publican" do
  version "0.1.4"
  sha256 "d31f4ee6129e398963213974a8d4c14c555d5fa016b0c2f0dea2a628855cdea1"

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
