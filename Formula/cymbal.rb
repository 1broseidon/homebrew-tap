# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.3.0/cymbal_v0.3.0_darwin_arm64.tar.gz"
      sha256 "ecb6f1f40dd996bb679ebad815fa20020043a27c273a523e7d190a6a8d37f00f"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.3.0/cymbal_v0.3.0_linux_x86_64.tar.gz"
      sha256 "17f2dc8884adc514def6698472f32ae65ceb7c3af6f625ba5652a81ccc041164"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.3.0/cymbal_v0.3.0_linux_arm64.tar.gz"
      sha256 "b02a6d7e1db2816912d9060c02ca7ce773daf2bf1ef61c060ffa9b3788a13331"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
