% Fruit and Color

fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(orange, orange).
fruit_color(grapes, green).
fruit_color(mango, yellow).
fruit_color(watermelon, green).

% Function to find fruit and its color
fruit(Fruit, Color) :-
    fruit_color(Fruit, Color).
