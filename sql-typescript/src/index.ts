export interface ProgrammingLanguage {
  languageId: number;
  languageName: string;
}

export interface User {
  userId: number;
  username: string;
  programmingLanguageId: number;
}

const programmingLanguage: ProgrammingLanguage[] = [
  { languageId: 1, languageName: 'TypeScript' },
  { languageId: 2, languageName: 'JAVA' },
  { languageId: 3, languageName: 'C#' },
  { languageId: 4, languageName: 'Python' },
];

const users: User[] = [
  { userId: 1, username: 'Quan', programmingLanguageId: 1 },
  { userId: 2, username: 'Dung', programmingLanguageId: 2 },
  { userId: 3, username: 'Huy', programmingLanguageId: 3 },
  { userId: 4, username: 'Mi', programmingLanguageId: 3 },
];

const innerJoin = <Left, Right, Key>(
  arr1: Left[],
  arr2: Right[],
  key1: (item: Left) => Key,
  key2: (item: Right) => Key
): (Left & Right)[] => {
  const joined: (Left & Right)[] = [];

  let index = 1;
  for (const obj1 of arr1) {
    for (const obj2 of arr2) {
      if (key1(obj1) === key2(obj2)) {
        joined.push({ id: index++, ...obj1, ...obj2 });
      }
    }
  }

  return joined;
};

const query = innerJoin(
  users,
  programmingLanguage,
  (u) => u.programmingLanguageId,
  (pl) => pl.languageId
);

console.log(query);
