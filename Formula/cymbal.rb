# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_darwin_arm64.tar.gz"
      sha256 "341e4aa558bcd31e4eab0d16403b9b69b46c9104556127eece48121022436e67"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_linux_x86_64.tar.gz"
      sha256 "5ac34649f316ed481c35eac7fec0a2ff7590d03ccc2bc076b469401ad9ae4d74"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_linux_arm64.tar.gz"
      sha256 "915ba2552619d5bb206315b47ece623038907e532fb2fe1ffe48d90a71261ce5"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
