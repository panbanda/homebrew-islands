class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.0/islands_1.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "1f79cfcb087a94e09257fc680207a31c0507a99f52b4ad0d1875825cc3b5e37c"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.0/islands_1.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "b0eda3e3371b69729330c68c96ac6969a56c025453dce385144174d1bd31b44e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.0/islands_1.4.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb9695970749b58f05d18ac98f98556d0964cfa61886cfb26c6c5e1710cccb09"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.4.0/islands_1.4.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bb979b98944873b2a8a78626d559000033f909345fd7d6d6322c1befb44dacc"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
