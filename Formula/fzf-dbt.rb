class FzfDbt < Formula
  desc "Fuzy finder using fzf to look for dbt models"
  homepage "https://github.com/PJGaetan/fzf-dbt"
  url "https://github.com/PJGaetan/fzf-dbt/archive/refs/tags/0.1.0.tar.gz"
  sha256 "19e36be30ceabb2a8bf3148c029cf75fbdb11fa6d167fe9ac5cc7abfeb67ef89"
  license ""

  depends_on "bat"
  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "add_zsh_profile_safely.sh"
    etc.install "src/fzf_dbt.sh" => "fzf_dbt.sh"
    system "echo 'FZF_DBT_PATH=~/.fzf-dbt/fzf-dbt.sh' >> ~/.zshrc"
  end

  def post_install
    system "bash", "add_zsh_profile_safely.sh"
  end

  def
  caveats; <<-EOS
    To enable the  ~/.zprofile had a couple of lines added to it to make fzf-dbt available on the command line.
    They will still be there after an uninstall, but are adaptive (nothing happens if fzf-dbt was uninstalled)
  EOS
  end

  test do
    system "true"
  end
end
