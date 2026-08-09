class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.24"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "7e30b0ebb9b24cd844e83be1da8409181eb1b8621fee8e4cf6638bb4ff83db45"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "41c1cb35e1cf9876df0680adae0cbd2fdbd60d91cbd0c0c4fb999073a989849e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "fcf61eea3bc77153c026b381b8b107ac145407b03578a50953e4e8333a0a63d7"
    sha256 cellar: :any_skip_relocation, tahoe:          "26a122011bfdbda168b36acc8e22776d6a538717d8473eddbc477e23dc452f3a"
    sha256 cellar: :any_skip_relocation, sequoia:        "51c050c7b48825dfab0722b68644fd0e2279bcfb9e50c4a4d99eeb7c689d3526"
    sha256 cellar: :any_skip_relocation, sonoma:         "9ee8c53c7e97284305b8924bb6cd584d60d999812e776389a6cb3f54383a91f8"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.24/vox-v0.1.0-beta.24-darwin-arm64.tar.gz"
      sha256 "8bf0ed1737d43ebc23886b242fe94f253c95cb4435ca138d2d1123c57249c095"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.24/vox-v0.1.0-beta.24-darwin-x64.tar.gz"
      sha256 "8863dcbdbdcce74e03fc82614555d517935d46e3ac0019fe454f5a1bb1e0fdd6"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
