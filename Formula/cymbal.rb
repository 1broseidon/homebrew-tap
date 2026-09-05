# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.15.0/cymbal_v0.15.0_darwin_arm64.tar.gz"
      sha256 "e5c491a3e358ef45f5f89a1ec400232a20dfc82156207c68df170bffd70cbae2"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.15.0/cymbal_v0.15.0_darwin_x86_64.tar.gz"
      sha256 "8f5eba7fa7e8a1db2b9ea731591203ada51a37bf930e7229fa97e54aba60919f"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.15.0/cymbal_v0.15.0_linux_x86_64.tar.gz"
      sha256 "9c7e178a5e5549948e14f2adb75935b218fa55d80add07da0c2a3cf7a258519d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.15.0/cymbal_v0.15.0_linux_arm64.tar.gz"
      sha256 "2287a96134f2a517ac66b07a71df1273180b052342d613ab2a4d51d5320ff338"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
