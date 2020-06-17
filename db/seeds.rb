# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CutType.create(cut_name: 'ショート') if CutType.find_by(cut_name: 'ショート').nil?
CutType.create(cut_name: 'ボブ') if CutType.find_by(cut_name: 'ボブ').nil?
CutType.create(cut_name: 'ミディアム') if CutType.find_by(cut_name: 'ミディアム').nil?
CutType.create(cut_name: 'ロング') if CutType.find_by(cut_name: 'ロング').nil?

ColorType.create(color_name: 'おしゃれ染め') if ColorType.find_by(color_name: 'おしゃれ染め').nil?
ColorType.create(color_name: '黒染め') if ColorType.find_by(color_name: '黒染め').nil?
ColorType.create(color_name: 'ブリーチ') if ColorType.find_by(color_name: 'ブリーチ').nil?
ColorType.create(color_name: 'グレーカラー') if ColorType.find_by(color_name: 'グレーカラー').nil?

PermType.create(perm_name: 'カール') if PermType.find_by(perm_name: 'カール').nil?
PermType.create(perm_name: '縮毛矯正') if PermType.find_by(perm_name: '縮毛矯正').nil?

SetType.create(set_name: '和装') if SetType.find_by(set_name: '和装').nil?
SetType.create(set_name: '洋装') if SetType.find_by(set_name: '洋装').nil?

Tag.create(tag_name: 'カット') if Tag.find_by(tag_name: 'カット').nil?
Tag.create(tag_name: 'カラー') if Tag.find_by(tag_name: 'カラー').nil?
Tag.create(tag_name: 'パーマ') if Tag.find_by(tag_name: 'パーマ').nil?
Tag.create(tag_name: 'セット') if Tag.find_by(tag_name: 'セット').nil?


