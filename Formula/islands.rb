class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.2/islands_1.0.2_aarch64-apple-darwin.tar.gz"
      sha256 "de958c15fbbf5418be975f3137b67990b7fee376dc1fae5aaf80fa6790aaeee1"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.2/islands_1.0.2_x86_64-apple-darwin.tar.gz"
      sha256 "9d84b2bc2949b3b632122b4535e167e2c9e15462e643410f713cc2be34eaa8e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.2/islands_1.0.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f00eae344af150a65b4dd37d37761e56a4ce809489e88acbafac263dcb9da2a"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.2/islands_1.0.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17eefe63ae3a4cb946f09cbadb79f5bd7a7eab85e46536651ba4aaa5a1d93575"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
