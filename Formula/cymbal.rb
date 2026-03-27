# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.0/cymbal_v0.8.0_darwin_arm64.tar.gz"
      sha256 "da5a594142c9f1bf860b75ca2a9c426f9ac0c8b66190b2b64672e831f40b15aa"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.0/cymbal_v0.8.0_linux_x86_64.tar.gz"
      sha256 "b182cabe7e08d6adc29e985eb0cea794f1d8e5c69aeddc89d949dcba9679eefb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.0/cymbal_v0.8.0_linux_arm64.tar.gz"
      sha256 "a28a33f2da8d3cdd68424316f37c7c29230b5b17eaeda26dd5eecd4f49f0dfba"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
