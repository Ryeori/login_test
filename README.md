# danshulgin_login

## Заметки

- Я пережал все картинки в .webp, потому что 1мб на картинку - непозволительно много, теперь они занимают в 10-15 раз меньше места
- Логин рандомно логинит (сделано для теста, функция \_fakeEmailSignIn), может потребоваться несколько раз нажать.
- Регистрация сразу же логинит
- Заместо страницы с ошибкой вылетает flushbar с грустным Маском и ошибкой
- Юзал BLoC, GetIt, Freezed
- Структура проекта построена по фичам, сейчас как бы одна фича аутентификации
- Для форма добавлены валидаторы, они валяются в core/utils
- Тап в любое свободное место убирает фокус с текстовых полей

- Чтобы стратануть проект нужно выполнить:
  flutter pub run build_runner build --delete-conflicting-outputs

- Нажать F5
