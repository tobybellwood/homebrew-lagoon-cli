class Lagoon < Formula
  desc     "Command line tool for interacting with a Lagoon API"
  homepage "https://github.com/amazeeio/lagoon-cli"
  version  "0.9.0"
  bottle :unneeded

  if OS.mac?
  url "https://github.com/amazeeio/lagoon-cli/releases/download/0.9.0/lagoon-cli-0.9.0-darwin-amd64.tar.gz"
  sha256 "7dca0aee2375f6e0c4a89ef2c866ac2c50f56a80eeb7c450395c0ce515b3e70b"
elsif OS.linux?
  if Hardware::CPU.intel?
    url "https://github.com/amazeeio/lagoon-cli/releases/download/0.9.0/lagoon-cli-0.9.0-linux-amd64.tar.gz"
    sha256 "1d048afd0e8feffc3e2b6dcdebcfde8ce72530383df0f3ef1a7aa8b2f1efa18b"
  end
  end
  
  def install
    bin.install "lagoon"
  end

  test do
    system "#{bin}/lagoon --version"
  end
end
