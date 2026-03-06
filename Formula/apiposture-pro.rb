class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.3"

  # url and sha256 are replaced by release.yml when a vX.Y.Z tag is pushed. Do not edit manually.
  url "https://raw.githubusercontent.com/ApiPosture/homebrew-php-tools/main/releases/apiposture-pro-v1.0.3.phar"
  sha256 "7e76d7d048fb9b0eb8837950c7d09e26ed7ffc91cc46ac100e5982932b3f2e90"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end
