# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.5/cymbal_v0.11.5_darwin_arm64.tar.gz"
      sha256 "d297d9d406c96e12e170667ce90df09b4b1a0ee9e69ee8a7705317aee1273074"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.5/cymbal_v0.11.5_darwin_x86_64.tar.gz"
      sha256 "ae895517df3fcf3fe9a69eed4741e324f2364435d3a73dae1f2532b9ad8e6cb8"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.5/cymbal_v0.11.5_linux_x86_64.tar.gz"
      sha256 "881df27cafc657c1861521a30801ea628486bcf47f41f94af992fbf00d1538dc"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.5/cymbal_v0.11.5_linux_arm64.tar.gz"
      sha256 "bd3e24f17ce3ec1eb98815673d16b0a2f7d851a7eaa9c739e310b0f1662c0bbc"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
