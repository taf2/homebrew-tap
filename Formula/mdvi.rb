class Mdvi < Formula
  desc "Terminal markdown viewer with Vim-style navigation"
  homepage "https://github.com/taf2/mdvi"
  url "https://github.com/taf2/mdvi/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "67d7771e91d1958eadf3335e97eb27ac39dc0d9c1ffc44e8cd152f4cd9b3c388"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdvi --version")
  end
end
