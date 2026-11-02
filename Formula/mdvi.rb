class Mdvi < Formula
  desc "Terminal markdown viewer with Vim-style navigation"
  homepage "https://github.com/taf2/mdvi"
  url "https://github.com/taf2/mdvi/archive/refs/tags/v0.6.8.tar.gz"
  sha256 "aebeac91e847e57148aad6c041370781253ecb17c37d433456dd551557bd7ce6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdvi --version")
  end
end
