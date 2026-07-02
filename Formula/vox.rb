class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.10"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "dd9ae35fcb92cc29f1f5368880bc5f03767c781e6c3c697f0f99cf55ff18487d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "c5bdf7d7b050ae3dae2baa0b84cb934c4a277fd0b5fb7edcd88d0a70092346fe"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "b269ea41036307b3c5dd4dea9ae584729586afeaafd58dcf3db9c09c83c3c752"
    sha256 cellar: :any_skip_relocation, tahoe:          "c1c794b7b2655fa4585e1eeebf6811b9ab912c291c04e0cf0719c9b3c8cb3305"
    sha256 cellar: :any_skip_relocation, sequoia:        "58175b219d9a5678131fd2259de2b785f2cd587e3b8017e286a62ed1ba3d1890"
    sha256 cellar: :any_skip_relocation, sonoma:         "d7b192b416e66730dde6025649d362a8294d44a40ae09aa93806ea49dcddd484"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.10/vox-v0.1.0-beta.10-darwin-arm64.tar.gz"
      sha256 "1f6e5ba2ce69bdb89478e0755d186c9148450ecf52b8f353239cf489b6759edb"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.10/vox-v0.1.0-beta.10-darwin-x64.tar.gz"
      sha256 "1b0835e5c1b119046e8b60899f44061a06116d2daa394cbb00cd3789f36e1c6c"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
