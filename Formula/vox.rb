class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.12"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "246334a05b2126c86ae9adfb00402dc71a22cda9cd43edd59b2644d997823ce3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "63be5bd51c20f8bf3416435cec9daf5ca75fb2e31e27529ffcde6d1e340eb3ef"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "3f87b69cf03be49bbcdc98bfeb83e71ef8f852cad4e085348c0fc0aec760e862"
    sha256 cellar: :any_skip_relocation, tahoe:          "ff881209d59cc2a73c07fe962d88be56f3183abb89a5044ceb2b9a17efdc154d"
    sha256 cellar: :any_skip_relocation, sequoia:        "aaf0a4ff3312c20ab21a9621b0b8daa3a22cc90b2640146ce41fba6c502446e2"
    sha256 cellar: :any_skip_relocation, sonoma:         "85b50e54f7ad67a36c42700a2a44c7c8fa18bba7177bfacdaa647d5ef5e59a91"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.12/vox-v0.1.0-beta.12-darwin-arm64.tar.gz"
      sha256 "e3599607599a45db663762262ebe2e69e59444bf924bc9f40593fdcb237c1e1f"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.12/vox-v0.1.0-beta.12-darwin-x64.tar.gz"
      sha256 "d9eddf3730eddf84f289caf32ec481fe759bc01b864ad2eaa16ea7978ce34a5a"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
