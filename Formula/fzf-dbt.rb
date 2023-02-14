class FzfDbt < Formula

  desc "Fuzy finder using fzf to look for dbt models"
  homepage "https://github.com/PJGaetan/fzf-dbt"
  url "https://github.com/PJGaetan/fzf-dbt/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license ""

  depends_on "fzf"
  depends_on "bat"
  depends_on "jq"

  def install
    systeme "cp src/fzf-dbt.sh ~/.fzf-dbt/fzf-dbt.sh"
    systeme "echo 'FZF_DBT_PATH=~/.fzf-dbt/fzf-dbt.sh' >> ~/.zshrc"
  end

  test do
    false
  end
end
