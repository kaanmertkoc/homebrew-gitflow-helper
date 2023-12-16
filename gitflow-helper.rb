class GitflowHelper < Formula
    desc "Creating a hotfix using gitflow. Also it can create pr or output with lolcat if client has that packages."
    homepage "https://github.com/kaanmertkoc/gitflow-helper-shell"
    url "https://github.com/kaanmertkoc/gitflow-helper-shell/archive/refs/heads/master.zip"
    sha256 "e28f8c8efdcd0bdc4ba211869fe8de0695de347d2813cd5243d09506f94c9bba" # Replace with actual SHA256 checksum of your tarball
    license "MIT"
    version "1.0.0" # Replace with your desired version number

  
    def install
      bin.install "hotfix.sh"
    end
  
    test do
      system "#{bin}/hotfix.sh", "--version"
    end
  end
  