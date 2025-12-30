class Draw < Formula
  desc "Display Yu-Gi-Oh! card image on the terminal"
  homepage "https://github.com/Doarakko/draw"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Doarakko/draw/releases/download/v#{version}/draw-x86_64-apple-darwin.tar.gz"
      sha256 "5969be8cf2f343f45c2b00f644c050e1dcccf5f05fa5dbbac96cb6a2a2fcfc91"
    end

    on_arm do
      url "https://github.com/Doarakko/draw/releases/download/v#{version}/draw-aarch64-apple-darwin.tar.gz"
      sha256 "d4eb73053541166f769353e5e1ffcddcc1fd20747f170b76ef5140cf5ead81a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Doarakko/draw/releases/download/v#{version}/draw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c43c845718aa3c54e855c6a898e88a813af498b38f557a97af97a91c0b93569d"
    end
  end

  def install
    bin.install "draw"
  end

  test do
    assert_match "draw", shell_output("#{bin}/draw --help", 2)
  end
end
