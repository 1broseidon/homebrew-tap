# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.14.0/cymbal_v0.14.0_darwin_arm64.tar.gz"
      sha256 "a225009f65096e63e07b12198c8f84de90543ea3ec28ead31b92b738cee36abb"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.14.0/cymbal_v0.14.0_darwin_x86_64.tar.gz"
      sha256 "788c656a6539432945508c7b16c051b3d85f1c66f5e585cce53f8b306e33f245"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.14.0/cymbal_v0.14.0_linux_x86_64.tar.gz"
      sha256 "bfc951722b773b5f07c3a291530684ea737b012ad866505c6971a92d6bd9810d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.14.0/cymbal_v0.14.0_linux_arm64.tar.gz"
      sha256 "8de0d50955713a5b5f9024a3b9b3488a79cad00922e8683f702b8e27f0904678"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
