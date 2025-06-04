nombre = ["101.mat"]
nombres = [""];

if ~ismember(nombre, nombres)
    nombres = [nombres, nombre];
end
nombres
nombre = "102.mat";

if ~ismember(nombre, nombres)
    nombres = [nombres, nombre];
end
nombres
