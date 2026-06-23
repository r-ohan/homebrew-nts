class Nts < Formula
  desc "Rich terminal home for NTS Radio"
  homepage "https://github.com/r-ohan/nts-radio-cli"
  url "https://github.com/r-ohan/nts-radio-cli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "536b063692d759f688f0be1cbe4191f3ca365afe0ce5017f3162abb49a789265"
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
