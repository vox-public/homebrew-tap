class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.42"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "d27464ac2ccc086495a799ce88fa72df0fd24e9b599c455d76b1e9bdaa3f4953"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "f3bb9ffca422164864649a8f2fadbf674427fb2a61a79b27387da63c78f3a1a6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "bad0c8abfa2ad1e65fa42e4dd677c009abddee7923d4a6a3dba7a29a6aed829a"
    sha256 cellar: :any_skip_relocation, tahoe:          "3f0f1684801305e2274b37fec360d2eb96ba65fadf56eb7a6f15f6ded6165199"
    sha256 cellar: :any_skip_relocation, sequoia:        "442428157ea3279cb037f240b8a9658157e7d7fefafc38f5cf65ed9b7802c03c"
    sha256 cellar: :any_skip_relocation, sonoma:         "7335151be85105267f73c98ea137768ab980949d3d4a1433f91117fb879c609d"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.42/vox-v0.1.0-beta.42-darwin-arm64.tar.gz"
      sha256 "0a7d9052c6d1573acc7c1f4099021c2ee1af423f279a73f2e07fad1580192d60"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.42/vox-v0.1.0-beta.42-darwin-x64.tar.gz"
      sha256 "7f6f346b49fbdd89ff1be0f7c90d4fd102db509af5b81f21372931393477202e"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
