class Kon < Formula
  desc "Display fox image on the terminal"
  homepage "https://github.com/Doarakko/kon"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/kon/releases/download/v#{version}/kon-x86_64-apple-darwin.tar.gz"
      sha256 "11c5bffb3429b3d753c7c86ad4ed1355e65a664120c0c6ead2ab66b663563dd3"
    end

    on_arm do
      url "https://github.com/Doarakko/kon/releases/download/v#{version}/kon-aarch64-apple-darwin.tar.gz"
      sha256 "ecc1badd90502dd83b08d7f66d4bd7acba57180752eb811eb65e400b28dd8f5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/kon/releases/download/v#{version}/kon-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a28781ae7fd4f86944bf4d1e1bbd1a84c46bef8a08fd1d3b618beffe6ca1b91"
    end
  end

  def install
    bin.install "kon"
  end

  test do
    assert_match "kon", shell_output("#{bin}/kon --help", 2)
  end
end
