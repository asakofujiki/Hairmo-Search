# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CutType.create(cut_name: 'ショート')
CutType.create(cut_name: 'ボブ')
CutType.create(cut_name: 'ミディアム')
CutType.create(cut_name: 'ロング')

ColorType.create(color_name: 'おしゃれ染め')
ColorType.create(color_name: '黒染め')
ColorType.create(color_name: 'ブリーチ')
ColorType.create(color_name: 'グレーカラー')

PermType.create(perm_name: 'カール')
PermType.create(perm_name: '縮毛矯正')

SetType.create(set_name: '和装')
SetType.create(set_name: '洋装')

Tag.create(tag_name: 'カット')
Tag.create(tag_name: 'カラー')
Tag.create(tag_name: 'パーマ')
Tag.create(tag_name: 'セット')
