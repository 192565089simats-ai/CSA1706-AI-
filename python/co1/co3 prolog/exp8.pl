% Medical Diagnosis System

% Symptoms
symptom(fever).
symptom(cough).
symptom(headache).
symptom(body_pain).
symptom(sore_throat).
symptom(runny_nose).

% Diagnosis rules
diagnosis(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_pain).

diagnosis(cold) :-
    symptom(cough),
    symptom(runny_nose),
    symptom(sore_throat).

diagnosis(migraine) :-
    symptom(headache),
    symptom(fever).

% Function to display diagnosis
check_disease :-
    diagnosis(Disease),
    write('Possible disease: '),
    write(Disease),
    nl.
