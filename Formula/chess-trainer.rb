class ChessTrainer < Formula
  desc "Practice chess openings in the terminal"
  homepage "https://github.com/emilhals/chess-trainer"
  url "https://github.com/emilhals/chess-trainer/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "be8702cebe36f49bb0775ebb574933a22512ac6a60da341670ff6197aae157cf"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"chess-trainer"
  end
end
