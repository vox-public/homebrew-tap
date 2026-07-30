class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.18"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "0a2ce3095a7a9abaa98b0350da82ac622949d870e9f97aa78eea3a9b2a165d86"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "486720aa85e7744a19fbe006a7cddc94aa79048ceb98eb0d8eef6b1b5063d6be"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "9f0a38561a38375328b9534b0240b537d0fa9251fb7ffb55801bfd6e8ddaabf7"
    sha256 cellar: :any_skip_relocation, tahoe:          "5f83e6159840f2b1cff28ecc679a3fdc649c5374b34d195debc115bc733eb7ba"
    sha256 cellar: :any_skip_relocation, sequoia:        "da9b4659d40970b46b3811537a2fb136e03f9d600bf859162f46d87c29a09c8e"
    sha256 cellar: :any_skip_relocation, sonoma:         "e4c8f3aaac1ab51d156d44462614d1d778944778998a26275491526eef1af3ba"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.18/vox-v0.1.0-beta.18-darwin-arm64.tar.gz"
      sha256 "e5fb8e18f3485926aca7e009c8d94d1fe516937495a27b349db863bd477daf01"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.18/vox-v0.1.0-beta.18-darwin-x64.tar.gz"
      sha256 "1f1fd73d6fa06371e781f60f13728f5fe21ffd559e79a180db97f05bd18f3012"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
