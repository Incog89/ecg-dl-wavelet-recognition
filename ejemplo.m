ecg = load("100m.mat");

val = ecg.val;
val1 = val(1:1, :);
val2 = val(2:end, :);
save('ecg1.mat', 'val1');
save('ecg2.mat', 'val2');

%nos quedamos en recuperar los datos de mat, segundo boton para ser exacto

