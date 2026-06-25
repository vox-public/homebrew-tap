class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"
  depends_on "sox"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.2/vox-v0.1.0-beta.2-darwin-arm64.tar.gz"
      sha256 "311e3094af0b46fc2699544062c91dcc906b90d6f0484ea9d9a57d1facd4e9a9"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.2/vox-v0.1.0-beta.2-darwin-x64.tar.gz"
      sha256 "c2948a78a58b7433683024772c2a0b0935e407107aca234259b8f79e75db43af"
    end
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
