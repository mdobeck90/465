# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags
load "#{Rails.root}/db/words.rb"

def gen_tag
  str = String.new
  len = rand(4) + 1
  for i in 1..len
    str += $words.sample + " "
  end
  return str
end

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Lama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
  ]
)

images = Image.create(
  [
    { filename: "1.jpg", private: "f", user_id: 14 },
    { filename: "2.jpg", private: "f", user_id: 12 },
    { filename: "3.jpg", private: "f", user_id: 2 },
    { filename: "4.jpg", private: "t", user_id: 13 },
    { filename: "5.jpg", private: "t", user_id: 2 },
    { filename: "6.jpg", private: "f", user_id: 3 },
    { filename: "7.jpg", private: "f", user_id: 1 },
    { filename: "8.jpg", private: "f", user_id: 26 },
    { filename: "9.jpg", private: "f", user_id: 23 },
    { filename: "10.jpg", private: "f", user_id: 11 },
    { filename: "11.jpg", private: "f", user_id: 8 },
    { filename: "12.jpg", private: "f", user_id: 4 },
    { filename: "13.jpg", private: "t", user_id: 17 },
    { filename: "14.jpg", private: "t", user_id: 3 },
    { filename: "15.jpg", private: "f", user_id: 24 },
    { filename: "16.jpg", private: "t", user_id: 10 },
    { filename: "17.jpg", private: "f", user_id: 15 },
    { filename: "18.jpg", private: "f", user_id: 6 },
    { filename: "19.jpg", private: "f", user_id: 24 },
    { filename: "20.jpg", private: "t", user_id: 10 },
    { filename: "21.jpg", private: "t", user_id: 2 },
    { filename: "22.jpg", private: "f", user_id: 4 },
    { filename: "23.jpg", private: "f", user_id: 5 },
    { filename: "24.jpg", private: "f", user_id: 19 },
    { filename: "25.jpg", private: "t", user_id: 18 },
    { filename: "26.jpg", private: "f", user_id: 2 },
    { filename: "27.jpg", private: "t", user_id: 14 },
    { filename: "28.jpg", private: "t", user_id: 3 },
    { filename: "29.jpg", private: "t", user_id: 25 },
    { filename: "30.jpg", private: "t", user_id: 7 },
    { filename: "31.jpg", private: "f", user_id: 24 },
    { filename: "32.jpg", private: "f", user_id: 11 },
    { filename: "33.jpg", private: "f", user_id: 15 },
    { filename: "34.jpg", private: "f", user_id: 5 },
    { filename: "35.jpg", private: "f", user_id: 12 },
    { filename: "36.jpg", private: "f", user_id: 13 },
    { filename: "37.jpg", private: "f", user_id: 1 },
    { filename: "38.jpg", private: "f", user_id: 17 },
    { filename: "39.jpg", private: "f", user_id: 23 },
    { filename: "40.jpg", private: "t", user_id: 8 },
    { filename: "41.jpg", private: "f", user_id: 16 },
    { filename: "42.jpg", private: "f", user_id: 13 },
    { filename: "43.jpg", private: "f", user_id: 15 },
    { filename: "44.jpg", private: "t", user_id: 8 },
    { filename: "45.jpg", private: "f", user_id: 23 },
    { filename: "46.jpg", private: "t", user_id: 11 },
    { filename: "47.jpg", private: "f", user_id: 5 },
    { filename: "48.jpg", private: "t", user_id: 8 },
    { filename: "49.jpg", private: "f", user_id: 17 },
    { filename: "50.jpg", private: "f", user_id: 7 },
    { filename: "51.jpg", private: "t", user_id: 2 },
    { filename: "52.jpg", private: "f", user_id: 17 },
    { filename: "53.jpg", private: "t", user_id: 12 },
    { filename: "54.jpg", private: "t", user_id: 10 },
    { filename: "55.jpg", private: "t", user_id: 22 },
    { filename: "56.jpg", private: "f", user_id: 23 },
    { filename: "57.jpg", private: "t", user_id: 4 },
    { filename: "58.jpg", private: "t", user_id: 17 },
    { filename: "59.jpg", private: "f", user_id: 2 },
    { filename: "60.jpg", private: "f", user_id: 9 },
    { filename: "61.jpg", private: "f", user_id: 13 },
    { filename: "62.jpg", private: "f", user_id: 20 },
    { filename: "63.jpg", private: "t", user_id: 18 },
    { filename: "64.jpg", private: "f", user_id: 12 },
    { filename: "65.jpg", private: "f", user_id: 16 },
    { filename: "66.jpg", private: "f", user_id: 14 },
    { filename: "67.jpg", private: "t", user_id: 14 },
    { filename: "68.jpg", private: "f", user_id: 23 },
    { filename: "69.jpg", private: "t", user_id: 17 },
    { filename: "70.jpg", private: "f", user_id: 10 },
    { filename: "71.jpg", private: "t", user_id: 1 },
    { filename: "72.jpg", private: "f", user_id: 1 },
    { filename: "73.jpg", private: "f", user_id: 18 },
    { filename: "74.jpg", private: "f", user_id: 23 },
    { filename: "75.jpg", private: "f", user_id: 15 },
    { filename: "76.jpg", private: "f", user_id: 19 },
    { filename: "77.jpg", private: "t", user_id: 3 },
    { filename: "78.jpg", private: "f", user_id: 21 },
    { filename: "79.jpg", private: "t", user_id: 17 },
    { filename: "80.jpg", private: "f", user_id: 6 },
    { filename: "81.jpg", private: "f", user_id: 2 },
    { filename: "82.jpg", private: "f", user_id: 1 },
    { filename: "83.jpg", private: "t", user_id: 24 },
    { filename: "84.jpg", private: "t", user_id: 16 },
    { filename: "85.jpg", private: "f", user_id: 3 },
    { filename: "86.jpg", private: "f", user_id: 3 },
    { filename: "87.jpg", private: "f", user_id: 8 },
    { filename: "88.jpg", private: "t", user_id: 8 },
    { filename: "89.jpg", private: "f", user_id: 22 },
    { filename: "90.jpg", private: "f", user_id: 18 },
    { filename: "91.jpg", private: "t", user_id: 13 },
    { filename: "92.jpg", private: "f", user_id: 14 },
    { filename: "93.jpg", private: "f", user_id: 26 },
    { filename: "94.jpg", private: "t", user_id: 11 },
    { filename: "95.jpg", private: "f", user_id: 17 },
    { filename: "96.jpg", private: "f", user_id: 24 },
    { filename: "97.jpg", private: "t", user_id: 10 },
    { filename: "98.jpg", private: "f", user_id: 11 },
    { filename: "99.jpg", private: "t", user_id: 20 },
    { filename: "100.jpg", private: "f", user_id: 25 },
    { filename: "101.jpg", private: "f", user_id: 1 },
    { filename: "102.jpg", private: "t", user_id: 2 },
    { filename: "103.jpg", private: "f", user_id: 8 },
    { filename: "104.jpg", private: "t", user_id: 9 },
    { filename: "105.jpg", private: "f", user_id: 17 },
    { filename: "106.jpg", private: "f", user_id: 15 },
    { filename: "107.jpg", private: "f", user_id: 14 },
    { filename: "108.jpg", private: "f", user_id: 20 },
    { filename: "109.jpg", private: "t", user_id: 13 },
    { filename: "110.jpg", private: "t", user_id: 7 },
    { filename: "111.jpg", private: "f", user_id: 23 },
    { filename: "112.jpg", private: "f", user_id: 23 },
    { filename: "113.jpg", private: "t", user_id: 3 },
    { filename: "114.jpg", private: "f", user_id: 16 },
    { filename: "115.jpg", private: "f", user_id: 9 },
    { filename: "116.jpg", private: "t", user_id: 22 },
    { filename: "117.jpg", private: "f", user_id: 21 },
    { filename: "118.jpg", private: "f", user_id: 20 },
    { filename: "119.jpg", private: "f", user_id: 12 },
    { filename: "120.jpg", private: "t", user_id: 7 },
    { filename: "121.jpg", private: "f", user_id: 5 },
    { filename: "122.jpg", private: "t", user_id: 8 },
    { filename: "123.jpg", private: "f", user_id: 1 },
    { filename: "124.jpg", private: "t", user_id: 9 },
    { filename: "125.jpg", private: "t", user_id: 8 },
    { filename: "126.jpg", private: "t", user_id: 18 },
    { filename: "127.jpg", private: "t", user_id: 20 },
    { filename: "128.jpg", private: "f", user_id: 11 },
    { filename: "129.jpg", private: "f", user_id: 23 },
    { filename: "130.jpg", private: "f", user_id: 19 },
    { filename: "131.jpg", private: "f", user_id: 19 },
    { filename: "132.jpg", private: "f", user_id: 17 },
    { filename: "133.jpg", private: "f", user_id: 17 },
    { filename: "134.jpg", private: "f", user_id: 19 },
    { filename: "135.jpg", private: "f", user_id: 15 },
    { filename: "136.jpg", private: "f", user_id: 7 },
    { filename: "137.jpg", private: "f", user_id: 23 },
    { filename: "138.jpg", private: "t", user_id: 14 },
    { filename: "139.jpg", private: "t", user_id: 17 },
    { filename: "140.jpg", private: "t", user_id: 14 },
    { filename: "141.jpg", private: "t", user_id: 12 },
    { filename: "142.jpg", private: "f", user_id: 4 },
    { filename: "143.jpg", private: "t", user_id: 23 },
    { filename: "144.jpg", private: "t", user_id: 2 },
    { filename: "145.jpg", private: "f", user_id: 18 },
    { filename: "146.jpg", private: "t", user_id: 2 },
    { filename: "147.jpg", private: "f", user_id: 14 },
    { filename: "148.jpg", private: "f", user_id: 1 },
    { filename: "149.jpg", private: "f", user_id: 5 },
    { filename: "150.jpg", private: "t", user_id: 7 },
    { filename: "151.jpg", private: "f", user_id: 21 },
    { filename: "152.jpg", private: "t", user_id: 15 },
    { filename: "153.jpg", private: "f", user_id: 3 },
    { filename: "154.jpg", private: "f", user_id: 18 },
    { filename: "155.jpg", private: "f", user_id: 2 },
    { filename: "156.jpg", private: "t", user_id: 20 },
    { filename: "157.jpg", private: "t", user_id: 11 },
    { filename: "158.jpg", private: "f", user_id: 24 },
    { filename: "159.jpg", private: "t", user_id: 15 },
    { filename: "160.jpg", private: "f", user_id: 3 },
    { filename: "161.jpg", private: "t", user_id: 23 },
    { filename: "162.jpg", private: "t", user_id: 22 },
    { filename: "163.jpg", private: "f", user_id: 24 },
    { filename: "164.jpg", private: "f", user_id: 18 },
    { filename: "165.jpg", private: "f", user_id: 18 },
    { filename: "166.jpg", private: "t", user_id: 24 },
    { filename: "167.jpg", private: "f", user_id: 13 },
    { filename: "168.jpg", private: "f", user_id: 4 },
    { filename: "169.jpg", private: "t", user_id: 20 },
    { filename: "170.jpg", private: "f", user_id: 11 },
    { filename: "171.jpg", private: "f", user_id: 1 },
    { filename: "172.jpg", private: "f", user_id: 13 },
    { filename: "173.jpg", private: "t", user_id: 5 },
    { filename: "174.jpg", private: "f", user_id: 21 },
    { filename: "175.jpg", private: "t", user_id: 11 },
    { filename: "176.jpg", private: "t", user_id: 3 },
    { filename: "177.jpg", private: "f", user_id: 2 },
    { filename: "178.jpg", private: "f", user_id: 21 },
    { filename: "179.jpg", private: "t", user_id: 21 },
    { filename: "180.jpg", private: "t", user_id: 5 },
    { filename: "181.jpg", private: "t", user_id: 13 },
    { filename: "182.jpg", private: "t", user_id: 25 },
    { filename: "183.jpg", private: "t", user_id: 20 },
    { filename: "184.jpg", private: "f", user_id: 18 },
    { filename: "185.jpg", private: "f", user_id: 25 },
    { filename: "186.jpg", private: "f", user_id: 9 },
    { filename: "187.jpg", private: "f", user_id: 10 },
    { filename: "188.jpg", private: "f", user_id: 12 },
    { filename: "189.jpg", private: "f", user_id: 7 },
    { filename: "190.jpg", private: "t", user_id: 9 },
    { filename: "191.jpg", private: "f", user_id: 6 },
    { filename: "192.jpg", private: "f", user_id: 26 },
    { filename: "193.jpg", private: "f", user_id: 12 },
    { filename: "194.jpg", private: "t", user_id: 9 },
    { filename: "195.jpg", private: "f", user_id: 10 },
    { filename: "196.jpg", private: "f", user_id: 21 },
    { filename: "197.jpg", private: "t", user_id: 19 },
    { filename: "198.jpg", private: "f", user_id: 25 },
    { filename: "199.jpg", private: "t", user_id: 25 },
    { filename: "201.jpg", private: "f", user_id: 21 },
    { filename: "202.jpg", private: "f", user_id: 25 },
    { filename: "203.jpg", private: "f", user_id: 9 },
    { filename: "204.jpg", private: "f", user_id: 21 },
    { filename: "205.jpg", private: "f", user_id: 20 },
    { filename: "206.jpg", private: "t", user_id: 8 },
    { filename: "207.jpg", private: "f", user_id: 18 },
    { filename: "208.jpg", private: "f", user_id: 9 },
  ]
)

images.each do |image|

  # create access objects for current image
  if image.private
    user_indexes = Array.new
    size = 3 + rand(6)
    for i in 0..size
      while (user_indexes[i] = (rand 25) + 1) == image.user_id
      end
      user_indexes.uniq!
    end
    user_indexes.each do |user_id|
      ImageUser.create(user_id: user_id, image_id: image.id)
    end
  end
  
  # create tags
  for i in 0..rand(4)
    tag_string = gen_tag
    #puts "Tag.create(" + image.id.to_s + ", " + tag_string + ")"
    Tag.create(image_id: image.id, str: tag_string)
  end
end
