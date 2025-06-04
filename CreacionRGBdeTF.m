function CreacionRGBdeTF(ECGData,FolderPadre,FolderHijo)

imageRoot = fullfile(FolderPadre,FolderHijo);

data = ECGData.Data;
labels = ECGData.Labels;

[~,signalLength] = size(data);

fb = cwtfilterbank(SignalLength=signalLength,VoicesPerOctave=12);
r = size(data,1);

for ii = 1:r
    cfs = abs(fb.wt(data(ii,:)));
    im = ind2rgb(round(rescale(cfs,0,255)),jet(128));
    
    imgFol = fullfile(imageRoot,char(labels(ii)));
    imArchivoNombre = char(labels(ii))+"_"+num2str(ii)+".jpg";
    imwrite(imresize(im,[224 224]),fullfile(imgFol,imArchivoNombre));
end
end