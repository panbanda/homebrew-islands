class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.1/islands_1.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "bcdd238b560c76da0464e82c7ac7e6dd41c8831a2db9bcb2d501938e0449c3b8"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.1/islands_1.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "47ae71c8f7499f8a1fe41c79e380697d8c3de1fa6dd864729d21ae57711929ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.1/islands_1.3.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c955895bc102948083c620c905f58d9dc9723531b6f2114d7193554a4b27e057"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.3.1/islands_1.3.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5b462ed9206ee85e34f8c466002a176f1ec96d7c5a5f04a39e7ddcd8d9f203b"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
