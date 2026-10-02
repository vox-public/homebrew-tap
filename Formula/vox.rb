class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.37"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "add2f37e1282674ba842b9bb987d5a299db11204f2f7bf8ed10d1ee09b02292a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "2721275a4841625f2c3147045d7af5cead8d1db966e34bea9d220e00bb1247f0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "dcf6e8b4fe0c7161935441f2ee4d0e87c8203b775eb8253266b5894b8722f037"
    sha256 cellar: :any_skip_relocation, tahoe:          "442e6e3dc4b28e86a52503bbb2b9d3f292dd75ae312bb9ff819f269e670a5b48"
    sha256 cellar: :any_skip_relocation, sequoia:        "1d581894b03d0acb77ca0fc550a1cc2764f46e06e3205c144969273c50556f31"
    sha256 cellar: :any_skip_relocation, sonoma:         "e3189c326f71036fa74b21ebbe6cc20fd70f0c27714139abba419dee9880187a"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.37/vox-v0.1.0-beta.37-darwin-arm64.tar.gz"
      sha256 "22a151e0fc36a19115ba2f6b186a88da5a08f5d16ad647f2b8112535f4335635"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.37/vox-v0.1.0-beta.37-darwin-x64.tar.gz"
      sha256 "a985c73c4b7ed3908bfd9dbdd750eb84258738aaed88720b1e61013454fbc79a"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
