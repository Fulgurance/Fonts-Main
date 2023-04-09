class Target < ISM::Software

    def build
        super

        makeSource(["full-ttf"],buildDirectoryPath)
    end

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/dejavu")
        copyFile(Dir["#{buildDirectoryPath(false)}/build/*.ttf"],"#{builtSoftwareDirectoryPath(false)}#{Ism.settings.rootPath}usr/share/fonts/dejavu/")
    end

end
