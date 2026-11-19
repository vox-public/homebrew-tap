class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.50"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "d8dd0d0d4098a7841523bcd76eea4176c6a311bf7c06ae93182b40d862efb744"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "a0d6ec97fce977f335c1d249409b8df5b86cc25159de99c02f9d5a672c37f77e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "408bdedcc6eee085c933f568152465fe8d09ee7c961a8ed97f710c39b22dbefb"
    sha256 cellar: :any_skip_relocation, tahoe:          "9de589b12bf0a986eabd16c50ae81a96e3ddd7318532f323f608b5471280a19d"
    sha256 cellar: :any_skip_relocation, sequoia:        "5fd4fab69afabbbbe527582605cbb15712a8b2f70870efdb61160fe6104be344"
    sha256 cellar: :any_skip_relocation, sonoma:         "0e00bdf36ffd4d10c8d0c74cf2c445b12d84c9d803ce39c2bce08542c334dcf4"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.50/vox-v0.1.0-beta.50-darwin-arm64.tar.gz"
      sha256 "b1ab52e162ca76d3b4ed1b242fda17b5cc194fa35620addf0d4d4ff607b9de28"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.50/vox-v0.1.0-beta.50-darwin-x64.tar.gz"
      sha256 "a31364bc900a67068cfa4679efec657700e5d9f798b3704e54630a6564d63678"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
