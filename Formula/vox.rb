class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v1.0.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "ad94541960f8f3da27d87ebd27b5ed3afca1f034f0b33b2b16d3dc6f68985742"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "026a928c2c027d102703631c9b63a4ac195b0878d8fdc88b1c2d796055bf5ad7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "9914e0f626cc37a331065927e4a985b83e619974b755e60e82c2ad1c0af8c5cb"
    sha256 cellar: :any_skip_relocation, tahoe:          "3744735a3e0de4f498afae50bfb5e845ca40f867f7efcec60e311f2a7fed8046"
    sha256 cellar: :any_skip_relocation, sequoia:        "cd6207f30a726d229a0dc0b8b7c8f04e62f0366ca8499d475b8713fc91d64b26"
    sha256 cellar: :any_skip_relocation, sonoma:         "ba6bc60f992fbd4b43e322a788b1dbbb1dec7745289dbe0461740b0c05443dad"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v1.0.2/vox-v1.0.2-darwin-arm64.tar.gz"
      sha256 "7edf2b593d8f8676e455ab5f611adaa34c60603c27548758e14da23355860463"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v1.0.2/vox-v1.0.2-darwin-x64.tar.gz"
      sha256 "99a92ad6cd523aa623d5c2059362e2fba47fb1b7b11e03fe5c8e311dcf3e4f2e"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vox --version")
  end
end
