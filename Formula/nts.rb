class Nts < Formula
  desc "Rich terminal home for NTS Radio"
  homepage "https://github.com/r-ohan/nts-radio-cli"
  url "https://github.com/r-ohan/nts-radio-cli/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7ac3fe3c1c4ba3fa3e7aa534db02cd3443aaca611f7cc3c2f129e41b4ff41017"
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
