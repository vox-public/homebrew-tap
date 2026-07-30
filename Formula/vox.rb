class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.19"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "454992ff701d689d3d60b6dc5953d5e5470bd5eaf6d96c39bdaa6d494ae2372d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "4a4c2fc392704bf2e8e9bf6f1bdb5ef50c82f6d8246a40de040d2fd6b3e70ea3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "df610ee6aa908f6238332aad08f0f0a77130004481ae2c6748287ae89a2c38a8"
    sha256 cellar: :any_skip_relocation, tahoe:          "7a6562aa39cc271a35c1b3d512b297067327babd5171439950bb15d7bee023b2"
    sha256 cellar: :any_skip_relocation, sequoia:        "bda81e823032f067217e579b9d3309cb466f78e1b343dfb24f04cd20ff506677"
    sha256 cellar: :any_skip_relocation, sonoma:         "9d3dafc3725158ffdb9c4f55504c0f90a6a04e7628c09e18a78cb9d8a27e274c"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.19/vox-v0.1.0-beta.19-darwin-arm64.tar.gz"
      sha256 "4725aae923d041faa1c54a3917bc7f93a57e6592844801d7f7e59af6b068014d"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.19/vox-v0.1.0-beta.19-darwin-x64.tar.gz"
      sha256 "04bb2186454de307e79606641c27214bbeafcd85baf9a94c691cde131295ee62"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
