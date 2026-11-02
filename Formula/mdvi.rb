class Mdvi < Formula
  desc "Terminal markdown viewer with Vim-style navigation"
  homepage "https://github.com/taf2/mdvi"
  url "https://github.com/taf2/mdvi/archive/refs/tags/v0.6.7.tar.gz"
  sha256 "83354c8af6c8fc1fe77d39e004ff3ecb4f948b39e3a3b97fe56766c5d071fdab"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdvi --version")
  end
end
