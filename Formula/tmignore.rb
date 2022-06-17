class Tmignore < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/hkloudou/tmignore"
	url "https://github.com/hkloudou/tmignore/archive/v1.2.13.tar.gz"
	sha256 "3e2348a1c86701d440b8c5e3b881dcc0096b6f0b2574511c33bfd75ef47753e9"
	head "https://github.com/hkloudou/tmignore.git"

	depends_on :macos => :high_sierra
	depends_on :xcode => :build

	def install
		system "make", "brew-download-release"
		bin.install "./bin/tmignore"
		system "cp", "./homebrew.tmignore.plist", prefix
		system "cp", "#{prefix}/homebrew.tmignore.plist", plist_path
	end

	test do
		system "#{bin}/tmignore", "version"
	end
end
