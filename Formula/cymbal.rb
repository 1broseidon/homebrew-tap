# typed: false
# frozen_string_literal: true

class Cymbal < Formula
  desc "Fast, language-agnostic code indexer and symbol navigator powered by tree-sitter"
  homepage "https://github.com/1broseidon/cymbal"
  version "0.11.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.8/cymbal_v0.11.8_darwin_arm64.tar.gz"
      sha256 "ce38347cc138cc6208df2058569b065a37327b914f62bebc9a63a13b084a994f"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.8/cymbal_v0.11.8_darwin_x86_64.tar.gz"
      sha256 "bb998bbfb715941a3eedeaa10685262ab8f9c9ff196200fb7d72737e58ecbf1c"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.8/cymbal_v0.11.8_linux_x86_64.tar.gz"
      sha256 "10def98abeca64a71aaa6a5a3b38d32db5b381dd2e9cfba1a8c1f0730be0807f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/cymbal/releases/download/v0.11.8/cymbal_v0.11.8_linux_arm64.tar.gz"
      sha256 "fdbc0bddcb809f208b7e5e1a0ebf761731636e10541cb0a9aa84a15ad04aaf53"
    end

    define_method(:install) do
      bin.install "cymbal"
    end
  end
end
