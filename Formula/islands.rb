class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v0.2.5/islands_0.2.5_aarch64-apple-darwin.tar.gz"
      sha256 "5d96b5a1aeb6e00bd766591fde589adebda2a3135efd47e9b36d88cd0d5fdf48"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v0.2.5/islands_0.2.5_x86_64-apple-darwin.tar.gz"
      sha256 "9df5c3a36b242b70087cfe881efc7cd2c9f45c5445b4d5e613ec21a104da04ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v0.2.5/islands_0.2.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a134922cd12b771a1bffdf12d881a7f6b1900e8eb73adcc24246b8dd23f5c015"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v0.2.5/islands_0.2.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6e014f27a8ec3b70ae55c76302b07e61b0de6f808f1e995a95556809bbdbbf2"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
