# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.3/cymbal_v0.13.3_darwin_arm64.tar.gz"
      sha256 "eb2d111e78fde67e529424a6d2334b78c0ccca45e109545d4d8fb69ed8727222"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.3/cymbal_v0.13.3_darwin_x86_64.tar.gz"
      sha256 "4a0066a0dd064743071e875de42f2fb1351e05c14a733a70657c88bf540e43ef"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.3/cymbal_v0.13.3_linux_x86_64.tar.gz"
      sha256 "cfad43b300618809953c0d83b7f3c97644237366b088e2a1ed78b84b1395ffba"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.13.3/cymbal_v0.13.3_linux_arm64.tar.gz"
      sha256 "40e8dda2a18bc1cd850372e4ed31bc7e754d892ec2f78ab91094453f4e42e11d"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
