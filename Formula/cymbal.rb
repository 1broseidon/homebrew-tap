# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.0/cymbal_v0.9.0_darwin_arm64.tar.gz"
      sha256 "10867960230942dfb45a5927c8c7a7193ef3626121fd60d9b4fdf90996e3bf06"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.0/cymbal_v0.9.0_darwin_x86_64.tar.gz"
      sha256 "75c92d4f5443020cde3d1ec371fe90cf7db7045428f55ba81331ecf9706b1c52"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.0/cymbal_v0.9.0_linux_x86_64.tar.gz"
      sha256 "1808c126e9ee82dcdabf20bdc5b9c53c783b2f21529767f2fc78742e4f2a16e3"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.0/cymbal_v0.9.0_linux_arm64.tar.gz"
      sha256 "6e097460b48ef6e559a749855bbe4abf213fb0e46852a414caac3bccfc0542e1"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
