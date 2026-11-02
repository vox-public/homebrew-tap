class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.46"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "e5e69be6dd8cea307f247213fccf54651f4d0c6ab53c2a302250600fe40b04a7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "ff3bef50d9ccd2ad460f8a308806f9a8fd3e3b5d04dbdabaf5fae11261c78881"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "8c85c00e34d9ae4b7c1c3726b3b831227e072faea5e21a06ad2777d4123a5942"
    sha256 cellar: :any_skip_relocation, tahoe:          "eee835f4c0ea4ba4242baac2517c8d3e69e910e4687ade925c0c1d57a332cf50"
    sha256 cellar: :any_skip_relocation, sequoia:        "f476c3a660f6c2ef3c7523f3f337961283196a57d5cafb3f283ba2ac73aa4090"
    sha256 cellar: :any_skip_relocation, sonoma:         "59b6a9d2038484fb92b6ed82615a86f8bf66ee86f500d355a200389c13d06b28"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.46/vox-v0.1.0-beta.46-darwin-arm64.tar.gz"
      sha256 "fea5eafc70ed0cd1f8ffce2027a68404cfbb4f6f5f0b06fb6865a3ba5b773d2a"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.46/vox-v0.1.0-beta.46-darwin-x64.tar.gz"
      sha256 "ca78946dd5a063c653caf0ca896cf7af0d05d5452d21adbdf5abe1b967751cf5"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
