# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.1/cymbal_v0.11.1_darwin_arm64.tar.gz"
      sha256 "3d58d7de17b8df9e8e5db4091c1bebae8f45606c9125da5d00019db20ca7eaf6"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.1/cymbal_v0.11.1_darwin_x86_64.tar.gz"
      sha256 "06191dcf5597de141fa1fc837fbb28db093a378699bbc2449d475ddbb52d96e1"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.1/cymbal_v0.11.1_linux_x86_64.tar.gz"
      sha256 "ba7a96c60d970bef0689370483fb755cf59652be88c17a7bcc572755021d9fe4"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.1/cymbal_v0.11.1_linux_arm64.tar.gz"
      sha256 "0345c8debe5100806f9e84187900cf987a9aef38813337936d94df9d379b4205"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
