class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.13"

  # url and sha256 are replaced by release.yml when a vX.Y.Z tag is pushed. Do not edit manually.
  url "https://raw.githubusercontent.com/ApiPosture/homebrew-php-tools/main/releases/apiposture-pro-v1.0.13.phar"
  sha256 "764aa3192b3a7e8e10067a4f98c8cf78a8e690980dac9b638545f9c3348c7988"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end
