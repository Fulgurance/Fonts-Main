class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/unifont")

        copyFile(   "#{buildDirectoryPath}/Unifont-#{@information.version}.pcf",
                    "#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/unifont/unifont.pcf")
    end

end
