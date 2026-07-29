class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.17"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "6c9edb0536284eccae68f9a21bddd64d344d9a1eb916c798bab9435f15e47682"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "ab22edcffae9ba627e97ce8e7e719b026c1ede16521dc7e28e04e1b1a0c53cfd"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e15e0e2b75b4e315f764efbd8bba4a6f3a588e09f5076c9674c87fe41b01502c"
    sha256 cellar: :any_skip_relocation, tahoe:          "3a23fa43309a848f99d935e89cb44df683891af8ae2301fc059888fec522ada6"
    sha256 cellar: :any_skip_relocation, sequoia:        "691ee399bc7e7c5fb3e7fc8b626082db51ea610b5305383825d90b6d32f6f636"
    sha256 cellar: :any_skip_relocation, sonoma:         "98e5b701240a07b5fa504b65b2a3460da56cb436e92b2c75b9f9821ceabb8759"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.17/vox-v0.1.0-beta.17-darwin-arm64.tar.gz"
      sha256 "fdd21838dad2419ec76922acd87056e9d61a5828a9f1fe73dcb1dc1ee6eaf57d"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.17/vox-v0.1.0-beta.17-darwin-x64.tar.gz"
      sha256 "35d7be8aa121012bbaa49270e13ed3d9ff5965a2dce00d608e71c9c86bf3c531"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
