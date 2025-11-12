class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/unifont")

        copyFile(   "#{buildDirectoryPath}/Unifont-16.0.1.pcf",
                    "#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/unifont/unifont.pcf")
    end

end
