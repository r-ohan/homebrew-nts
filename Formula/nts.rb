class Nts < Formula
  desc "Rich terminal home for NTS Radio"
  homepage "https://github.com/r-ohan/nts-radio-cli"
  url "https://github.com/r-ohan/nts-radio-cli/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "9456e87191f17a32bcaeb28bba539547dead39830775dcc526290ae19c37b231"
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
