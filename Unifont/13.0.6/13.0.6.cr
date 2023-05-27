class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont")

        copyFile("#{buildDirectoryPath(false)}/Unifont-13.0.6.pcf","#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/unifont/unifont.pcf")
    end

end
