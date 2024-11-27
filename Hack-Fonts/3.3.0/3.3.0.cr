class Target < ISM::Software
    
    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}")

        moveFile(   path:       "#{buildDirectoryPath}/usr",
                    newPath: "#{builtSoftwareDirectoryPath}/#{Ism.settings.rootPath}/usr")
    end

end
