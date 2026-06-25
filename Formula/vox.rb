class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "170ec79273efdd22c7671422e02e32d4b7c9438f8a0ea92f78ab6fce334d1f99"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "4f7699b47005809cbf717f89036e755373de11b01165b3aad6e1dbfc57b6f1e8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "968dd0f27b77c1fe78e4f10f9ad6e86bfeba44a220e88a54ad9ba7d949786c47"
    sha256 cellar: :any_skip_relocation, tahoe:          "e134c7e94ac59f467b79ac92952d2bd74266549842ddf8d29659002a1860c917"
    sha256 cellar: :any_skip_relocation, sequoia:        "0708f6417b08083db28e81cf6b01af6d39b45e29e2afb55d204c3d1314638411"
    sha256 cellar: :any_skip_relocation, sonoma:         "44150d4a38bccd36e928419fa96d0a437663104e91921ce9986ab80492d1a6ff"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.4/vox-v0.1.0-beta.4-darwin-arm64.tar.gz"
      sha256 "9f9a6a0f1edd3184989a91a8285fcce686d4c962d9484c78d39671e928b274c9"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.4/vox-v0.1.0-beta.4-darwin-x64.tar.gz"
      sha256 "3c11d6004542c89dbe807b6778b88ae7552e6e1c21c50fefec252b96b515f5be"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
