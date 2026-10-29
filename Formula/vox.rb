class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.44"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "6291b94d9099625bd65ebc6dd0636ac4768a0d40ea69c410e219bbc6d4a3668d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "b60024fc280d6d4e44d0ad9ee29c2c6789368ae2e0593b11bba23db656c80cdf"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "8b4402401d7c04c997caf5a942347c31c6ffa6482339b9408af38e29b4e04cc5"
    sha256 cellar: :any_skip_relocation, tahoe:          "e3bbfe595300a33344894a28327cfcbab2974b9afc6569ba3d3631ffe3bd3062"
    sha256 cellar: :any_skip_relocation, sequoia:        "193f0c3a5331ec14ac7c520e8caeb5f1d3bb616b379dd9d44db855960514c8af"
    sha256 cellar: :any_skip_relocation, sonoma:         "c84a2d69e20975fb02c4dcd3de2244afe9de49b94358e3cfc92ba06723a54b95"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.44/vox-v0.1.0-beta.44-darwin-arm64.tar.gz"
      sha256 "efdc860f7a6a7662b39df97e67371c71ba686f84e6d5e46b68f782d31cbd3426"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.44/vox-v0.1.0-beta.44-darwin-x64.tar.gz"
      sha256 "ba8281d4d8a8e23bc48c25af9dfc6c039e1ca3d4e49995c7f1f91a299b68ffad"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
