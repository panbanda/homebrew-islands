class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.2/islands_1.4.2_aarch64-apple-darwin.tar.gz"
      sha256 "b608399004f70b5ca754bfae0cbab0c68af6b8d057b6b21d5893d19ba3daf72f"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.2/islands_1.4.2_x86_64-apple-darwin.tar.gz"
      sha256 "92d1b850bf08e0fdd5b70e58bda84717488bd770847412244d0d6be427d0f18a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.2/islands_1.4.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25d9a5898571155751aa43d97313be5515d1f36abe902f6f75191d9228c8d290"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.2/islands_1.4.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ade3b55c16e82809b11b3628daf2cfd1302085900ec9329d876e08fdc0f3b98c"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
