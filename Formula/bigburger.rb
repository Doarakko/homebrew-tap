class Bigburger < Formula
  desc "Biiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiig burger!"
  homepage "https://github.com/Doarakko/bigburger"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/bigburger/releases/download/v#{version}/bigburger-darwin-amd64.tar.gz"
      sha256 "564ca7af60cd5dded6fdfb93e2968ab800560d908d3f57c37e98c40b7f7d21ee"
    end

    on_arm do
      url "https://github.com/Doarakko/bigburger/releases/download/v#{version}/bigburger-darwin-arm64.tar.gz"
      sha256 "a3f2b4d86d6dcb98f2d4053e2a06983f6d6173014ba69cd937c51d91a906c975"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/bigburger/releases/download/v#{version}/bigburger-linux-amd64.tar.gz"
      sha256 "5454e4b60cf7cd22218cfec1d965020c3488f12920d2fcce0d76241b4a1695b1"
    end
  end

  def install
    bin.install "bigburger"
  end

  test do
    assert_match "bigburger", shell_output("#{bin}/bigburger --help", 2)
  end
end
