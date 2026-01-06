class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.1/islands_1.0.1_aarch64-apple-darwin.tar.gz"
      sha256 "1ca580b184b29f2050b1f29bf8632c08680bf02d09955e4dc668073e3ed2e983"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.1/islands_1.0.1_x86_64-apple-darwin.tar.gz"
      sha256 "0cf30630aa60d4cc2f86f90982aabc8d63c5bf8bc891ef598b2435c9199328c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.1/islands_1.0.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db87ac679132e05fc6b65085fc46a6419c3653e76cb8dbec25c889310e3d42d1"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.1/islands_1.0.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e935bc9766dd4bcef5f7dc1372ff42bea62a629de5458daca63d52ed303b4f52"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
