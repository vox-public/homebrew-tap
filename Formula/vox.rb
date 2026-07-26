class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.16"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "d45fa5e3a428dc6c8a804b3bc30fc93f7366767c8d14f22da8af8695c3088d88"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "90554198c1cb26c33c8da5d199878133d41be559c07bb13cf88bd2a9d1333bd1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e3a24dc77222fdabe1ff8b7b4bfe7c0f0ab6ec8cb687709992ff7ec2f88ae5e9"
    sha256 cellar: :any_skip_relocation, tahoe:          "b91682b40c481d52beb5caa7bd37e826d1dca5833ec437e9ddcafa3a895abcd3"
    sha256 cellar: :any_skip_relocation, sequoia:        "4df432548e7e544333098d92b462fd5aba40470d79e29b1b09d9f3f33d3d6324"
    sha256 cellar: :any_skip_relocation, sonoma:         "d24a31a46c55bed0dfbe9fa129d7ab0412c849cd838533a61d254c1cc010d8f2"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.16/vox-v0.1.0-beta.16-darwin-arm64.tar.gz"
      sha256 "7191c6ec44e8444f17830615c97d13dfa4963a8890a4cecb5c91418daeda0161"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.16/vox-v0.1.0-beta.16-darwin-x64.tar.gz"
      sha256 "a0f4877b66440a3689b3a5375abe0aa1cda4bee1d41bc1f78aa910951074cb05"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
