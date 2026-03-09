class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.7"

  # url and sha256 are replaced by release.yml when a vX.Y.Z tag is pushed. Do not edit manually.
  url "https://raw.githubusercontent.com/ApiPosture/homebrew-php-tools/main/releases/apiposture-pro-v1.0.7.phar"
  sha256 "4532000d7153ad11928be8938140ef20041c03180401495cd67d4cfd00e2d941"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end
