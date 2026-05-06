# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.1/cymbal_v0.13.1_darwin_arm64.tar.gz"
      sha256 "ef5d14313516cad30bce9c205f79c4da287c3cbd05c96643319be38700f008b8"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.1/cymbal_v0.13.1_darwin_x86_64.tar.gz"
      sha256 "31da4d242a0a4c49b91712af708344ef535b4d55e0f45be5bde31fd110a38088"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.1/cymbal_v0.13.1_linux_x86_64.tar.gz"
      sha256 "bac458dc02b81ab789b00cfb9bdec41b08ad3864c96a3e7b79a5f7416ac7ce1d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.1/cymbal_v0.13.1_linux_arm64.tar.gz"
      sha256 "12d3b4de9531dc1c9bdfaecfcc2dd9a9194fc6e243b2b26e1dbc8f3a69c32584"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
