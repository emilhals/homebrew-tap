class ChessTrainer < Formula
  desc "Practice chess openings in the terminal"
  homepage "https://github.com/emilhals/chess-trainer"
  url "https://github.com/emilhals/chess-trainer/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9bf4d8a383d486e181b2d2106915818f38ab2486bd3d8aa021ef084a7dded9ca"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"chess-trainer"
  end
end
