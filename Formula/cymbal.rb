# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.1/cymbal_v0.4.1_darwin_arm64.tar.gz"
      sha256 "7e065fa543fe5347ff8921f308f2c6051e01c5084b0a7ce4d712ff9cd14831fe"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.1/cymbal_v0.4.1_linux_x86_64.tar.gz"
      sha256 "90bbbca257fbab73aadd44302d0e8bb91755ea6ffc40e5042aa107e892b72a54"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.4.1/cymbal_v0.4.1_linux_arm64.tar.gz"
      sha256 "d7adda33df64ed581c5580f9708ce5d578db16191b6c481d6bb85ff6a6b11178"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
