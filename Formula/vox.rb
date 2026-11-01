class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.45"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "1558ec730ebe9a69a884f434cecba394ae98ad9b03a67c4a5c365e75f3ba95c3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "920e25a09e5531dc09d416ab19e24205bdf27df96e80e81db55ac8caeae4eb20"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "78c7a18446eac57968e2ca14e78193de2193133b7c70f016893c47d30e07279b"
    sha256 cellar: :any_skip_relocation, tahoe:          "efa8bf9bb3116801641f122e50a316fa553b98e08da5d38ddb83fea21ec798ef"
    sha256 cellar: :any_skip_relocation, sequoia:        "d84fc542c85f596747a1006107676fbaf2fa8afbb84d2e14d9bb40f04cbe00bd"
    sha256 cellar: :any_skip_relocation, sonoma:         "842b027b9ea9311a51f7b3bc31e0775046cca9f00fcbdbafa76d28fa30f04073"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.45/vox-v0.1.0-beta.45-darwin-arm64.tar.gz"
      sha256 "0f6847cf40939876f77f122b51e1502a51fb3d50c59a04d5fcf0bd55886c9be4"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.45/vox-v0.1.0-beta.45-darwin-x64.tar.gz"
      sha256 "9c598b1167f80cd54a88dc21a3f783d4a940b11e7c5432dd6194d7bf1243c315"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
