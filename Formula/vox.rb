class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.33"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "0843b79ec55bff5f5910e8899f5d11225773d2a02b9aa61b0451c400d67ccba6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "1bf9da41c0f6cb730d13a7d0eac7e7fac858909059fcc87774d3d0700d5eea97"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "0076a4c4376011cf3b8141736e6c6550c77e30b37528195a3ddc3337ad41f5fc"
    sha256 cellar: :any_skip_relocation, tahoe:          "f31a70afc7a2ac74ac4e9375400912407c60ca96d2f28652e7545637d92623d1"
    sha256 cellar: :any_skip_relocation, sequoia:        "90c4af1f372a8e0e9915e9e7c894c888854b43b47ee5b60a1cad1a8ab9b08062"
    sha256 cellar: :any_skip_relocation, sonoma:         "c3cad10764143892e9b190031a5af06d722755626024cbc43d1203b60ca5c05f"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.33/vox-v0.1.0-beta.33-darwin-arm64.tar.gz"
      sha256 "4807880219010353627fad8623cc4bad9ce4d780e737897482a303d2cb3e89e3"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.33/vox-v0.1.0-beta.33-darwin-x64.tar.gz"
      sha256 "85f02622a8841230ae7fd6bd1b3f869e0b221b0e717c0b6d8f674ff0de71b8ba"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
