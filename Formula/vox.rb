class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.20"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "e9ea7c4d5eb68c0668b21a803961db31aa1bbcc1d1ce44019758932879ad2d84"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "4d6df28c738881570457f23a1aff590964c73000c77fece6efe9e9b987a9b5d5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "783cc4e17add583af5ba74c481a637f4748996966b4466ccbb48a0b5be095993"
    sha256 cellar: :any_skip_relocation, tahoe:          "1d55434718285258334254988746d80d9469bffe4640c1cc156871fd78c2fc37"
    sha256 cellar: :any_skip_relocation, sequoia:        "1a322bd084db2876d7caaf94c7c75dfb2fb593b32089117ba5e0362377074227"
    sha256 cellar: :any_skip_relocation, sonoma:         "4abe856f274c585ded5d63eed88ad884c9928afc4be303ecbfaa5dcfc1b43ea2"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.20/vox-v0.1.0-beta.20-darwin-arm64.tar.gz"
      sha256 "3996253fc3b11c08dc79c400b11d7679f5035acb946f37029b4510e07e54e489"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.20/vox-v0.1.0-beta.20-darwin-x64.tar.gz"
      sha256 "2ff611d5ad398f76824c36f529b4460cdf5a4f6356ee681540ebe3b4dbc229d3"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
