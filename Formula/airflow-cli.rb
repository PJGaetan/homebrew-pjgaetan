class AirflowCli < Formula
  desc "Open-source Airflow REST API command-line tool"
  homepage "https://github.com/PJGaetan/airflow-cli"
  url "https://github.com/PJGaetan/airflow-cli/archive/refs/tags/0.0.1.tar.gz"
  sha256 "067f6429825463b32879fa704b57c5c490330807d96cd96d633d6d65a32977b0"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "airflow-cli/main.go"
  end

  test do
    help_text = shell_output("#{bin}/airflow-cli help")
    assert_includes help_text, "Airflow CLI"
  end
end
