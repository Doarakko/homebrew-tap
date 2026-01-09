class Tvshow < Formula
  desc "Display Japanese TV schedules in the terminal"
  homepage "https://github.com/Doarakko/tvshow"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-apple-darwin.tar.gz"
      sha256 "4cf5503bf258b168286883405f7bdb0710f1ebf26abe5f59c30e330760d69b65"
    end

    on_arm do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-aarch64-apple-darwin.tar.gz"
      sha256 "8dd33e953fe47177188721f4d6a514a446fae41b74f0954c751061b6dde974da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6930adf1d24a70a367a11d749211b977eed750427466be188fbeb25e97d3b0b"
    end
  end

  def install
    bin.install "tvshow"
  end

  test do
    assert_match "tvshow", shell_output("#{bin}/tvshow --help")
  end
end
