class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.25"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "dab0a866c95b08e71d24d8bbcd3a90d3b1a2cb3d3c742b4252b8ff2d5c09a698"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "08dbc3399581c0200a488c8569ea08bcbdde8aa02b9432c6f30d5742efd4a608"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "79846774d01ac756a6192a7341804c4d1d39c8129bfcc7783c8b5e6ef714ff11"
    sha256 cellar: :any_skip_relocation, tahoe:          "16c0cfba84c221de23b1e72faa9407aeffe1091f91e61cbe64e8d0a25cc89d6b"
    sha256 cellar: :any_skip_relocation, sequoia:        "a26e04afd4f23ecc5571dbb1327ece4a4d58f62afcc7248a1f361eb5016fce21"
    sha256 cellar: :any_skip_relocation, sonoma:         "868753437f5b72795f41df2723f968e58b6d030a4454ca9347b0980303f9b583"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.25/vox-v0.1.0-beta.25-darwin-arm64.tar.gz"
      sha256 "2dc222383aa848e3efcebb55551ce7dab5136687d52b39feef1a363264857d14"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.25/vox-v0.1.0-beta.25-darwin-x64.tar.gz"
      sha256 "ca4f6a71572f285f1553479e431176ee8358a031f18195aa7aaa724ba6adc108"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
