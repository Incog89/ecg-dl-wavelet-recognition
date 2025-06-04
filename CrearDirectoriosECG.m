function CrearDirectoriosECG(ECGData,FolderPadre,FolderData)

FolderRaiz = FolderPadre;
FolderLocal = FolderData;

if ~isfolder(FolderLocal) 
    if ~isfolder(FolderLocal) 
        mkdir(fullfile(FolderRaiz,FolderLocal))
    end
end

folderLabels = unique(ECGData.Labels);
for i = 1:numel(folderLabels)
    mkdir(fullfile(FolderRaiz,FolderLocal,char(folderLabels(i))));
end
end