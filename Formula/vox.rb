class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.27"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "04ecd9ceb878993c7a4390fc58e682e1bd5e561f93a40d4565268d7b087deefc"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "82c941bd55200e1cf2a29e732d5c07394b47bccd92127656b9c18013e55312f9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "4691bb8a95045e03b992e0caeaf1d5cd37eb44011eae1b2ced0e5d831674c715"
    sha256 cellar: :any_skip_relocation, tahoe:          "47ca4f9700fe845f27573b1f175aae3546c8bd45f9412c317039edf4afaf4aa0"
    sha256 cellar: :any_skip_relocation, sequoia:        "ddf5ff4cf4dd072b8a3ab180518daeaedb97500c9c1ebb5039b9db94cb4d8d87"
    sha256 cellar: :any_skip_relocation, sonoma:         "f119241b7c7afbe5b8ddb497729cd35944d06b5603e7a747b964ea4ada22c5f0"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.27/vox-v0.1.0-beta.27-darwin-arm64.tar.gz"
      sha256 "b8420b37faeef182e3ffb8344353f3d6a16e83579cbb9cc172979ea215719502"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.27/vox-v0.1.0-beta.27-darwin-x64.tar.gz"
      sha256 "035944c7db9587913f2a71a77e95e66bfc8c2e6d531bcf956e45ad24b7b41c8b"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
