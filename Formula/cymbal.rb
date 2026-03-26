# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.1/cymbal_v0.7.1_darwin_arm64.tar.gz"
      sha256 "f2e8d32237ac0394acd7d793c86f6a0e3bc806d9361ee4dc24279e9a9b5dfcbd"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.1/cymbal_v0.7.1_linux_x86_64.tar.gz"
      sha256 "38daf803fda104e8dd68c67a79b7f4d97af8a8dc2990484127b57ab86d67b8c1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.1/cymbal_v0.7.1_linux_arm64.tar.gz"
      sha256 "c9629ebcb1c731ebb72e53806b0779cb26a5844c5db3e7bed907bc1af0de3590"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
