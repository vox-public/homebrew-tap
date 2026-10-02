class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.38"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "5b9e45edc985aa405bbe1b71246095ac2788335d3db254b4b3e86de283018e09"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "c73c5835521797c0fa582bf76ebc024f790137940024c0c45a3e0d2a639877df"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "126c048072222d60923aa5d59804dff5f9d1f19a4250921d9eff9b323569441e"
    sha256 cellar: :any_skip_relocation, tahoe:          "612c108c8d74d517d4aaa6ad60bf8b1b3c692bd08e8023bd848ae00dcb32684c"
    sha256 cellar: :any_skip_relocation, sequoia:        "94645d2bd5db9be0b6f051d9c799a0003ea632bc9b14d3ea57b5a6ca694c0185"
    sha256 cellar: :any_skip_relocation, sonoma:         "65e404f92fa6a26c4d08542558245f62eb63f23dc41b9935f4606fc324ad2fcc"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.38/vox-v0.1.0-beta.38-darwin-arm64.tar.gz"
      sha256 "d058166eefe424d9730aad9b3e9b219fe630c5b001135cc98c4ec7051b11a218"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.38/vox-v0.1.0-beta.38-darwin-x64.tar.gz"
      sha256 "b282efd49b9a341e14b72136221fadef609167e83c6f622446e91b56d0c21e95"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
