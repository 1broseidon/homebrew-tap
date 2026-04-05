# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.5/cymbal_v0.8.5_darwin_arm64.tar.gz"
      sha256 "54a2999fe41bc5e4050bfa70a53c0bdd52a3b7c051cdce3be03370fb69cd1de5"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.5/cymbal_v0.8.5_darwin_x86_64.tar.gz"
      sha256 "a1079b478a997c45a7baf270cff483991d354e82957f6fcc81aa38f004b04d54"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.5/cymbal_v0.8.5_linux_x86_64.tar.gz"
      sha256 "98f3532fce8aef489ad4b57c010ee488fde85fd2d0760dcdcc07cfea645bcd2e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.8.5/cymbal_v0.8.5_linux_arm64.tar.gz"
      sha256 "63bb11ec8bacfa8709f5a5dd3f00ff4c5381ae6c1bfff747fae4156d6a9dd2b3"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
