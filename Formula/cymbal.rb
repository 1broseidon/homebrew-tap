# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.6/cymbal_v0.11.6_darwin_arm64.tar.gz"
      sha256 "1d6c8fdea8c62a915abced7ddf87f09a66b29b621944de5f4bc4915adeafe623"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.6/cymbal_v0.11.6_darwin_x86_64.tar.gz"
      sha256 "1c38f28aa7fc632ff2d4ff96824676c36a2bd5287745d70215f20b15bc48397f"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.6/cymbal_v0.11.6_linux_x86_64.tar.gz"
      sha256 "d6cc3d8f59d00bdc8306b6569f75677177189a77445c1f2a2f74e5da26f0d30d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.6/cymbal_v0.11.6_linux_arm64.tar.gz"
      sha256 "fca6b5c42d49e3d1b6d044fb3b3702b557f9ecd2d0cc5c2d29398b8eeee659ba"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
