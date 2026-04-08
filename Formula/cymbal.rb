# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.7/cymbal_v0.8.7_darwin_arm64.tar.gz"
      sha256 "640f267230cc6b8b2b9bdb01d0291bac31796d4eec8be2d540b36ee362657bc3"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.7/cymbal_v0.8.7_darwin_x86_64.tar.gz"
      sha256 "0c612ec5b9ca02210ea4426380e64179b27a9f33ea2e6f8b9295b1a6cbe6e84b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.7/cymbal_v0.8.7_linux_x86_64.tar.gz"
      sha256 "c52772e035c484981c250b7885a142f8fba623a52f9987f9a7e4f8fbb3459061"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.7/cymbal_v0.8.7_linux_arm64.tar.gz"
      sha256 "9189a564a9f4522ee59f5fac86d43e098040408be67233372333982d2c84c3b7"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
