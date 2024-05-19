class CodePackager < Formula
  desc "Package your codebase into a JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT-4, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/c4e3b450e0b205090f9dc6e32f20cbd9ce111729.zip"
  version "0.2.0"
  sha256 "7a1748e8f4d764b8451155baa08a272c7fd56e0d49533535e2a2aaacde96ef20"
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
