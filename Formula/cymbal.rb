# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.0/cymbal_v0.7.0_darwin_arm64.tar.gz"
      sha256 "45fcc7da500fee54d8747db5fd121b75a0ab2441568130c6cfc2df70e95c90a9"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.0/cymbal_v0.7.0_linux_x86_64.tar.gz"
      sha256 "c2df58ed967faa88294ecbe675897fa7c8b272852011385bacac5d8e173786c9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.0/cymbal_v0.7.0_linux_arm64.tar.gz"
      sha256 "00343771110e8b0476ebefe8231e4e53b7319330c98e40c0b9a308f12a140b92"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
