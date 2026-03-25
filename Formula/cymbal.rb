# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.1/cymbal_v0.5.1_darwin_arm64.tar.gz"
      sha256 "0c9a48e660d489236e8ae28ab64e4ffd4cbf0782473be482fc22a19b28485643"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.1/cymbal_v0.5.1_linux_x86_64.tar.gz"
      sha256 "adce90c8820007449c6b0e0361acbe8e78ebd82bf0d77a21f5245236a8871e81"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.5.1/cymbal_v0.5.1_linux_arm64.tar.gz"
      sha256 "d0ff4d256de24f1f71ea48536c565796279e71b92dd25ee23d2a145632001cb6"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
