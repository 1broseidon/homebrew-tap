# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.2/cymbal_v0.9.2_darwin_arm64.tar.gz"
      sha256 "4f01ddd646222d4bf9123eb8001b6868720d3e5641dbdda30b40ff208252810f"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.2/cymbal_v0.9.2_darwin_x86_64.tar.gz"
      sha256 "f1db5780d917ec76f8e41b0a0555c5e89712a98b21bdbc3436c2ae0b2e4600c2"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.2/cymbal_v0.9.2_linux_x86_64.tar.gz"
      sha256 "3e8b19751ac104ff30b1b179c906b147a43784d0039322c11ae9331d3964227a"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.2/cymbal_v0.9.2_linux_arm64.tar.gz"
      sha256 "236ee0928bbccf98e3526af1030bb62d2b2c706ca9f3d2fd56416dea0cd6f973"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
