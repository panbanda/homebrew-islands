class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.0/islands_1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "fc146d6460391ead5fceaa42da66a1dd7f6854d5325fb3e24955682fa75f8855"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.0/islands_1.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "b65a77f483661204fd12c345c775d75c89a49dbfa83293157ffa3665415ae622"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.0/islands_1.0.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fbedca795c20b3bcacc01e53bd93f3f819b6480213d1bc5431d30860b6c5e9ba"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.0.0/islands_1.0.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c32e92ae5e6468f67640164c6402ea0502d1517a8380bc73e3e1a56c201a142d"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
