# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AirflowCli < Formula
  desc "Interact with airflow REST API from your CLI"
  homepage "https://github.com/pjgaetan/airflow-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.1.0/airflow-cli_ 0.1.0_Darwin_arm64.tar.gz"
      sha256 "799359eb237e38483d1cf06479957bfc46fb14b9a5610bffe02486fd87be7fe6"

      def install
        if build.head?
          system "make", "install"
          bin.install ENV["GOPATH"] + "/bin/airflow-cli"
        else
          bin.install File.exist?("bin/airflow-cli") ? "bin/airflow-cli" : "airflow-cli"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.1.0/airflow-cli_ 0.1.0_Darwin_x86_64.tar.gz"
      sha256 "8149a314cd6546fbac921483d39429c53352a5ef0cca8fbe399c9a6df188d18f"

      def install
        if build.head?
          system "make", "install"
          bin.install ENV["GOPATH"] + "/bin/airflow-cli"
        else
          bin.install File.exist?("bin/airflow-cli") ? "bin/airflow-cli" : "airflow-cli"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.1.0/airflow-cli_ 0.1.0_Linux_armv6.tar.gz"
      sha256 "9a4fb25eac1903b2afb5436763aca7ce3ae2341baa794602cd999a8ea980afd0"

      def install
        if build.head?
          system "make", "install"
          bin.install ENV["GOPATH"] + "/bin/airflow-cli"
        else
          bin.install File.exist?("bin/airflow-cli") ? "bin/airflow-cli" : "airflow-cli"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.1.0/airflow-cli_ 0.1.0_Linux_x86_64.tar.gz"
      sha256 "ffaa6cf11f2d29ccf8a0eb050536f4175be03ae7ad836671ef1aa2ae67835eb1"

      def install
        if build.head?
          system "make", "install"
          bin.install ENV["GOPATH"] + "/bin/airflow-cli"
        else
          bin.install File.exist?("bin/airflow-cli") ? "bin/airflow-cli" : "airflow-cli"
        end
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.1.0/airflow-cli_ 0.1.0_Linux_arm64.tar.gz"
      sha256 "00d7eedf174c8ff5adb5e60e633feaef455ba75a47af1cb65b15901373a4e2ee"

      def install
        if build.head?
          system "make", "install"
          bin.install ENV["GOPATH"] + "/bin/airflow-cli"
        else
          bin.install File.exist?("bin/airflow-cli") ? "bin/airflow-cli" : "airflow-cli"
        end
      end
    end
  end

  head do
    url "https://github.com/pjgaetan/airflow-cli.git", branch: "main"
    depends_on "go"
  end

  test do
    help_text = shell_output("#{bin}/airflow-cli help")
    assert_includes help_text, "Airflow CLI"
  end
end
