# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.4/cymbal_v0.11.4_darwin_arm64.tar.gz"
      sha256 "9a9453d2a3f1bad35389863fdf6bf2dda36ac9342c17b4c640bb16b94d3eab2c"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.4/cymbal_v0.11.4_darwin_x86_64.tar.gz"
      sha256 "19c80641aa2e501bcb9c7707fece3a700bf5107f6e29f3e63b717bb6c7ad7488"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.4/cymbal_v0.11.4_linux_x86_64.tar.gz"
      sha256 "69d7af052f652ed1233a5c7e7d339d0f9070d95c572839bd1b344df163acf060"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.4/cymbal_v0.11.4_linux_arm64.tar.gz"
      sha256 "7bcf63dbeaebd9ad15bd749539548206d9632b5738d8f30ff7d9e552a0c90e07"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
