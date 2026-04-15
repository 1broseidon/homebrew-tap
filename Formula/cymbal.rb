# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.3/cymbal_v0.9.3_darwin_arm64.tar.gz"
      sha256 "a3f8d0fb45753bc5f73989767e89840555f1d434600a89f54faee14994e66e90"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.3/cymbal_v0.9.3_darwin_x86_64.tar.gz"
      sha256 "4d35291b2d373b72bc456e8016e9467424dedd45c9f7844f95a71505eac8ba16"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.3/cymbal_v0.9.3_linux_x86_64.tar.gz"
      sha256 "1156bfb275ccd323012723e7f7c5c22cc835cdac50319a6e911710278dea0746"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.3/cymbal_v0.9.3_linux_arm64.tar.gz"
      sha256 "000e27f87e5439a9b1b029900e692b46b5f14fd3899c0a09ef39c13dd2e73722"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
