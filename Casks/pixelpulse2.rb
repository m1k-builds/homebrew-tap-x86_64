cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-01-31"
    sha256 "ef649be3eb4e60fb16c0758abac2fdab0fef7bd457d7bef3a2cb060954b68010" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-x86_64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"

    def post_install
        system "codesign", "--force", "--deep", "--sign", "-", Contents/MacOS/pixelpulse2
    end
  end
  
