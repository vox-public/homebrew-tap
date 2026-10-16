class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.41"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "6720c3c195c29ea5f9ad9fb05d1f8417e8e8d90f8457ecc65d655938215f82ab"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "b7b99d4dc1f45cd5226459c56af5f3d3a1e705abffaafeed2bf51d0d6d516a23"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "4b45344e1d0c5bc15d6405fc9ebcaca6534caf0a635b5dbcd6f20cf1d5e390c6"
    sha256 cellar: :any_skip_relocation, tahoe:          "f2a6546a5aac14e1cda22448c2da57bb4cc620e1ff8744b962a24760bbf1347b"
    sha256 cellar: :any_skip_relocation, sequoia:        "da0e1da7626e0d0d9cb1a4f261d58ed132f3c29e1c01099210d6e537b1b72e46"
    sha256 cellar: :any_skip_relocation, sonoma:         "24bdd9066720e1201c9736bfd14eb3e57b5464a20af95fc50967a04d92a563b2"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.41/vox-v0.1.0-beta.41-darwin-arm64.tar.gz"
      sha256 "34e53abe85f7a5bd4d5b08036123e42ba70dca0755e631800010fbf82d3d617e"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.41/vox-v0.1.0-beta.41-darwin-x64.tar.gz"
      sha256 "288078e17e37ba588327169b0b359b828145fea0c22a7231b4e61564eaafae76"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
