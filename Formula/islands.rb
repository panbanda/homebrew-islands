class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v0.3.0/islands_0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "5be56314f0ea070ac40862b5979014d5f2a6623ba6e30bbbf015945717bfcf89"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v0.3.0/islands_0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "5f0263874f4bb930aeb7192d84ac9e392f2ed5451e259d17d9bca93a05c46fec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v0.3.0/islands_0.3.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08771abad2191578a35c062e5feba7d20ced77b1cef00b6e69c8ea6d239681d8"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v0.3.0/islands_0.3.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "074b05912c6e80c5b5e5d955b7d27acf45d9ae8bbea461d408d08c03d63ad6e0"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
