# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.12.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.5/cymbal_v0.12.5_darwin_arm64.tar.gz"
      sha256 "535d2850f1e2ddadebdaeb2c8a0edbe4e92e39abb8682678d0fe99baee85df7d"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.5/cymbal_v0.12.5_darwin_x86_64.tar.gz"
      sha256 "d2fb728e837d2f7532607553fa9dcfa5ad8558df7ae6f7cc0a3f1d55bf144480"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.5/cymbal_v0.12.5_linux_x86_64.tar.gz"
      sha256 "b01af582064dd9f88ed20ad83bf6223a7db16cf005ba7509d4909810cc5709eb"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.5/cymbal_v0.12.5_linux_arm64.tar.gz"
      sha256 "4301ed228b71622e98c652e22bdad86c59b5172b5b02cff5a981e06569140a91"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
