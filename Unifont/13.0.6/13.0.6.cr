class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont")

        copyFile("#{buildDirectoryPath(false)}/unifont-13.0.06.pcf","#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont/unifont.pcf")
    end

end
