# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.0/cymbal_v0.11.0_darwin_arm64.tar.gz"
      sha256 "20031fc21ffbf227b9cb1e15ac87c51da797bd3bfb5a21b1eebfa09ecde46db1"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.0/cymbal_v0.11.0_darwin_x86_64.tar.gz"
      sha256 "5b4d1e6d11125ab5e45a0b3157cd4315e56780024005dab66a5276f8451b41c2"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.0/cymbal_v0.11.0_linux_x86_64.tar.gz"
      sha256 "fa2197475690ed9a648c4e6f6257cedada4f604cc3b996ba4941c95db3c6e3b6"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.0/cymbal_v0.11.0_linux_arm64.tar.gz"
      sha256 "5459483211159ce0645447e356118a771448636f970c970f0b080f7c54c0ba6b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
