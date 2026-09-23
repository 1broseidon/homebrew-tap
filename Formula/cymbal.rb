# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.16.2/cymbal_v0.16.2_darwin_arm64.tar.gz"
      sha256 "fa1fcba309d1a18eadba13f389e0c6ed6fcb0c687a18d8ce5b19a6efaa4a08c2"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.16.2/cymbal_v0.16.2_darwin_x86_64.tar.gz"
      sha256 "e9da30dba48a94d9c1981c0b399a66c24cec3415770742e9141a5ced951f7782"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.16.2/cymbal_v0.16.2_linux_x86_64.tar.gz"
      sha256 "f0460354d8b428cbcce0e912488e314c5a86174a6f606ea81ccf721ad8d20a1a"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.16.2/cymbal_v0.16.2_linux_arm64.tar.gz"
      sha256 "e58ce703d0ab9f4d71e285570adb33d99b3effce7f685be2af2cb955becb7a9b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
