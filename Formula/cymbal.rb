# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.3/cymbal_v0.8.3_darwin_arm64.tar.gz"
      sha256 "448e7ac932ecfdfec3f2727a2a49fe51c7e5ec5d5d3422fbf9a1cf5756591022"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.3/cymbal_v0.8.3_linux_x86_64.tar.gz"
      sha256 "e044bd11afef182895bf56da58c12bc6d4a54fb7b4d22a1a73d19434f503101b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.3/cymbal_v0.8.3_linux_arm64.tar.gz"
      sha256 "f0eb54e22959f24fe46d7cfa86dbfc2a2649623f35e800fa9a0b80fa9a19a02b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
