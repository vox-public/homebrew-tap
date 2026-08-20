class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.30"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "106ed12f06a2ec3e13bdca9ef970db90fe7849e9c8011eb27f8574d333e4593a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "3aa343fa52cc63286f0c272390dfda43d1011470f4af026fddefef97c17e8df0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "7e859b8f7261e411e853bb6c072bd91a9ef617311dc7be72a56bbd1f7c6013b3"
    sha256 cellar: :any_skip_relocation, tahoe:          "4d4127c3a48b43be12743d22e5f1df4f122d1504de73e71b835d2d18fdaa0c5c"
    sha256 cellar: :any_skip_relocation, sequoia:        "4bab0c045d3835c732ab60d4ec91022a75b9e635eab0304a0f3baf206ee455c2"
    sha256 cellar: :any_skip_relocation, sonoma:         "f8fc0d7c2e7dc42c7d1560c74c67e642ed008b72c71d78db776c93b8d6f1ebae"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.30/vox-v0.1.0-beta.30-darwin-arm64.tar.gz"
      sha256 "bd3584aa23f4d7233db55c1e49e6e6f28eacbc3dce898d0579c98a16b8385d22"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.30/vox-v0.1.0-beta.30-darwin-x64.tar.gz"
      sha256 "a3edb8830bbcf4210a4151e2d94fcd8c6b7086411189b6c64ca4de27a87cf93d"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
