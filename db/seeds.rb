users = Users.create!([
                        { name: 'user1' },
                        { name: 'user2' },
                        { name: 'user3' }
                      ])

cat = Categories.create!([
                           { title: 'Ruby' },
                           { title: 'ML' },
                           { title: 'HTML' },
                           { title: 'C++' }
                         ])

tests = Test.create!([
                       { title: 'First',
                         level: 1,
                         category: cat[0],
                         author: users[0] },
                       { title: 'Second',
                         level: 2,
                         category: cat[1],
                         author: users[1] },
                       { title: 'Third',
                         level: 1,
                         category: cat[2],
                         author: users[2] },
                       { title: 'Fourth',
                         level: 0,
                         category: cat[3],
                         author: users[0] }
                     ])

quest = Questions.create!([
                            { title: 'First', test: tests[0] },
                            { title: 'Second', test: tests[1] },
                            { title: 'Third', test: tests[2] },
                            { title: 'Fourth', test: tests[3] }
                          ])

Answers.create!([
                  { title: '+', question: quest[0] },
                  { title: '-', correct: true, question: quest[1] },
                  { title: '+', question: quest[2] },
                  { title: '-', correct: true, question: quest[3] }
                ])

UserTests.create!([
                    { user: users[0], test: tests[0] },
                    { user: users[1], test: tests[1] },
                    { user: users[2], test: tests[2] },
                    { user: users[0], test: tests[3] }
                  ])
