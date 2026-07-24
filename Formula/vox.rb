class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.14"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "1b38242ec0c33051dba34ebb68336425896af7d501a6c5a32e5e66d2304ae31a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "cdd34aea7eabcb9c31a17cb1e298e80556dc6f7500472d7556d0263812c17993"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "3ae665650c922472211a8095f9c73a678de552b65389185a14810fd9c9dd99c0"
    sha256 cellar: :any_skip_relocation, tahoe:          "c91164bd92908e5955a5bfda225afa0da2e4c8bb45bfb36624175038f6237207"
    sha256 cellar: :any_skip_relocation, sequoia:        "ed168f2a2029abd7af03196840c88268d103b0a41b6b82afbf6a1e35ec88cf32"
    sha256 cellar: :any_skip_relocation, sonoma:         "aee80962602f84dd44a9c52443b6c2f1eb831d29afb31c65716b6c0ad9e3559c"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.14/vox-v0.1.0-beta.14-darwin-arm64.tar.gz"
      sha256 "3a4572c324982324cea9a3f076b96bac09e38d6a45cba97dadbf1a294bf57c80"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.14/vox-v0.1.0-beta.14-darwin-x64.tar.gz"
      sha256 "744a7d2bb15464bef9412622b19f670b5f268d5e0d9102512ff791cc2bdf22e2"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
