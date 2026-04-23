# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.1/cymbal_v0.12.1_darwin_arm64.tar.gz"
      sha256 "ab157cb748b3d2b8ffb5d417933d1ade5a0b7e8a4547139da5e651b699b94de2"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.1/cymbal_v0.12.1_darwin_x86_64.tar.gz"
      sha256 "e6ce6f2d01fb1642fa15a86ad659af268624f49b406edcbcd9af5c613bd2b5b0"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.1/cymbal_v0.12.1_linux_x86_64.tar.gz"
      sha256 "6b5a5205638aa4e9cfacd002b9b044d480e17042a3e0ab183119603a449c97e5"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.1/cymbal_v0.12.1_linux_arm64.tar.gz"
      sha256 "9c0b677406a17ca473479dc221720c4bc4d37b32d37ae19d2b99ba28ffb44037"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
