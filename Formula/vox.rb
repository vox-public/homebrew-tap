class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.39"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "9178d1d1d457fc331b4d88be8a95cf7d2b9a1c676acd5380313a4ab44fca46bb"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "9495e5f4aaa6cbbaa73b5726101122949e046a965b6b93db3aee47bc21c202b5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "15c45c8ef26f3d543340adf8cb6b548aa5ab1bea52ba5650f8bce693908c3f78"
    sha256 cellar: :any_skip_relocation, tahoe:          "2b4316907b7d445fc0201bbe27e081b41b210c0071e4f3874d10864253ae4b16"
    sha256 cellar: :any_skip_relocation, sequoia:        "b57886f3dbd949a03ff2d185ed1a8d95638b28c1c99c07eac50a7d5e8bd8962a"
    sha256 cellar: :any_skip_relocation, sonoma:         "f7ab3c4239572c545764d44adce3c47bbf570eb63394008ea633e4bb6137c7df"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.39/vox-v0.1.0-beta.39-darwin-arm64.tar.gz"
      sha256 "3a6a6ed15c87ff48b6d7620e4558a34fd30fb5452bc2f8523f5387d7a15d2002"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.39/vox-v0.1.0-beta.39-darwin-x64.tar.gz"
      sha256 "51d45d1621ded48ffd57a4444db0e12db3616f8c4c4eab1fea4fc8f1b3235a43"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
