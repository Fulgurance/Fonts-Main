class Target < ISM::Software

    def extract
    end

    def prepare
    end

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont")
        runGunzipCommand(["-c","unifont-13.0.06.pcf.gz",">","#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}usr/share/fonts/unifont/unifont.pcf"],workDirectoryPath)
    end

end
