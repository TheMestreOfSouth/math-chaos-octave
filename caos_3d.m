% Simulação do Atraidor de Lorenz - Teoria do Caos
clear; clc;

% Parâmetros que definem o comportamento do sistema
sigma = 10;
beta = 8/3;
rho = 28;

% Condições iniciais (onde tudo começa)
x = 0.1; y = 0.1; z = 0.1;
dt = 0.01; % Passo do tempo (quanto menor, mais suave)
pontos = 5000; % Quantidade de pontos na simulação

data = zeros(pontos, 3);

% O cálculo matemático pesado
for i = 1:pontos
    dx = sigma * (y - x);
    dy = x * (rho - z) - y;
    dz = x * y - beta * z;

    x = x + dx * dt;
    y = y + dy * dt;
    z = z + dz * dt;

    data(i, :) = [x, y, z];
end
% A parte visual personalizada: Fundo Branco e Linha Rosa/Vermelha
figure('Color', [1 1 1]); % [1 1 1] é Branco puro
plot3(data(:,1), data(:,2), data(:,3), 'Color', [1 0 0.5], 'LineWidth', 1); % Rosa/Vermelho neon
grid on;

% Ajustando os eixos para combinar com o fundo branco
set(gca, 'Color', [1 1 1], ...
         'XColor', [0 0 0], ...
         'YColor', [0 0 0], ...
         'ZColor', [0 0 0]);

title('Atraidor de Lorenz: Estilo Personalizado', 'Color', [0 0 0]);
view(45, 35);
