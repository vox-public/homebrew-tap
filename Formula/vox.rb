class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.40"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "c5442737e7b8ba5e823ac23a171989f815b8f96a4c01c60d8605804a2e4c4c9a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "121fc3466a2a2e4c73fcdc45b36999f989c5da5da41f0726ba07aa9cfca52122"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "71126b67b636237375ccf87cbf6e25d4326b81286efc57f0f0c2a36c3ce43ec7"
    sha256 cellar: :any_skip_relocation, tahoe:          "0858de57a97c3a9cfd918d45d1a3f2e36dcb56b6b8c5f1bd6e09f013cc78b3c3"
    sha256 cellar: :any_skip_relocation, sequoia:        "038a9387c6808aa485920e6d171eeba27ecd07c2f0b8a31fd8621f72ac3da7e4"
    sha256 cellar: :any_skip_relocation, sonoma:         "2cb7f2a95f2b4d024424ddd4e67b8f88347faf0c36f5e93cb1ebd57126ea7c98"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.40/vox-v0.1.0-beta.40-darwin-arm64.tar.gz"
      sha256 "696170ddb64db5ef50a79c3a0833b8a3c8b4b17105d7e073ddc119d901259be8"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.40/vox-v0.1.0-beta.40-darwin-x64.tar.gz"
      sha256 "07798ebf670f7d644314bedb5c3e57132f50e7ec3716358d3fdb7779b73a7998"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
