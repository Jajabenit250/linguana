course = Course.find_by_name("Spanish")
skill = Skill.find_by(name: "Adjectives", course_id: course.id)

lesson = Lesson.create!(
  name: "Lesson 3",
  skill_id: skill.id
)

  mcq1 = Exercise.create!(
    lesson_id: lesson.id,
    thing_to_translate: "La camisa roja",
    exercise_type: "multiple_choice"
  )

  choice_1_1 = AnswerChoice.create!(
    body: "The red shirt",
    exercise_id: mcq1.id,
    is_correct: true

  )
  choice_1_3 = AnswerChoice.create!(
    body: "The purple cow",
    exercise_id: mcq1.id
  )
  choice_1_4 = AnswerChoice.create!(
    body: "The green grass",
    exercise_id: mcq1.id
  )


  mcq2 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "El hombre triste"
  )
  choice_2_1 = AnswerChoice.create!(
    body: "The sad man",
    exercise_id: mcq2.id,
    is_correct: true,
  )
  choice_2_2 = AnswerChoice.create!(
    body: "The happy man",
    exercise_id: mcq2.id
  )
  choice_2_3 = AnswerChoice.create!(
    body: "The green man",
    exercise_id: mcq2.id
  )


  mcq3 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "La persona amable"
  )
  choice_3_1 = AnswerChoice.create!(
    body: "The friendly person",
    is_correct: true,
    exercise_id: mcq3.id,
  )
  choice_3_2 = AnswerChoice.create!(
    body: "The old woman",
    exercise_id: mcq3.id
  )

  choice_3_4 = AnswerChoice.create!(
    body: "The golden goose",
    exercise_id: mcq3.id
  )

  mcq4 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "El niño rápido"
  )
  choice_4_2 = AnswerChoice.create!(
    body: "The fast child",
    is_correct: true,
    exercise_id: mcq4.id
  )
  choice_4_3 = AnswerChoice.create!(
    body: "The black cat",
    exercise_id: mcq4.id
  )
  choice_4_4 = AnswerChoice.create!(
    body: "The quiet dog",
    exercise_id: mcq4.id
  )

  mcq5 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The slow dog"
  )

  choice_5_1 = AnswerChoice.create!(
    exercise_id: mcq5.id,
    body: "El perro lente",
    is_correct: true,
  )

  choice_5_3 = AnswerChoice.create!(
  body: "El perro caliente",
    exercise_id: mcq5.id
  )
  choice_5_4 = AnswerChoice.create!(
    body: "El nuevo gato",
    exercise_id: mcq5.id
  )

  mcq6 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "El nuevo gato"
  )

  choice_6_1 = AnswerChoice.create!(
    body: "The new cat",
    is_correct: true,
    exercise_id: mcq6.id,
  )
  choice_6_3 = AnswerChoice.create!(
    body: "The old person",
    exercise_id: mcq6.id
  )
  choice_6_4 = AnswerChoice.create!(
    body: "The green burger",
    exercise_id: mcq6.id
  )

  mcq7 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "La casa importante"
  )

  choice_7_1 = AnswerChoice.create!(
    body: "The important house",
    is_correct: true,
    exercise_id: mcq7.id,
  )
  choice_7_2 = AnswerChoice.create!(
    body: "The greedy man",
    exercise_id: mcq7.id
  )
  choice_7_3 = AnswerChoice.create!(
    body: "The red house",
    exercise_id: mcq7.id
  )


  mcq8 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "El gato negro"
  )

  choice_8_1= AnswerChoice.create!(
    body: "The black cat",
    is_correct: true,
    exercise_id: mcq8.id,
  )
  choice_8_3 = AnswerChoice.create!(
    body: "The black dog",
    exercise_id: mcq8.id
  )
  choice_8_4 = AnswerChoice.create!(
    body: "The yellow-green cat",
    exercise_id: mcq8.id
  )
