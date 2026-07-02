class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.11"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "05f3d3e367aedfc8aa408a7f6605509c4d931d2aabe226bed4e0b2d7a70fe915"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "0b74928b209674c083bb5491387e009fd9477acd4277e3a83abdf27a602a3e92"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "f3472f2bf4afddf37b462d73a2947cf2875434a35c6db089ad282f6601a8dabc"
    sha256 cellar: :any_skip_relocation, tahoe:          "e8744cdeb7f9cd22614d620c1c0d2721bbc3965ab29e8f137e5fc17e234518e3"
    sha256 cellar: :any_skip_relocation, sequoia:        "7caaa796293b78d5dbaad041a28c544a5299571f1a40073cf0c1e40ae60a1e28"
    sha256 cellar: :any_skip_relocation, sonoma:         "4f122833fbfc3c3b1cf76c05a867d9207dfcfb08f04f3ec39f30b948f93be164"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.11/vox-v0.1.0-beta.11-darwin-arm64.tar.gz"
      sha256 "6e7d6ffac8bbc851a1e29815af3765812124d06123a89e4d9183a97595f21f1a"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.11/vox-v0.1.0-beta.11-darwin-x64.tar.gz"
      sha256 "9faa857c53f95a9ea2f122c4c101e647d88c48c3c3c870cf66ec60931cadf920"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
