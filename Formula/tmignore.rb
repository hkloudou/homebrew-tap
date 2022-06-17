class Tmignore < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/hkloudou/tmignore"
	url "https://github.com/hkloudou/tmignore/archive/v1.2.12.tar.gz"
	sha256 "ec15ca10dc1f46ad96024774a118512d48f3cc7d1f0befd1147f6d3b15f4d7e0"
	head "https://github.com/hkloudou/tmignore.git"

	depends_on :macos => :high_sierra
	depends_on :xcode => :build

	def install
		system "make", "brew-download-release"
		bin.install "./bin/tmignore"
		system "cp", "./homebrew.tmignore.plist", prefix
	end

	test do
		system "#{bin}/tmignore", "version"
	end
end
