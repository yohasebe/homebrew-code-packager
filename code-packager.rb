class CodePackager < Formula
  desc "A set of bash scripts that package and unpack your codebase into and from a single JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/0cd764cccbee74382af1628e261d3d7536e29751.zip"
  version "0.3.0"
  sha256 "97ac9d71d39c6b19b1f4830d72052d9958cf7cbd28de0a86ee5aa431f97bdfb0"
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
