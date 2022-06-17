class Tmignore < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/hkloudou/tmignore"
	url "https://github.com/hkloudou/tmignore/archive/v1.2.2.tar.gz"
	sha256 "37cca0593f9c3919b49cbb4f76d0242280c9eb771aaeecc72025d81acb409e30"
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
