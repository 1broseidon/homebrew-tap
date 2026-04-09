# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.8/cymbal_v0.8.8_darwin_arm64.tar.gz"
      sha256 "ee104ab097050064d20dc7f76c1d33ff3758492c31edd5f336e3c740ddf29ec0"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.8/cymbal_v0.8.8_darwin_x86_64.tar.gz"
      sha256 "9465d811be14ebda29855ecf288c49147c0f3cc36d09722f5972434d8b3e4a7a"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.8/cymbal_v0.8.8_linux_x86_64.tar.gz"
      sha256 "0dc6b6f806c1038a99d7be8ca4a63c19446972c53cfe96b4f3267185cc030797"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.8/cymbal_v0.8.8_linux_arm64.tar.gz"
      sha256 "e3747f598860564127c5efadb7c198b77ebe37e700f1c2f60b336c22928630e2"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
