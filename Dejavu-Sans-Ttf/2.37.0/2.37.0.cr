class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/dejavu")
        copyFile(Dir["#{buildDirectoryPath(false)}/ttf/*.ttf"],"#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/dejavu/")
    end

end
