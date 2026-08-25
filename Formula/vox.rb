class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.31"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "5433cf156fec822d3b7502f492f998ff6ef127241378ac748a883acbb5036a5e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "3dfbf80601aab38f0cacfa81efab3c05dd7f8e8cbe5acd26576292ad668c254a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "5d802d1372a8d3a39c9b968b3e13b13e607044fe9d377ab35c3d3beef163ec57"
    sha256 cellar: :any_skip_relocation, tahoe:          "534b78968e733c5ed71541991fd7616dd945f2ee0c669c389de4d0131a3d079d"
    sha256 cellar: :any_skip_relocation, sequoia:        "9f00a6dd6885efb2b1d82927118dc72c43da1a8bb7b9cf2b8af0c63c874eda2e"
    sha256 cellar: :any_skip_relocation, sonoma:         "ded516ee890d47d6cd442cdaaeb680e77f257caa5334d6140e74f1b41b07e412"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.31/vox-v0.1.0-beta.31-darwin-arm64.tar.gz"
      sha256 "2316159920d1e55cb3c6a69a46f3c9a3bbfbd6e522ab95439b99d4a3d0278088"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.31/vox-v0.1.0-beta.31-darwin-x64.tar.gz"
      sha256 "1608c3c384937dc5975277c1815e798ab93cf137bb029eba3cb329c297be378c"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
