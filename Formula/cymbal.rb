# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.3/cymbal_v0.11.3_darwin_arm64.tar.gz"
      sha256 "c94d8c855e25939d4301704613ab060384f9f2b2e6fadeb7b4ec574c9c22ef63"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.3/cymbal_v0.11.3_darwin_x86_64.tar.gz"
      sha256 "37ac03d57ccb9f9081da1090afa3533d5f21ecf4aeb3c3b6b4c0963245c3019b"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.3/cymbal_v0.11.3_linux_x86_64.tar.gz"
      sha256 "19ce98081d26d225d04a519bdeb9bac89fdae01aeb8416958d22d703bf80f4b3"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.3/cymbal_v0.11.3_linux_arm64.tar.gz"
      sha256 "09c368478a69d8a38667562b6c4391b805f5ff3dc44cd74a5f97a0bd3cb5ab15"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
