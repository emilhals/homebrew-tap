class ChessTrainer < Formula
  desc "Practice chess openings in the terminal"
  homepage "https://github.com/emilhals/chess-trainer"
  url "https://github.com/emilhals/chess-trainer/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b3b30bd40ee424dd7843aeb39d61b83fa7f6069b37c0dbff0f69426a55e37c6c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"chess-trainer"
  end
end
