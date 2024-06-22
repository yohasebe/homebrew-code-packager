class CodePackager < Formula
  desc "Package your codebase into a JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT-4, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/bab50cc7dd89a915ba62c876a6b36fdb88a2f981.zip"
  version "0.2.2"
  sha256 "ae1042125ae7deb95ca866d3f6aa9115937e6f03761105980b8bcdc280e73454"
  license "MIT"

  depends_on "git"
  depends_on "jq"

  def install
    bin.install "code-packager"
  end

  test do
    system "#{bin}/code-packager", "-v"
  end
end
