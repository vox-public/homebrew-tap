class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.9"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "aca8bb68604324c862bb7b8bb67fcbfe9a5e150a4fa45777d52f2ad9319ebd19"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "2b77979fbdeeffbf4e738f292dff7263d2dfa8059e7dd712accb3453243db77d"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e84887d6571fd1bfd20e6529688194347c9693881fa2d5f7cc93c754b1594366"
    sha256 cellar: :any_skip_relocation, tahoe:          "732323c2a4a09ea6dd1b4120eb998e3fea36582a4859fd39f94d755cc8aec4c4"
    sha256 cellar: :any_skip_relocation, sequoia:        "c81136cba348cca7103c29a44921fae78ddc2c9c3ac89d65345986cc7cd2042e"
    sha256 cellar: :any_skip_relocation, sonoma:         "eeab6c410cf93b8848ed05f5d1ceeee84b527c4012573aa840bdbfef26e41221"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.9/vox-v0.1.0-beta.9-darwin-arm64.tar.gz"
      sha256 "e82596a531a7a8fa5dfeabae27c7102401079205a910c68171deff6fb9be26b7"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.9/vox-v0.1.0-beta.9-darwin-x64.tar.gz"
      sha256 "2ff4f252421db9ee5ae3b53a00dba080d0d25fe01f28fefad0aa942c060a1fa7"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
