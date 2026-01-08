class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.1.0/islands_1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "db394993848a8e18cb06a1b52d6cb160219d5b98c2862d77516f28a5d11e29f0"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.1.0/islands_1.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "c76ebef63122ebda479ae1a4f5226ded448f6c9e18b707091e30fd4d19b23104"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.1.0/islands_1.1.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2e74aafde365d90db40f9318d423b60068ebfd4c1c3c745293ba4df62e93410"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.1.0/islands_1.1.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "869bf09a9adfa0b80af62a30a6b5a25956d68cbf84def6f07bdf2f189525ab8a"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
