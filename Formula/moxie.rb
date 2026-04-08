# typed: false
# frozen_string_literal: true

class Moxie < Formula
  desc "Chat agent service connecting Telegram, Slack, and Webex to AI coding agents"
  homepage "https://github.com/1broseidon/moxie"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/1broseidon/moxie/releases/download/v0.5.0/moxie_v0.5.0_darwin_arm64.tar.gz"
      sha256 "d8daef46c385c9f0827e1fb8a36255baae7151e2913fbf9b8a9a135c300dcba3"
    elsif Hardware::CPU.intel?
      url "https://github.com/1broseidon/moxie/releases/download/v0.5.0/moxie_v0.5.0_darwin_x86_64.tar.gz"
      sha256 "b1ecf1dc16f80802890875e1955770a093f87aba96f7e48c5ae5b2a8f5e94acf"
    end

    define_method(:install) do
      bin.install "moxie"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/moxie/releases/download/v0.5.0/moxie_v0.5.0_linux_x86_64.tar.gz"
      sha256 "5cff72fcfafd85256581527a6f7a86e2d7da456d10dfc47b9bd8bdf27a0e6162"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/1broseidon/moxie/releases/download/v0.5.0/moxie_v0.5.0_linux_arm64.tar.gz"
      sha256 "166a517f8b257ac76af8fbc39d77a83eb1151976bce677c9ab7f99e63e4c7293"
    end

    define_method(:install) do
      bin.install "moxie"
    end
  end
end
