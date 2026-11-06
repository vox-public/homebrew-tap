class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.48"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "a40266b42ee481c13e9ab0faede0281899b9fbb3b72078b67bb2706b11b3aa4c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "f00c76695bc9728e2655176d816943f9e0f0d29809907e90a03850d633675d79"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "5834ced67f9c0d6db7786815a15239502332d861b38caabf7dff3dca829493d2"
    sha256 cellar: :any_skip_relocation, tahoe:          "75819e3b2314877fe8ea27998ff275fdda2b9535562a72985802f68a63fff4af"
    sha256 cellar: :any_skip_relocation, sequoia:        "8531b3f55ad4774ee079f9006dd7897d11070288559709a0e89c615283a354fd"
    sha256 cellar: :any_skip_relocation, sonoma:         "0e4fcde0e67b219d0618a801c58e069d72821db56daee64b982f9978a29aa14e"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.48/vox-v0.1.0-beta.48-darwin-arm64.tar.gz"
      sha256 "4b91b977f409ec35e57c07716d102c0fc868c549adb82211db6cdf01367f54c3"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.48/vox-v0.1.0-beta.48-darwin-x64.tar.gz"
      sha256 "2c211b484e0baa64950b3ebe2bbd3337680686b8fe6baa7083f9390a2080d7cb"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
