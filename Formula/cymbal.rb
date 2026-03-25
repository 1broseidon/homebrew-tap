# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.0/cymbal_v0.5.0_darwin_arm64.tar.gz"
      sha256 "70b714619f85a6e8634e81ca658eba04a3cae20abe5871f29e5601fdad3e1ef7"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.0/cymbal_v0.5.0_linux_x86_64.tar.gz"
      sha256 "6e7d504c99efea476ab251b9e2637890d6c3ba1cace3bbd83c982d6f9e7f6557"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.0/cymbal_v0.5.0_linux_arm64.tar.gz"
      sha256 "05ab67bf5df1af6547c049f4951311a3e914a5f78a70c22ceda2ccee9fe8d0b9"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
