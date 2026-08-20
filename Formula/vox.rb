class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.29"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "656ddf8ec9e49a33b7ac2259f8913c5a28e0f68eb8cd8586ff9dfec01a65be24"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "22d237ea145f090402a2107e597078d31d4604c18f48b743c5b969ae07b4beeb"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "80d6491e9f43f88940f2f478fa3029e6eb3ba133d86f00b7a88c34a41ff39d85"
    sha256 cellar: :any_skip_relocation, tahoe:          "eae136a4964f20c734dcf44de39117605ff372e0a0ac5f45c80d9e3d2a1caa77"
    sha256 cellar: :any_skip_relocation, sequoia:        "18cd4bc9a452937c4438e85a94ee534ccc7b30f38c182851aed8b84b1620d1e6"
    sha256 cellar: :any_skip_relocation, sonoma:         "281da17a298b30b04dc8a46c66cac5c44f3b8d2eb9927c7ea45a09055dab62db"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.29/vox-v0.1.0-beta.29-darwin-arm64.tar.gz"
      sha256 "c7eb205bc80e65cb7ba5c00bd0d0383aaeec60bbb969593161f55b25446bba9c"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.29/vox-v0.1.0-beta.29-darwin-x64.tar.gz"
      sha256 "e16e7789a8043f229064df0f90dd40701183df0a588cf2e06f3073bfa127b686"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
