class Nts < Formula
  desc "Rich terminal home for NTS Radio"
  homepage "https://github.com/r-ohan/nts-radio-cli"
  url "https://github.com/r-ohan/nts-radio-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "38674257f1c158969e16620321dc8e0245a6902ad14aac6d82f04dcebd295b87"
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
