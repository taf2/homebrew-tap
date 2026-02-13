class Mdvi < Formula
  desc "Terminal markdown viewer with Vim-style navigation"
  homepage "https://github.com/taf2/mdvi"
  url "https://github.com/taf2/mdvi/archive/refs/tags/v0.6.3.tar.gz"
  sha256 "e69e2481b61c4d8b0dfea5ab86834da0c830123bb82ac2d3557c607b37853f3f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdvi --version")
  end
end
