class Target < ISM::Software

    def configure
        super

        configureSource(arguments:  "--prefix=/usr",
                        path:       buildDirectoryPath)
    end

    def build
        super

        makeSource( arguments:  "otb",
                    path: buildDirectoryPath)
    end

    def prepareInstallation
        super

        makeSource( arguments:  "DESTDIR=#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath} install-otb install fontdir",
                    path:       buildDirectoryPath)
    end

end
