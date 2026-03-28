# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_darwin_arm64.tar.gz"
      sha256 "c7cfebe88e97d5a388648227df090a1cfdc18748dffb63d65371804cefcb2a90"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_linux_x86_64.tar.gz"
      sha256 "0c04f7bf7b1ccd54faf6cfcae605c60c6a52b32eff21accecaa5efb0ff96423f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.1/cymbal_v0.8.1_linux_arm64.tar.gz"
      sha256 "1746a1a53bb64f531966778fde589672ef625d8d4cf46c81857616a1c25b18b8"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
