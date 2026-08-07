class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.22"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "4e6de62e82645bf42a0398f0aedd8da4fe42a650121d51585742270d3788231c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "416e8391952c823557a2be39fa82c0f560a35bdf19f9ae84dc067439c3b03012"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "abe2d13efdd88d8b5e55d2a62f816c6acaacbb4f2648c73b64676f1d3806d871"
    sha256 cellar: :any_skip_relocation, tahoe:          "01e6865e0431ec02499987613ba206143a56ed3aba95f56519df8854259fde7e"
    sha256 cellar: :any_skip_relocation, sequoia:        "ddbb08a6d88bc81a0554970623ca8a447918f53645c165677fd60d7f9009800f"
    sha256 cellar: :any_skip_relocation, sonoma:         "c1d71de7475e160f9391ef8d6f8d1c48c625ae2256bcab31e33ab4a5e5a71178"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.22/vox-v0.1.0-beta.22-darwin-arm64.tar.gz"
      sha256 "f2c7db6638112b2451e5321e2574be94aa32ddfdeddf45e346c95e76c2d33a17"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.22/vox-v0.1.0-beta.22-darwin-x64.tar.gz"
      sha256 "aeac8d9f5def6b23ca91a5b015c94729818a040de1bb2eb189704cc52e6c5ef4"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
