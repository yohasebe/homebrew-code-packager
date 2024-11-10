class CodePackager < Formula
  desc "A set of bash scripts that package and unpack your codebase into and from a single JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/6e89a0e169ac92e952ecbdec076cef2a9248d302.zip"
  version "0.3.1"
  sha256 "7d6ecd840a3aa3fd7c9bd981434b075ae1fe933d01cc46658c0d62cf21c293c3"
  license "MIT"

  depends_on "git"
  depends_on "jq"

  def install
    bin.install "code-packager"
    bin.install "code-unpackager"
  end

  test do
    system "#{bin}/code-packager", "-v"
    system "#{bin}/code-unpackager", "-v"
  end
end
