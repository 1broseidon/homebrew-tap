# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.4/cymbal_v0.8.4_darwin_arm64.tar.gz"
      sha256 "87ab0cf27e68ba34e844c2b5202c4462ea26a8e718bf8a0264bb02a4877f2f82"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.4/cymbal_v0.8.4_darwin_x86_64.tar.gz"
      sha256 "40939227bf45d43657c4d25bcaffdfa58a5f9b82def7e4416bcee1fa77cb4f44"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.4/cymbal_v0.8.4_linux_x86_64.tar.gz"
      sha256 "da416717fb55a4fec0d6545ce8430b67829d1d8a93167196ea9fa484aacad580"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.4/cymbal_v0.8.4_linux_arm64.tar.gz"
      sha256 "900d3b6a0be908ebd89e0391dd673138c4c1ea87899d93580562db64a85cfcfd"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
