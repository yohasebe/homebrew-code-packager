class CodePackager < Formula
  desc "Package your codebase into a JSON file, ready to be analyzed and understood by large language models (LLMs) like GPT-4, Claude, Command R, and Gemini"
  homepage "https://github.com/yohasebe/code-packager"
  url "https://github.com/yohasebe/code-packager/archive/8a7740ff82f8903ed6984de093e252f5373aa564.zip"
  version "0.2.1"
  sha256 "3a99a7cf33f5430744cd201fe42d08cd471b45bc0b4184e44fc492b74ed54f31"
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
