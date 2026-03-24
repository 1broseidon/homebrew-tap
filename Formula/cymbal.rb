# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.0/cymbal_v0.4.0_darwin_arm64.tar.gz"
      sha256 "6c9b616fb0a7bc77efdd888ee4c4f131f56245908bc0c994a3dd9fbe0f77fe5a"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.0/cymbal_v0.4.0_linux_x86_64.tar.gz"
      sha256 "a1a2479c84f91f4e55c12e3f1bf0b007e7fee39ca2fc5499c2fe4913d6a50299"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.0/cymbal_v0.4.0_linux_arm64.tar.gz"
      sha256 "e7157f0478af7a8b9d47a135dc0e213a510706bfe792f815639b2c7dcb9ffcba"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
