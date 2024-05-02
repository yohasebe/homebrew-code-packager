class CodePackager < Formula
  desc "Package your codebase into a JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT-4, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/1d4fc5bae7a08c42f8d064a35ff3c9072022323e.zip"
  version "0.1.1"
  sha256 "57608d4ef88e8ca7a4691abba031cf8bae5177127c4a07289852b3d5547c73dd"
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
