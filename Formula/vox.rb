class Vox < Formula
  desc "Command-line workflow tools for vox.ai"
  homepage "https://www.tryvox.co"
  license "MIT"

  bottle do
    root_url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.51"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:    "685812f60082cd402f57bddece7af59a45882b5eb334c7cfde504e9692cb81e2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "928f13cd7a9c7d50bfbdcd5a38d740ea85ce406bd580ca38f4cc4515bd2dcf7c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "5e3a2772c4d1cdb2f62bfd51c82157e5126f2a7c58bfb01958ffcc5791ead37a"
    sha256 cellar: :any_skip_relocation, tahoe:          "561bc3dd3a0ca83c051a40ee495a492f7928e9ce8a8620171d1aba35bc886c71"
    sha256 cellar: :any_skip_relocation, sequoia:        "9effb285923ece21a31da6fcd1dcf9e95eec16334abc2df58890a6c015d4b3c9"
    sha256 cellar: :any_skip_relocation, sonoma:         "d0f2fe6e92bffeecbfe0654c166e1a39fefbfed6cbea4540c0182e50ae0ef9bd"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.51/vox-v0.1.0-beta.51-darwin-arm64.tar.gz"
      sha256 "3636171a94eebb57f7e3ee4455695f1ca15e063462e5cf29bb688f59bf5af5e5"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v0.1.0-beta.51/vox-v0.1.0-beta.51-darwin-x64.tar.gz"
      sha256 "ced5840d1c5f315ebcfc5ac5b410c9530ac9fb1b367e42cf969bcf0f591357bd"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin/"vox"} --version")
  end
end
