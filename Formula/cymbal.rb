# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.1/cymbal_v0.10.1_darwin_arm64.tar.gz"
      sha256 "e948d910355fb46388b26ac89a3d4e5c751bd85eb16702d170ecfa84c82f1618"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.1/cymbal_v0.10.1_darwin_x86_64.tar.gz"
      sha256 "b7ee9940d83920c8c2c42c24c0efdaef4b5c182427d785c0e5ed3b8a295fec7f"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.1/cymbal_v0.10.1_linux_x86_64.tar.gz"
      sha256 "d01d5268e15191261ec36dce21488363d09cab0e5e4abd25ee6248d8869d5e3e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.10.1/cymbal_v0.10.1_linux_arm64.tar.gz"
      sha256 "dfd50db1b5b2e6f6450409dd87345f4a2bfcd26d79ee2e977807f1498da13d56"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
