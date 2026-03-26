# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.6.0/cymbal_v0.6.0_darwin_arm64.tar.gz"
      sha256 "6d13e1d034bb3f82870a79a59ac939dd6342cce43fb8d6fe772b7b689bdffd33"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.6.0/cymbal_v0.6.0_linux_x86_64.tar.gz"
      sha256 "9c0fbb1d3e83e4bcaede0076c455da3b938bdcd1714535b3d49c854b090011ce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.6.0/cymbal_v0.6.0_linux_arm64.tar.gz"
      sha256 "c3e3b9eef8c22b1c82faeefacb0dcff825061700a4e4c370eaac727e9923623f"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
