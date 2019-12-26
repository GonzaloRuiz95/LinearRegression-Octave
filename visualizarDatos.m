function visualizarDatos(data,X,y, X_train, y_train, theta_displacement,theta_weight,theta_acceleration,theta,theta2,J_history)
# Grafica 1

figure();
subplot(221);
hist (y, 10,'b');
title ("mgp");

# Grafica 2

usa = find(X(:,8)==1);
europa = find(X(:,8)==2);
japon = find(X(:,8)==3);



subplot(222);
plot(data(usa,2),y(usa),"k+r")
hold on;
plot(data(europa,2),y(europa),"k+g")
plot(data(japon,2),y(japon),"k+b")
plot(X(:,3),theta_displacement(2,1)*X(:,3)+theta_displacement(1,1), '-')
xlabel("Desplazamiento");
ylabel("MPG");
legend("USA","Europa","Japon")
hold off;


# Grafica 3
subplot(223);
plot(data(usa,4),y(usa),"k+r")
hold on;
plot(data(europa,4),y(europa),"k+g")
plot(data(japon,4),y(japon),"k+b")
plot(X(:,5),theta_weight(2,1)*X(:,5)+theta_weight(1,1), '-');
xlabel("Peso");
ylabel("MPG");
hold off;

# Grafica 4
subplot(224);
plot(data(usa,5),y(usa),"k+r")
hold on;
plot(data(europa,5),y(europa),"k+g")
plot(data(japon,5),y(japon),"k+b")
plot(X(:,6),theta_acceleration(2,1)*X(:,6)+theta_acceleration(1,1), '-')
xlabel("Aceleracion");
ylabel("MPG");
hold off;

# Grafica 5
figure();
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
endfunction
