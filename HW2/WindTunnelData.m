%{ 
 Alyssa Rose       2-3-18

 Computes the predicted force for values of 
 velocity ranging from 0 to 100 m/s using equation
 to compare with known data
%}

%data fromm given data points
F = [25, 70, 380, 550, 610, 1220, 830, 1450];
v = [10, 20, 30, 40, 50, 60, 70, 80];

%data for predicted force values
velocity = linspace (0, 100, 100);
forcePredicted = 0.271*velocity.^(1.91);

%plots "data" with red circles and "model" with black dashed line
plot(v,F,'ro', velocity, forcePredicted,'black--')
xlabel('Velocity, m/s')
ylabel('Force, N')
title('Wind tunnel data vs. model')
legend('data', 'model')


