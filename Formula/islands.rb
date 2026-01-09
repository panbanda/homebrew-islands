class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.0/islands_1.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "88661b00ce8945b013061dc1903d794b33a4562033335ed3556b2bbf1fd9a1d5"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.0/islands_1.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "eb8e6984f156d194c9e267e9dba0c468d88b59eef0599b288aff40a552ae4d81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.0/islands_1.3.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f232bfd3cfc3ca1c4c42be93c0551ad18487a7c4422b003f6c6e8d8509540e1"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.0/islands_1.3.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a57d5658a28afcfe2f6dbd43e24348a4992b7fbccbfbed9d3044896e2693e7c4"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
