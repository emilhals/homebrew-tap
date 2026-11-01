class ChessTrainer < Formula
  desc "Practice chess openings in the terminal"
  homepage "https://github.com/emilhals/chess-trainer"
  url "https://github.com/emilhals/chess-trainer/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "ef21754998916955178a56e9d04b376c921460db989f6ed0f32d648f4e5f3ec0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"chess-trainer"
  end
end
