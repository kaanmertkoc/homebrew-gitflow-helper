class GitFlowHelper < Formula
    desc "Creating a hotfix using gitflow. Also it can create pr or output with lolcat if client has that packages."
    homepage "https://github.com/kaanmertkoc/gitflow-helper-shell"
    url "https://github.com/kaanmertkoc/gitflow-helper-shell/archive/refs/heads/master.zip"
    sha256 "SHA256-OF-TARBALL" # Replace with actual SHA256 checksum of your tarball
    license "MIT"
  
    def install
      bin.install "hotfix.sh"
    end
  
    test do
      system "#{bin}/hotfix.sh", "--version"
    end
  end
  