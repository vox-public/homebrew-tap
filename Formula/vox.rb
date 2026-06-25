class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "fc3122ccea4e65b87d03ba8c0b44497895324b608a663be819e4cbdeda28c99c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "6c75ad5c7b7f0a08550dbf672c929cb8364ea11ab2e3e3a2507b2e2c4627ceee"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "beee8de2d59c3214b109f24b73d512e3a78fe422e0c705955369e0da47e512d9"
    sha256 cellar: :any_skip_relocation, tahoe:          "cbabde7f06b75e8dacf16210b97ffcf2ee48e7c6032e4f73989ebfd47bdae23d"
    sha256 cellar: :any_skip_relocation, sequoia:        "99ce7674b8dccd805c581f41b1de826a5920ec87be0a0d80cf57ca288a652a0f"
    sha256 cellar: :any_skip_relocation, sonoma:         "bcd0de0ddbbba7e5b0e2757355e00585c14ef8b6cf3d7080feef1e97ec708e41"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.3/vox-v0.1.0-beta.3-darwin-arm64.tar.gz"
      sha256 "993ee90474c1738f98642cac9b66cd7dea2ae4acb0d6547abca277e28d4194f2"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.3/vox-v0.1.0-beta.3-darwin-x64.tar.gz"
      sha256 "dfd859dfc178ffe458610d47e49969219ece29f023963a082ae3ca800800732f"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
    system bin/"vox", "mcp", "--list-tools", "--json"
  end
end
