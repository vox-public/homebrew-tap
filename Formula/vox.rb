class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.35"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "2527b978b804c51327604d160db6abc330a188cdbf18a565c7be02e08a99092b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "7ed431353241092de54816e5ae7258d90ce9484efe33286566219061c3812b0e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "eff43d5ca37c5b3f7e238e6d70dad7f174d533d0f746b250eed9b52fc8716562"
    sha256 cellar: :any_skip_relocation, tahoe:          "e19415cfe317565d6b33f9f3a48d5a6e6262fc69d471e7309019aabc2186397e"
    sha256 cellar: :any_skip_relocation, sequoia:        "acaf3b0a88be456324439662ed119c01ed283f7e85ae290294365da0ed39c957"
    sha256 cellar: :any_skip_relocation, sonoma:         "975325275658789cc5c0519de39ea5d464c40e8d9be812c4cf652cf7e063bb28"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.35/vox-v0.1.0-beta.35-darwin-arm64.tar.gz"
      sha256 "439d8c6c82a168bd76873da7008d14a196eb548352475d6f828ab219aed16f59"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.35/vox-v0.1.0-beta.35-darwin-x64.tar.gz"
      sha256 "d3b461714e4098f0e5ec365861c4eb41e7ec59792476525034b2f429ca14bc2b"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
