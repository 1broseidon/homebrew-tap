# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.3/cymbal_v0.7.3_darwin_arm64.tar.gz"
      sha256 "6a5a7b48db697bd1db266734c9c4cbd8cbd12a2c23bf2d6ad2d9e6525890eac0"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.3/cymbal_v0.7.3_linux_x86_64.tar.gz"
      sha256 "061b348c7aec6777dd5ca54f324b86a8905441a77e4c2a98b2ef9e0e697d1b95"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.7.3/cymbal_v0.7.3_linux_arm64.tar.gz"
      sha256 "a826455bc90916779edff82855091267d035d3bc13080f427e52e5e7caafef55"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
