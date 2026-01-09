class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.2.0/islands_1.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "f2173592073945c55459470a1978902d382551c8c07173dc8bb492ac03fc98bf"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.2.0/islands_1.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "70314fbe8ec1ca37982ff77e8b9be1ecb6b335843d0966f0e2850bc16650dfb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.2.0/islands_1.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "968e8c106016075fb8ee912c828638c2c20bec78d566d835b882213210f739f8"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.2.0/islands_1.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eed3fea009ecf5d968f5a25498a48e8fd11ff2d57553fa00e6a7e0c3fd2d9815"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
