class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.1/islands_1.4.1_aarch64-apple-darwin.tar.gz"
      sha256 "ff82232fbde86a403014f25d42723336ba2ede2694364fb2cba04a718fd0a714"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.1/islands_1.4.1_x86_64-apple-darwin.tar.gz"
      sha256 "e67eee6abd6e96ea5dd8b23aaa3c5f3712f36f282fdd5518bb2bb88792658846"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.1/islands_1.4.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f442c1a2ebb029e0ef0efb8c040ff331f420d6a9d493e960b023afb2ec16647"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.1/islands_1.4.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c6b0a8b3446c6eca89ef99a87412961061dc0aba02db11a954d2c98b40b35d9"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
