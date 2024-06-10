class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}usr/share/fonts/dejavu")
        copyFile(Dir["#{buildDirectoryPath}/ttf/*.ttf"],"#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}usr/share/fonts/dejavu/")
    end

end
