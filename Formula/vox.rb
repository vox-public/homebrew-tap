class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.34"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "21957f3522e6d4042a2ef431911acf8dccec347c9cbd6d654e4cd7c3a4bf07a8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "f87ac3bdf791fab74d1155b42886b57818278c3882e5f80257589dd91055ca24"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "89c9ea90b71a7871698d14f4f883efa0b0cbe7ea2ccbb5ae8e745acecea778f9"
    sha256 cellar: :any_skip_relocation, tahoe:          "9457dc4866890fa588a95d1135efa8a43e2f69e859091676a0ac4439b601f9b2"
    sha256 cellar: :any_skip_relocation, sequoia:        "8b2158c718272e2fcc60c0bf95b8ed26f2664293ce3bde13ba69a78e75c1e950"
    sha256 cellar: :any_skip_relocation, sonoma:         "85fbb5a772ce035f40d49717171c0eefe2240fd0b473ea452eb26f8f55326cb8"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.34/vox-v0.1.0-beta.34-darwin-arm64.tar.gz"
      sha256 "d7aa56488420ba8af46eb98846175888996400fc04d3a6b271c830a541a40f29"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.34/vox-v0.1.0-beta.34-darwin-x64.tar.gz"
      sha256 "b33fcd9fdf6445d3a21607928d947de1cf66fbca0b65d86afba3d5c11062c811"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
