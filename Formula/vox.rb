class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.28"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "5ff47d7ed3c13224d85a1482507f75820fbef4eabd7422d39bbcf2eeab773f79"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "fd00b41b0f26b2594b21ca1b4f0be142c45e4eb6ea4496f537ed3a89faea2f8c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e452eaecbc0547a9e069174e5f2c5915aac602a3ec17675c2ab4fff72f0b64dc"
    sha256 cellar: :any_skip_relocation, tahoe:          "c70622816d224aca89fab1767025217d5d13d423bc8a3775a6b0fe025cda7fcf"
    sha256 cellar: :any_skip_relocation, sequoia:        "1e020edc3636ee372e4ac94c669f7c070f056e75897aefea864269f591afbebd"
    sha256 cellar: :any_skip_relocation, sonoma:         "25b8df8146cb63afa6fb64d713c5929d2f3e3d44285fb737f4c29b5b6ab99938"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.28/vox-v0.1.0-beta.28-darwin-arm64.tar.gz"
      sha256 "24b27cfd2225494288ed3c3889aa34beaa9a18e3aec31d0df26455d36cfb7e04"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.28/vox-v0.1.0-beta.28-darwin-x64.tar.gz"
      sha256 "3c4e603da9a2601d6729a3ceb6d29a7ddc0af9eedd81ddca9570f231129b904a"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
