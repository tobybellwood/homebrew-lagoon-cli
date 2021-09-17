# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lagoon < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/uselagoon/lagoon-cli"
  version "0.11.9"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tobybellwood/lagoon-cli/releases/download/v0.11.9/lagoon-cli-v0.11.9-darwin-amd64.tar.gz"
      sha256 "e05f99434da166e2c4b67b3ed207807d987f977c0a4c684a10201cf4a7105f2d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/tobybellwood/lagoon-cli/releases/download/v0.11.9/lagoon-cli-v0.11.9-darwin-arm64.tar.gz"
      sha256 "1bfa3291bffb999424c631c0994e61c23a6e15e0d18e1de72a719704c4ba449f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tobybellwood/lagoon-cli/releases/download/v0.11.9/lagoon-cli-v0.11.9-linux-amd64.tar.gz"
      sha256 "6fe3adf52248ab49df28f29a5d5cd408abebcd656e05f627fa9107f08a58d346"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tobybellwood/lagoon-cli/releases/download/v0.11.9/lagoon-cli-v0.11.9-linux-arm64.tar.gz"
      sha256 "72a1e6a4f7f8d16de35d6197a284ac1c30d20d506b1354ceccdf4f954bf8975b"
    end
  end

  def install
    bin.install "lagoon"
  end

  test do
    system "#{bin}/lagoon version"
  end
end
