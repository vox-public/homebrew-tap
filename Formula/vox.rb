class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.21"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "8cfc040b409b7514414744ecf3fe16e4a40cef7d16d1da57ab608206b1a9d772"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "15c1e14f6afb480efa2650ee1e441fa566afdc7b1494597d7353245120fc127e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e35ad3194b7126902ccd9369eaa2687256bac6556379a991fd528f672df4d755"
    sha256 cellar: :any_skip_relocation, tahoe:          "07e15b2d8326c6377436333685313170fc15fc0b920158489920ba36bb004d0f"
    sha256 cellar: :any_skip_relocation, sequoia:        "c6192099473d10ce12c3cff758d7957e42545c9abd50690553b4dd2454b9f95a"
    sha256 cellar: :any_skip_relocation, sonoma:         "683478f34da72e86d51f0769d8d2f1d149ab6cd48d99b855888698c8c7b1f130"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.21/vox-v0.1.0-beta.21-darwin-arm64.tar.gz"
      sha256 "e63bbc4a01285657b6f41ae7c1cba1a09d3a0ea6df011f61723a78104b28d599"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.21/vox-v0.1.0-beta.21-darwin-x64.tar.gz"
      sha256 "9279608bf95735c40165b56cbed90790dabedbcb46d8acfb66afe2b999f47179"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
