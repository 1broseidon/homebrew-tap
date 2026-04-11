# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.1/cymbal_v0.9.1_darwin_arm64.tar.gz"
      sha256 "05811d06805b1ccd2802d67fb571cf0f11f9ee18ba9cab0b9cb58732db67ac76"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.1/cymbal_v0.9.1_darwin_x86_64.tar.gz"
      sha256 "d13fd40ac51047fb4bacf4a30ea642378342ef4afb890b1528ce216a1cb754d5"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.1/cymbal_v0.9.1_linux_x86_64.tar.gz"
      sha256 "ad654b9c4df7ae70ef6387e6f769cc48d494ab9745b58bef9bd8ad8d631ea929"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.9.1/cymbal_v0.9.1_linux_arm64.tar.gz"
      sha256 "e7c3cde38c9a09b0595d0f2c7924953292ad40f5c3edaa88177effb7a57024d6"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
