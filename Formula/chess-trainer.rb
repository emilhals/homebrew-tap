class ChessTrainer < Formula
  desc "Practice chess openings in the terminal"
  homepage "https://github.com/emilhals/chess-trainer"
  url "https://github.com/emilhals/chess-trainer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9b30f841b20606d10ac04506c7209e2e6a22e69de08df62041e0ee256a41f395"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"chess-trainer"
  end
end
