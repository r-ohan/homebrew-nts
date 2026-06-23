class Nts < Formula
  desc "Rich terminal home for NTS Radio"
  homepage "https://github.com/r-ohan/nts-radio-cli"
  url "https://github.com/r-ohan/nts-radio-cli/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "3909acce64431fec394d8ba82fdfc2b968a90e9769c7029f88fca285efb14831"
  license "MIT"

  depends_on "rust" => :build
  depends_on "mpv"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nts #{version}", shell_output("#{bin}/nts --version")
  end
end
