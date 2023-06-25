# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AirflowCli < Formula
  desc "Interact with airflow REST API from your CLI"
  homepage "https://github.com/pjgaetan/airflow-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.2.0/airflow-cli_0.2.0_Darwin_arm64.tar.gz"
      sha256 "5f740e3be0d8d861ad69f1a0e10b3cbcfaf15786a80d84f4e964d4c5d5fe2d70"

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
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.2.0/airflow-cli_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "bc1ff3f6e3af99bede79c2381e182c18c16a2119869e0d7f3dbb4234a321db48"

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
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.2.0/airflow-cli_0.2.0_Linux_armv6.tar.gz"
      sha256 "3f71e171bdc47df1bdbc85e7d11ac5b168692f0a38bd0e1a7fe52e749942434a"

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
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.2.0/airflow-cli_0.2.0_Linux_arm64.tar.gz"
      sha256 "50f358537c8f36976f01c1cb728f89bea837f72ec6409c4a98736a2d221966fe"

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
      url "https://github.com/PJGaetan/airflow-cli/releases/download/v0.2.0/airflow-cli_0.2.0_Linux_x86_64.tar.gz"
      sha256 "99d5957cc7edb6fdfd6cf0228da5ad091608d49ecf30a6b929d6d25ac5d72de5"

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
