class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.43"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "ff2fad4a628569bee88cd081efa27e16c80eb21db1e29d6f9766dfaf2bae490c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "17f698bf9660a6bf64a799d94d4e551db8d09b2e5ac28c06b9e68e12166dd6eb"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "bde40f8fdb797f2bf1aa0cca914c36e8b1e8d3acb766a6284a05f2fc19cad6db"
    sha256 cellar: :any_skip_relocation, tahoe:          "55e3e5f0fac608fe929009f8babe757d102d6e4b10ac054e45c11d9118ffc629"
    sha256 cellar: :any_skip_relocation, sequoia:        "a7e8eef736196d8d4fcd2cf0eebf4abcbe07771dab06d45a13f115ad263ffb53"
    sha256 cellar: :any_skip_relocation, sonoma:         "e6d498630315f605080ce7e4035f9da1b97a13d58e278680a239175a673df382"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.43/vox-v0.1.0-beta.43-darwin-arm64.tar.gz"
      sha256 "6d79a0cd709d19a70804b95f7c92201144ae466222db14440414e154ad7bc281"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.43/vox-v0.1.0-beta.43-darwin-x64.tar.gz"
      sha256 "9a51b7a5fc954041dbe562e93c4e86e59e83d6b1d94d93564cf9a586f7a905a8"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
