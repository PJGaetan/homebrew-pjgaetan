class FzfDbtAT001 < Formula
  desc "Fuzy finder using fzf to look for dbt models"
  homepage "https://github.com/PJGaetan/fzf-dbt"
  url "https://github.com/PJGaetan/fzf-dbt/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "fa7f8f39e84f142ce5eced3ec3d42a6cdc4db596b9c3cf3f467b2bfc7eff3ff0"
  license ""

  depends_on "bat"
  depends_on "fzf"
  depends_on "jq"

  def install
    system "cp src/fzf-dbt.sh ~/.fzf-dbt/fzf-dbt.sh"
    system "echo 'FZF_DBT_PATH=~/.fzf-dbt/fzf-dbt.sh' >> ~/.zshrc"
  end

  test do
    false
  end
end
