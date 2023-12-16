class GitflowHelper < Formula
    desc "Creating a hotfix using gitflow. Also it can create pr or output with lolcat if client has that packages."
    homepage "https://github.com/kaanmertkoc/gitflow-helper-shell"
    url "https://github.com/kaanmertkoc/gitflow-helper-shell/archive/refs/heads/master.zip"
    sha256 "96a21415154482393062b3b9694b8bcf45b79bd91a294b8f25b54d8d9f422ba5" # Replace with actual SHA256 checksum of your tarball
    license "MIT"
    version "1.0.3" # Replace with your desired version number
  
    def install
      bin.install "hotfix.sh" => "hotfix"
      bin.install "hotfix_finish.sh" => "hotfix_finish"
      bin.install "release.sh" => "release"
      bin.install "release_finish.sh" => "release_finish"
    end
  
    test do
      system "#{bin}/hotfix", "--version"
      system "#{bin}/release", "--version"
      system "#{bin}/hotfix finish", "--version"
      system "#{bin}/release finish", "--version"
    end
  end
  