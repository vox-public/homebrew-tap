class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "1183a0b5a28b734b8c011f9a2e0e707ccceaed515691381bdb48bd3e095cd4b6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "91bed4941cf37cae3f53f60c417cc087f684c290da8e21b381751b19fab45b10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "38cac5ba4bb54d4e304401a006f7b1bc46370e772996e2c875a44ebfdcdcec54"
    sha256 cellar: :any_skip_relocation, tahoe:          "ca32bac10127ea5862e13c90f919341572682c6c1be2e64535d1a0274c978a2f"
    sha256 cellar: :any_skip_relocation, sequoia:        "336cf697a1d24fed619be6695c7969afa3a0e16521d5ed9e925de1802895810d"
    sha256 cellar: :any_skip_relocation, sonoma:         "3a7c3012f40b6a4f8034ef8b7e4af55a3026ff9164a92cddd06a0829cdabbd37"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.5/vox-v0.1.0-beta.5-darwin-arm64.tar.gz"
      sha256 "c96df9fcba7ec41493f9f68cb725516eb8ae327266b9905bdb6a170878a4eb5e"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.5/vox-v0.1.0-beta.5-darwin-x64.tar.gz"
      sha256 "e3c46a5e6f59120e91fd9d8b12560791e27d9225134e73ad439f9cba5536db37"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
