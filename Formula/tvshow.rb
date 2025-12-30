class Tvshow < Formula
  desc "Display Japanese TV schedules in the terminal"
  homepage "https://github.com/Doarakko/tvshow"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-apple-darwin.tar.gz"
      sha256 "9d5b1f80c77c0d2082cdae99c828010c8146e52b1f1ee171c3bbb724948b58ef"
    end

    on_arm do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-aarch64-apple-darwin.tar.gz"
      sha256 "a8997527dba5ef65b6beebd86d3f25543347a8e418f6b3bfdd08c2d5380a38b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71d29889d73b59f35cf0862f840b6422e6fd1a88f24ceec7f60b7e6e727b61f8"
    end
  end

  def install
    bin.install "tvshow"
  end

  test do
    assert_match "tvshow", shell_output("#{bin}/tvshow --help")
  end
end
