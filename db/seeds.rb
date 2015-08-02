# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "neverrabbit@163.com", name: "neverabbit", password: "wang1987127", password_confirmation: "wang1987127", isadmin: 1)

imooc_description = "专注做好IT技能教育的MOOC，符合互联网发展潮流接地气儿的MOOC。我们免费，我们只教有用的，我们专心做教育。

MOOC：源于国外，Massive（大规模）Open（开放）Online（在线）Course（课程）。"
Web.create!(name: "慕课网", address: "imooc.com", description: imooc_description, image_big: File.open("/Users/neverabbit/Documents/Bootstrap/Demo/image_source/imooc/imooc.jpg") )

yeeyan_description = "发现、翻译、分享中文之外的互联网精华。

译言（http://yeeyan.org）创办于 2006 年，是国内最大的译者社区网站。"
Web.create!(name: "译言网", address: "yeeyan.org", description: yeeyan_description, image_big: File.open("/Users/neverabbit/Documents/Bootstrap/Demo/image_source/yeeyan/yeeyan.jpg") )

meiriyiwen_description = "每日一文是一个简单的中文阅读网站。

没有繁复的登录注册，没有复杂的算法，不猜你喜欢。 我们相信阅读和人之间微妙的关系。

每天花10分钟阅读一篇文章，一个月可以有大约50000字的阅读量，一年有近60万字的阅读量，专注、执着，每天阅读。

只为简单的纯净的阅读而生。 "
Web.create!(name: "每日一文", address: "meiriyiwen.com", description: meiriyiwen_description, image_big: File.open("/Users/neverabbit/Documents/Bootstrap/Demo/image_source/meiriyiwen/meiriyiwen.jpg") )