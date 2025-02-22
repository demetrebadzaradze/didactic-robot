reset;

var y >= 0;
var x >= 0;

param treeAmount := 1700;
param timeAmount := 160;

param woodForX := 3;
param woodForY := 4;

param timeForX := 0.2;
param timeForY := 0.5;

param valueX := 20;
param valueY :=30;

subject to woodConstaint: woodForX * x + woodForY * y <= treeAmount;
subject to timeConstaint: timeForX * x + timeForY * y <= timeAmount;

maximize f: valueX * x + valueY * y;

solve;

display x,y,f;