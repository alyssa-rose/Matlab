function c = ComponentsProduced(alumKg, plasKg, rubbKg)
%{
takes in kg of aluminum, plastic and rubber and outputs how
many and which componenets can be produced

Alyssa Rose  HW7  03-17-18
%}
%creates coefficient matrix
a = [0.015,0.017,0.019;0.00025,0.00033,0.00042;0.001,0.0012,0.0016];
%creates solution matrix (amount of resources available)
b = [alumKg;plasKg;rubbKg];
%finds answers to solution of linear equations
c = a\b
end