# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.2/cymbal_v0.8.2_darwin_arm64.tar.gz"
      sha256 "5169a05a63e8bb4cd030db34fc9e5d5402d2563932d84af87f1e0592af1ae567"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.2/cymbal_v0.8.2_linux_x86_64.tar.gz"
      sha256 "4b729f616207e5bf75e9a58f94d85e01791d2d2adb2e4cfb08c88e37d85df44f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.2/cymbal_v0.8.2_linux_arm64.tar.gz"
      sha256 "8a8374b6f245deb950eebb8b3c54af8f52024d2cc2ff055ceb9010d5468eb0ac"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
