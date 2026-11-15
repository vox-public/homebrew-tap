class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.49"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "1fa4cd8ee6495c6db974e42584d4f630afcb951d91906aff81036ff387a71b8f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "7e293184c8da69f658dbd30d79f531dedf2bfe77cd5752292e4488341cf8d2cc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "5285d6baed622633c6dce7f6dd67949b93a76cc17e64ae75ae9498b8e15dfbd6"
    sha256 cellar: :any_skip_relocation, tahoe:          "69a4de972cd98c8ed5fcd9505376170642c61f72e95c83b7afe1e8b59b68a3e3"
    sha256 cellar: :any_skip_relocation, sequoia:        "bbbe717a7392382f98b9d3f28cd77fc18adac34bcbc9e26f00e460b47deebb5f"
    sha256 cellar: :any_skip_relocation, sonoma:         "2db849ef586b7897aff2c729c30d03f21b4e03c3c94f1ca4a26fc374edc340ef"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.49/vox-v0.1.0-beta.49-darwin-arm64.tar.gz"
      sha256 "257f866838b91ff720010c7e138b1bbcf3775b131d5a709e2af571ccaab9759c"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.49/vox-v0.1.0-beta.49-darwin-x64.tar.gz"
      sha256 "b998b250b12dbb10b70674bbba44e89a16dd8231672b8c7b31f5a6ff2e30ab86"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
