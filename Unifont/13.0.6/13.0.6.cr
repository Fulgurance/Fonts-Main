class Target < ISM::Software

    def extract
    end

    def prepare
    end

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont")

        runGunzipCommand(["unifont-13.0.06.pcf.gz"],workDirectoryPath)
        copyFile("#{workDirectoryPath(false)}/unifont-13.0.06.pcf","#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont/unifont.pcf")
    end

end
