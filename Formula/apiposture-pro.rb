class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.0"

  url "https://github.com/ApiPosture/ApiPosturePro.Php/releases/download/v#{version}/apiposture-pro.phar"
  # sha256 is updated automatically by the release workflow
  sha256 "9fc1e17a36c33f2987d048e0396a95eb50b4297437442c1b735e218738016136"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end
