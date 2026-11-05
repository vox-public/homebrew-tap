class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.47"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "608cb9416512b6603af09f4954a4e6988ce126932747af3a6ef2e4011837e610"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "f45c111774a17968c6cdfb6dbfeb99a6e19ac75b3e726c97551675c95062d9dc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "a4b50250db9dd18d3c04d104113026c7322c0afcd606a484f1844b319c84c6ac"
    sha256 cellar: :any_skip_relocation, tahoe:          "428d815aad00968f5e5535fe325b8b9d512b790933fedaa554be357dabfaab4d"
    sha256 cellar: :any_skip_relocation, sequoia:        "e045ae21a59e853dd06b510f4ca93904f4319e2860920890040cc4e8084b7eec"
    sha256 cellar: :any_skip_relocation, sonoma:         "aecb16bca8c22fafcedd2305ccf84ecdb440fdb969e0ba066de522793273c9cc"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.47/vox-v0.1.0-beta.47-darwin-arm64.tar.gz"
      sha256 "86630f8ad9292f3f0dc0ef1fb2bb8ff34b4826d90336f62bf78619009895984d"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.47/vox-v0.1.0-beta.47-darwin-x64.tar.gz"
      sha256 "4ba89297dd153e98eb258442a0154c65ce05c30a04c6bfc53452c43bcf5fc0dc"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
