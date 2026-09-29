class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.36"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "ca075b4e04803bd6085420c59ff639ba70bb70e15ff5c8e9fff3b374e1ca7652"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "2649acbab2929f9f288f2c3f12f6d2c64c8a041946c695500ab03f4a3b8304e7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "b30242a29e9befd17b67965716aa93fc10451731027e38944dbd075afaee58e1"
    sha256 cellar: :any_skip_relocation, tahoe:          "76aabe3fa098fa791a27a8bf0b26de92670b696adca5b6d1d05d087a033ec03a"
    sha256 cellar: :any_skip_relocation, sequoia:        "4c3e338044cfdf0a8518a5b87ef3dfe62be25e40cdace1dd576493650f318d5c"
    sha256 cellar: :any_skip_relocation, sonoma:         "3cad16cd3f7e9903b206af7704b5cdf476ea445a690088d8e6514db2f7dec8d1"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.36/vox-v0.1.0-beta.36-darwin-arm64.tar.gz"
      sha256 "7fa60d351c5cf54ac155922a100226fcc7e2edaf98e10c72040da8ddcdbc19ec"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.36/vox-v0.1.0-beta.36-darwin-x64.tar.gz"
      sha256 "0f9ea7a5c5a356a4227a3ddb5ed717832e0e51f442d260bf9d3a7d0e2c92e775"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
