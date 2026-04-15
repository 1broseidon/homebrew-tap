# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.0/cymbal_v0.10.0_darwin_arm64.tar.gz"
      sha256 "b9aac6d2bb6b0f44a93a6b01232ad2226f4cb1b77a32255ad0df83bb715fda5e"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.0/cymbal_v0.10.0_darwin_x86_64.tar.gz"
      sha256 "cc882bd4bb0e8729f56cd8ef8fc8657429b4528211334f35280db41724db89a6"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.0/cymbal_v0.10.0_linux_x86_64.tar.gz"
      sha256 "59cf6cdba5754342e4cf2bfd3cbc0cca1faf41e5a04cfbb3bf497ebd72f11233"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.0/cymbal_v0.10.0_linux_arm64.tar.gz"
      sha256 "12fc2f8a8f3f0f5838ff0d4f3b1e62da7f90e335590add9797c4245ea19aaf15"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
