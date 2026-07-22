class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.13"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "13dad37e23f2c010fd95890e9821a05fc4fea862cba3a6cd6493827366e095bd"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "c9d686a0c488a507adec5c7a79213cd07db3add17958e93eb8a789a9cd340db1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "6837f9247770184d642537e8c17a9d927b7208ae85e1e33aaf43556c6898c4ce"
    sha256 cellar: :any_skip_relocation, tahoe:          "3e4b5c934c50faeb7e73d33f9ddc5369782bcb3b7494ded09035776e151f093b"
    sha256 cellar: :any_skip_relocation, sequoia:        "bc477b3cbe6ee08db44a364aba255a357c934559e7464c10618bc0eb0bfa35c4"
    sha256 cellar: :any_skip_relocation, sonoma:         "3d055c4e13977d3ad8cd414a352b9889d3ffc82a074d250462f0b93c8c7a63ad"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.13/vox-v0.1.0-beta.13-darwin-arm64.tar.gz"
      sha256 "07a1b17e5466f6332e478080e77cba43b0934dd39021c85b54bb7b41f8721416"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.13/vox-v0.1.0-beta.13-darwin-x64.tar.gz"
      sha256 "da744f01723fa5544be276eb0610256b365947e4f1f786a530b8548a5fd675bd"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
