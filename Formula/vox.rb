class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "702e0c721e4f0d396764419291715f0002edafe5dd84616a78c3c48a45ab4ea5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "22e7b5886f5f47801bf44bf637382d00ec5f57bf67a5e49db531d64fb9dd3ce9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "9a544d0ae65cc6b19238b9f12b686ca5d321b6c44e1b0cc11a6d9b7ad27ad2a1"
    sha256 cellar: :any_skip_relocation, tahoe:          "c3e5b5c9d05db0a371a9103ff25f3ccca70418f1b0fe7d5507fe98bc429c50dd"
    sha256 cellar: :any_skip_relocation, sequoia:        "9a5fc2e82e3f76e67d2e62de51e3b06f516fc9dd61fafee96b541a6884221783"
    sha256 cellar: :any_skip_relocation, sonoma:         "93dbe8b2e210725d0d0fab63a9559b5c68852c63c1f15858b42cb1cc46332fda"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.6/vox-v0.1.0-beta.6-darwin-arm64.tar.gz"
      sha256 "5c6244ff4f37f0f4c936f0b2f7c4a25fdd8df36738e7fdeaa437c3393705f29b"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.6/vox-v0.1.0-beta.6-darwin-x64.tar.gz"
      sha256 "1fa017739589e6b0e555454e12b288a9c6ad49badcc05847c4796972f4b4d565"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
