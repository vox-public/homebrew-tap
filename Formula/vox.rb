class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "960952d2fcb65b96b69790b8262b6ded2ef37af133600d11533bcc82e8bbaee0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "d1575cd078bd18a7317746cdb604773eb1aee21fea0a898f31baabc8a82b1b87"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "287633394aec2f4c65a1e4dca3d37a240f6906afe0ca394f94c35f353fa7f53d"
    sha256 cellar: :any_skip_relocation, tahoe:          "7c2330754fdc0dd460561e437bba45f942b2fbbe8750e3325e7011ff4b83345c"
    sha256 cellar: :any_skip_relocation, sequoia:        "d7a3bf072e0080cc36b90d6f62e54879e3f1339e6ba8920ddcbfd83577de10cc"
    sha256 cellar: :any_skip_relocation, sonoma:         "f2c978aaf653308aeb4fe0eb700d54aa78c50eb782b679fedd631dd08270f16d"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.8/vox-v0.1.0-beta.8-darwin-arm64.tar.gz"
      sha256 "b6204b71f86cba1cf02f6d20319362ebe893ddce35a448ee9babbf96efeb5973"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.8/vox-v0.1.0-beta.8-darwin-x64.tar.gz"
      sha256 "c2892c5f08c3b394599e8d3ee166406b74fe4087f7cbc3f0c7f93176f63985e8"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
