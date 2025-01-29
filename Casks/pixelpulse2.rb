cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-01-29"
    sha256 "3ee9e998d6caa0a3aae09681381aa25d18c8cd77e2aaa080971c472aab09d0d6" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-x86_64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"

    def post_install
        system "codesign", "--sign", "-", Contents/MacOS/pixelpulse2
    end
  end
  
