class Mdvi < Formula
  desc "Terminal markdown viewer with Vim-style navigation"
  homepage "https://github.com/taf2/mdvi"
  url "https://github.com/taf2/mdvi/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "7977c3bac29d7658e9b0b0d8af47821fa2113f17aca051623290c2c46a8ae26f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdvi --version")
  end
end
