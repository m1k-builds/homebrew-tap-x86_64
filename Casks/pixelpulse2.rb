cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-01-29"
    sha256 "2cda56b3739c7d3ddf73f993a8d78bc1d675a3b6a17984f2dc04cb7e18700a24" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-x86_64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"
  end
  