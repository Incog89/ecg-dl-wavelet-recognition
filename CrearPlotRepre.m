function CrearPlotRepre(ECGData)

folderLabels = unique(ECGData.Labels);

for k=1:3
    ecgTipo = folderLabels{k};
    ind = find(ismember(ECGData.Labels,ecgTipo));
    subplot(3,1,k)
    plot(ECGData.Data(ind(1),1:1000));
    grid on
    title(ecgTipo)
end
end