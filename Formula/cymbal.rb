# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.0/cymbal_v0.12.0_darwin_arm64.tar.gz"
      sha256 "ea990787232e24d33dde5cee34b23282ee1131de12b906d6916a72346364f999"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.0/cymbal_v0.12.0_darwin_x86_64.tar.gz"
      sha256 "ecfb5cf1e6dd724015186e4c35dec73bc0d03591273da2ea68410413515bcbfb"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.0/cymbal_v0.12.0_linux_x86_64.tar.gz"
      sha256 "deaa017c7e89fae40e8a589c55851db8b05f711682b8fd35100c6cf884436839"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.12.0/cymbal_v0.12.0_linux_arm64.tar.gz"
      sha256 "b3272b72c1a52006641f64796778f0514cc3b226333fbcf47538e779642fc6f2"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
