class Target < ISM::Software
    
    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/")

        moveFile("#{mainWorkDirectoryPath}/fonts/*","#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/usr/share/fonts/")
    end

end
