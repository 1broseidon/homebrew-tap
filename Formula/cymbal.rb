# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.13.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.5/cymbal_v0.13.5_darwin_arm64.tar.gz"
      sha256 "dbba9ac9aa10d9d94082d210a67c8649ab3bced8f86fb27c2c2fb8ac524ccd73"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.5/cymbal_v0.13.5_darwin_x86_64.tar.gz"
      sha256 "a7cb49bf69048514387f9755252cb6986fda8af8c887759579591e8a06d3c720"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.5/cymbal_v0.13.5_linux_x86_64.tar.gz"
      sha256 "126b72d1ad08cbe3c172cee765cceb53f50b50c6cfceb603697f7468e3231025"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.5/cymbal_v0.13.5_linux_arm64.tar.gz"
      sha256 "d4e8d1ef9f09b5d2355c0e12c9282be02fbfec9432eadba330e1cfa2c63768be"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
