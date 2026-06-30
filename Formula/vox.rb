class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "7c2b4cbc29115317c94d821a4e6ca8afd5511a1e0af1f2344ef19e51eaf3833e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "60b4c59acb4000ec1ff301894dd5cf81bf571f62c3cf5ce937dc8dff5e29f499"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "738e08e705769244ca98ea5ae632cd280d9bf8ada89f3565c03c06423b5f0a58"
    sha256 cellar: :any_skip_relocation, tahoe:          "673b4dc23040d016c6bec8ec732c45afa0198af0dcfccb8ae84e0671c374934d"
    sha256 cellar: :any_skip_relocation, sequoia:        "a62b62881be8239d3f74b547e739109dfb753541a4627ed716b960409f351da7"
    sha256 cellar: :any_skip_relocation, sonoma:         "0fe90ebb4653b18b6f30485c343bfa7476fb954dbb8354a13c17dcd8908c5d7e"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.7/vox-v0.1.0-beta.7-darwin-arm64.tar.gz"
      sha256 "91a652935fa1105164b49bf079941ecd5a6666469cf3e337ba6644a2a0e0ec9e"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.7/vox-v0.1.0-beta.7-darwin-x64.tar.gz"
      sha256 "ddc33fd44d24337179fb5924256c6c2f9185c6881326786382a11f0a812e5128"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
