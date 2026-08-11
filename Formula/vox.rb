class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.26"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "e1befdbb1299bdfdf1053a9b074e86514a338542599fef4d3b25338ece139012"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "0aa220b4c22c71804c3976926bab0a80d80bd8cbad955fadcf0ec1bb02217a2b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "138ecc3c2a89dbf8cf5175306504df86b2f7bb7db0f7922ccfe5a7d465ccd31f"
    sha256 cellar: :any_skip_relocation, tahoe:          "45df38bdb295686325c819090a8d0a2eed93cac30a05a2bcdb5098672b8fd096"
    sha256 cellar: :any_skip_relocation, sequoia:        "fd412f603106cf8c5dc2f4d23d5ab32bf16e1894d1b852ef51fe0344e726e98e"
    sha256 cellar: :any_skip_relocation, sonoma:         "028161d99697b5aa507f47c7d17f78e365c8b24e71c296a596d0983ccfc62d11"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.26/vox-v0.1.0-beta.26-darwin-arm64.tar.gz"
      sha256 "dc61ed98c52cac652014a1985a1e0a6f436ae4be2d5dc62360a9ee3cc2afa21a"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.26/vox-v0.1.0-beta.26-darwin-x64.tar.gz"
      sha256 "6f14ef37153525e526d25a67ddbf6b05aac03fab56d385e7a605e1cea20df2d7"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
