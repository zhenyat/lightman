# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create role: 2, last_name: 'Dummy', first_name: 'Admin', email: 'dummy@mail.ru', password: '123123123', password_confirmation: '123123123'

Subject.create name: 'ukrainian', title: 'Украинский язык и литература'
Subject.create name: 'russian',   title: 'Русский язык и литература'
Subject.create name: 'math',      title: 'Математика'
Subject.create name: 'physics',   title: 'Физика'
Subject.create name: 'chemistry', title: 'Химия'
Subject.create name: 'history',   title: 'История Украины'
Subject.create name: 'english',   title: 'Английский язык'
Subject.create name: 'german',    title: 'Немецкий язык'
Subject.create name: 'french',    title: 'Французский язык'
Subject.create name: 'spanish',   title: 'Испанский язык'

Direction.create name: "subjects", title: "Учебные дисциплины"
Direction.create name: "clubs",    title: "Клубы по интересам"
Direction.create name: "tours",    title: "Образовательный туризм"


Newsbite.create title: "Первая новость", published_on: "2017-08-23", content: "Lorem ipsum dolor sit amet, dicam feugait id eam, mei accusam torquatos id, duis urbanitas ne qui. Sea in everti antiopam, ei vel ferri augue, pri in admodum fierent qualisque. Eu habeo dissentias nam, ut scaevola periculis sit. Nostro senserit mei ne."   
Newsbite.create title: "Вторая новость", published_on: "2017-09-05", content: "Has discere labores hendrerit ex, menandri assueverit sea no, te molestiae reformidans pri. Ea vis phaedrum indoctum, nam graeci epicuri insolens et, per at stet erant. Ne error dicit duo, ex mei illud adipisci. His no probo nobis dissentiet, ignota iuvaret vel at."
Newsbite.create title: "Третья новость", published_on: "2017-09-10", content: "Modo probatus accusata an vix, ne vitae doctus assentior sit. Ius eu apeirian menandri assueverit, mel et porro tibique. Ut est epicurei rationibus mnesarchum. At diam euripidis duo. Vim cu modus reformidans, et tota eligendi platonem vis. Per ex enim legendos consulatu.\r\n"
