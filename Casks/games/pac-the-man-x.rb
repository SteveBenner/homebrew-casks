# todo: post link here: http://forums.macrumors.com/showthread.php?t=1749301
# todo: provide package mirror

cask :v1 => 'pac-the-man-x' do
  version '1.5.1'
  sha256 'a0bba6453b489ef15105267b00341a3751d180dfb29379b2703f2d061fe12c36'

  url 'http://dw3.en.uptodown.com/dl/1417105400/da481e492bffbfc71f883bd26495bd6873426b2c/' +
        "#{title}-#{version.gsub(/\./, '-')}-es-en-br-fr-de-mac.zip"
  mirror 'http://download2us.softpedia.com/dl/7b6aed90b787d77175e2d86b879fed40/54791ac5/400013645/mac/Games/pacx.zip'
  # release date: 2012-11-21
  tags vendor: 'McSebi', name: 'pacman'
  homepage 'http://www.mcsebi.com/' # the developer/publisher has discontinued it!
  # homepage 'http://www.macupdate.com/app/mac/20363/pac-the-man-x'
  license :gratis

  # preflight do
  #   # Toss the included README file in with app package
  #   FileUtils.mv "#{staged_path}/Pac the Man X ReadMe.rtfd", "#{staged_path}/Pac the Man X.app/Contents"
  # end

  app 'Pac the Man X/Pac the Man X.app'

  caveats "Unfortunately, as stated on the official website #{homepage}, #{title} is no longer supported " +
            "or maintained by producer #{vendor}."
end
