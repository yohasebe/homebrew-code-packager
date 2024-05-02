class CodePackager < Formula
  desc "Package your codebase into a JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT-4, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/233a74d3e37c0f3922edb6341c10cdac2ee126de.zip"
  version "0.1.1"
  sha256 "1a0f73612d550d79bb6207598c6d7871d171f5043a22f6da7fea4f1f87ee569c"
  license "MIT"

  depends_on "git"
  depends_on "jq"
  depends_on "tree"

  def install
    bin.install "code-packager"
  end

  test do
    system "#{bin}/code-packager", "-v"
  end
end
