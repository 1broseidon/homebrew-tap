# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.6/cymbal_v0.8.6_darwin_arm64.tar.gz"
      sha256 "6458fefb6c64f71e145d0b4f3d71fa8604582d3b410494d884388861d31f409b"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.6/cymbal_v0.8.6_darwin_x86_64.tar.gz"
      sha256 "01b7242c259f3f9c2597ff5699f0912590a11fa3f31216f12787b03f9a648a89"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.6/cymbal_v0.8.6_linux_x86_64.tar.gz"
      sha256 "b46feba087959a7573006897bb0e00b05a4c26752356186571a1cb563ab56113"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.6/cymbal_v0.8.6_linux_arm64.tar.gz"
      sha256 "8e4d0fd3b840efa935bb4f9bd5c5733ed67c5f14e41d8cc7424974a04390cec1"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
