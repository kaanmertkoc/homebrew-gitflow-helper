class GitflowHelper < Formula
    desc "Creating a hotfix using gitflow. Also it can create pr or output with lolcat if client has that packages."
    homepage "https://github.com/kaanmertkoc/gitflow-helper-shell"
    url "https://github.com/kaanmertkoc/gitflow-helper-shell/archive/refs/heads/master.zip"
    sha256 "d048bee190cfa92b44b9c152ca401aca796b7b4720fd4b246a25f9dcd0400210" # Replace with actual SHA256 checksum of your tarball
    license "MIT"
    version "1.0.2" # Replace with your desired version number
  
    def install
      bin.install "hotfix.sh" => "hotfix"
      bin.install "hotfix_finish.sh" => "hotfix finish"
      bin.install "release.sh" => "release"
      bin.install "release_finish.sh" => "release finish"
    end
  
    test do
      system "#{bin}/hotfix", "--version"
      system "#{bin}/release", "--version"
      system "#{bin}/hotfix finish", "--version"
      system "#{bin}/release finish", "--version"
    end
  end
  