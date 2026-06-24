class Vox < Formula
  desc "vox.ai command-line workflow tools"
  homepage "https://www.tryvox.co"
  version "0.1.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vox-public/homebrew-tap/releases/download/v#{version}/vox-v#{version}-darwin-arm64.tar.gz"
      sha256 "0c1bbc7d99be034221cb32a2222738d7efeb936ef0405a18ac48f85fd3bbe638"
    else
      url "https://github.com/vox-public/homebrew-tap/releases/download/v#{version}/vox-v#{version}-darwin-x64.tar.gz"
      sha256 "cd2f2f8768ef6c74d9c126b637451b8b818f7ebcc45a9daf0b431aacf7b2eb82"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vox --version")
    system "#{bin}/vox", "mcp", "--list-tools", "--json"
  end
end
