# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.2/cymbal_v0.11.2_darwin_arm64.tar.gz"
      sha256 "34b2c908173dbc2bbc635b9fef9e3b290f78939ccaf1be0048be52030ced1994"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.2/cymbal_v0.11.2_darwin_x86_64.tar.gz"
      sha256 "d4547b7853c2180c54a58648a1093362f465f32bfa585a732ca1f35f18c850d5"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.2/cymbal_v0.11.2_linux_x86_64.tar.gz"
      sha256 "2ee6a66cee53a8553d1eb6f6e7c0bc9a4d0ac5a75091236e004afcf2248ea17c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.2/cymbal_v0.11.2_linux_arm64.tar.gz"
      sha256 "ed0f7e37741ddcb7f4f1628fc62ad2811307de6bd3fcfc0e32dd62f765fb937a"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
