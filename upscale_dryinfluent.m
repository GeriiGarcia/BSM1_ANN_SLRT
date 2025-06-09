function upscale_dryinfluent()
    % Cargar la variable desde el archivo
    data = load('dryinfluent.mat');

    % Asumimos que la variable se llama exactamente 'DRYINFLUENT'
    if isfield(data, 'DRYINFLUENT')
        dryinfluent = data.DRYINFLUENT;
    else
        error('La variable "DRYINFLUENT" no se encuentra en el archivo.');
    end

    % Factor de expansión
    factor = 15;

    % Separar el tiempo y los datos
    time = dryinfluent(:, 1);
    values = dryinfluent(:, 2:end);

    % Repetir los datos (excepto el tiempo)
    expanded_values = repelem(values, factor, 1);

    % Crear nuevo vector de tiempo con subpasos (1/96 días es 15 min; ahora submuestreado)
    dt = 1 / (96);  % Paso de tiempo en días
    expanded_time = (0:dt:dt*(size(expanded_values,1)-1))';

    % Combinar tiempo con datos
    expanded = [expanded_time, expanded_values];

    % Guardar resultado
    save('dryinfluent_expanded.mat', 'expanded');

    fprintf('Matriz expandida a tamaño %dx%d y guardada en dryinfluent_expanded.mat\n', ...
            size(expanded, 1), size(expanded, 2));
end
