# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.2.0/cymbal_v0.2.0_darwin_arm64.tar.gz"
      sha256 "61dbdeffe24dfd8378969534563e0f54d43885a1380523252542301331c0162b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.2.0/cymbal_v0.2.0_linux_x86_64.tar.gz"
      sha256 "bf2e75806782878344eb44d04d24f9f40ccc54b713415d92d60d811f2f8a8b49"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.2.0/cymbal_v0.2.0_linux_arm64.tar.gz"
      sha256 "f716aa8feb3f85aee0c8fc49ba686f370e4c3222db2a326d669b9b5b7b0efe00"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
