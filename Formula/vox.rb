class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.32"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "02747900589f41db47ca8018f9dc4d617637b10a90b61902c7f358cc3759b215"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "ebec914fd8afe4887c1fcd085550bbfa77e8f81647623d17815c2178792adf96"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "8caaffee95be339a9c14a1dee9dea6206b63c87e21dd8bacacd5cf58b4120d7c"
    sha256 cellar: :any_skip_relocation, tahoe:          "f3d731602e50259ecd3c714a6fc0e885a6b3cba050122afd56a331e88c09b0ef"
    sha256 cellar: :any_skip_relocation, sequoia:        "f9b0fd02f9850cbff2c6093fc8688a907ea7b488d606d3fcc895c72bea044251"
    sha256 cellar: :any_skip_relocation, sonoma:         "99deaec76fd048b57fbd8f88ccba2a653458459b6a6231ff84dd4774ec4f9026"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.32/vox-v0.1.0-beta.32-darwin-arm64.tar.gz"
      sha256 "faeb9052f8dfb4c4e1b81d2232fd5f1982d61c35eb4fe23b7f6594a37787fc31"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.32/vox-v0.1.0-beta.32-darwin-x64.tar.gz"
      sha256 "af8298f38cd7f336e8597e33a4cb6e65dc52f3e1929f705829ad55316ef6fff3"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
