# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.2/cymbal_v0.7.2_darwin_arm64.tar.gz"
      sha256 "d547355fa39defdfc4c65126d0124fd48ae1a894be31729c2efd03dac772f674"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.2/cymbal_v0.7.2_linux_x86_64.tar.gz"
      sha256 "17df2c53eef41d8ab2fe90dd10a1490b406e0fb78b820abc5c6a9d9da39de3d7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.2/cymbal_v0.7.2_linux_arm64.tar.gz"
      sha256 "b06849fc216ca9d3b6e7fb23e220174b75073632703f4ac2b2f335539b90f782"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
