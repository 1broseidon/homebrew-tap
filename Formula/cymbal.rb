# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.17.0/cymbal_v0.17.0_darwin_arm64.tar.gz"
      sha256 "6cedb35c05346d03c4518bda6e2e62c4b33c33e7154a0d367cd05fe62869f73b"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.17.0/cymbal_v0.17.0_darwin_x86_64.tar.gz"
      sha256 "e170fbfcb0c2d35bf462f4b1cf7b0165dbf4bacc19dd5591f8ff3cf9af5fe7a3"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.17.0/cymbal_v0.17.0_linux_x86_64.tar.gz"
      sha256 "e1a5fc4f14a27cef49273dd0ef24ea63ce37f746a798614f26fc05a273e8473f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.17.0/cymbal_v0.17.0_linux_arm64.tar.gz"
      sha256 "6594c87f19ce044e64e3fe2ebfa761f9be479d4783286fe3e0453dedff2fb1c7"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
