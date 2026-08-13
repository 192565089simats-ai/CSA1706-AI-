% Diet suggestions based on disease

diet(diabetes, "Eat vegetables, whole grains and low-sugar foods").
diet(diabetes, "Avoid sugary drinks and sweets").

diet(hypertension, "Eat fruits, vegetables and low-salt foods").
diet(hypertension, "Avoid excess salt and processed foods").

diet(anemia, "Eat iron-rich foods such as spinach and legumes").
diet(anemia, "Include vitamin-C-rich foods").

diet(obesity, "Eat vegetables, fruits and balanced meals").
diet(obesity, "Avoid excess processed and sugary foods").

% Function to suggest diet
suggest_diet(Disease) :-
    diet(Disease, Suggestion),
    write(Suggestion),
    nl.
