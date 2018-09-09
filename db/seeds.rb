# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all

tasks = Task.create([
  { title: 'Comer una empanda', image:'https://www.enmicocinahoy.cl/wp-content/uploads/2008/09/empanada-pino-h-2.jpg', done: false },
  { title: 'Bailar una patita', image: 'http://www.radiozero.cl/static/2017/09/18--1200x500.jpg', done: false  },
  { title: 'Tomarse un Terremoto', image: 'https://amqueretaro.com/wp-content/uploads/2015/06/Las-bebidas-con-las-que-los-aficionadas-acompanan-la-Copa-America1-700x3251.jpg', done: false  },
  { title: 'Jugar una pichanga', image: 'https://www.soy502.com/sites/default/files/styles/full_node/public/0310_clorinda_violencia_g.jpg', done: false },
  { title: 'Ir a una fonda', image: 'https://media.biobiochile.cl/wp-content/uploads/2013/09/Paola-Williamson-C2-730x438.jpg', done: false },
  { title: 'Tratar de no curarse raja', image: 'https://i.ytimg.com/vi/R7SbP_tnqxs/hqdefault.jpg', done: false },
  { title: 'Jugar al emboque', image:'https://www.tvn.cl/incoming/ppaljpg-2486046/ALTERNATES/w1024h768/ppal.jpg', done: false },
  { title: 'Compartir en familia un asado', image: 'http://img.soy-chile.cl/Fotos/2015/04/03/file_20150403164701.jpg', done: false },
  { title: 'Estresarse en el trabajo', image: 'https://st3.depositphotos.com/13768208/18097/i/1600/depositphotos_180978044-stock-photo-stressed-businessman-in-office-scream.jpg', done: false }])

  User.destroy_all

  6.times do |i|
    User.create(name: "Usuario#{i + 1}",
                photo: "http://lorempixel.com/400/200/technics/#{i + 1}/",
                email: "usuario#{i + 1}@gmail.com",
                password: '12345678')
  end
