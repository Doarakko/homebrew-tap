class Tvshow < Formula
  desc "Display Japanese TV schedules in the terminal"
  homepage "https://github.com/Doarakko/tvshow"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-apple-darwin.tar.gz"
      sha256 "40849abc764b45160b953909287d626bbc54f40537154df2147baff11b08655a"
    end

    on_arm do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-aarch64-apple-darwin.tar.gz"
      sha256 "e939f63aa63741472fe90d56e62a313a53643458970dac0f70e15638eba972cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/tvshow/releases/download/v#{version}/tvshow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a71ae0dc627bd57378c741066223470b35f0ca0ac30124edf6e3f1042f0e246d"
    end
  end

  def install
    bin.install "tvshow"
  end

  test do
    assert_match "tvshow", shell_output("#{bin}/tvshow --help")
  end
end
