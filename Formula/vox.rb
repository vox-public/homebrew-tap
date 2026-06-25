class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.2/vox-v0.1.0-beta.2-darwin-arm64.tar.gz"
      sha256 "311e3094af0b46fc2699544062c91dcc906b90d6f0484ea9d9a57d1facd4e9a9"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.2/vox-v0.1.0-beta.2-darwin-x64.tar.gz"
      sha256 "c2948a78a58b7433683024772c2a0b0935e407107aca234259b8f79e75db43af"
    end
  end

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "ffcac5a685226f6c0af14fe407ad94005a9fccf7997b63045ae0d703704f27df"
    sha256 cellar: :any_skip_relocation, tahoe:         "12e5717650986730d71ac8a7d2fcac2aa8576fdba72e52565cbd9333aad4c141"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "09e265e21af8775778d0a929685713ad6ddbdeacf41f5c3401c90d839f41aa39"
    sha256 cellar: :any_skip_relocation, sequoia:       "75795b8f917c8d67e9f388dc8fb2151d4039e5820705c7e4ad46d36760a1f803"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "47147d1a17ff931982097521e5c84c0666981e150568358ff80ee12eb83282cf"
    sha256 cellar: :any_skip_relocation, sonoma:        "570f85dfce7313903a755d22cfba23df6df50945710bc6552530ee51c6c092e0"
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
    system bin/"vox", "mcp", "--list-tools", "--json"
    output = shell_output(
      "#{bin/"vox"} chat --agent smoke --voice --no-audio-output --json 2>&1",
      3,
    )
    assert_match "AUTH_REQUIRED", output
  end
end
