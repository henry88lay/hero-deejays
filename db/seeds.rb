
require "open-uri"

dj1 = Dj.new(name: "Tiesto", address: "68 Grattan St, Carlton", dj_price: 600, genre: "Electronic Dance", description: "Tijs Michiel Verwest OON, better known by his stage name Tiësto, is a Dutch DJ and record producer from Breda. He was named the Greatest DJ of All Time by Mix magazine in a poll voted by the fans. In 2013, he was voted by DJ Mag readers as the best DJ of the last 20 years", email: "tiesto@gmail.com", manager_id: 1)
file = URI.open('https://img.redbull.com/images/c_fill,g_auto,w_1900,h_1267/q_auto,f_auto/redbullcom/2016/08/19/1331812906704_2/tiesto')
dj1.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj1.save!


dj2 = Dj.new(name: "Steve Aoki", address: "110 Lygon St, Carlton", dj_price: 550, genre: "Electronic Dance", description: "Steven Hiroyuki Aoki is an American entertainer, DJ, record producer and music executive. In 2012, Pollstar designated Aoki as the highest grossing dance artist in North America from tours", email: "steveaoki@gmail.com", manager_id: 1)
file = URI.open('https://s3-us-west-1.amazonaws.com/static-spin-com/files/2020/04/Steve_Silvercoat_1_sml_opt-1586284930-640x427.jpg')
dj2.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj2.save!

dj3 = Dj.new(name: "Martin Garrix", address: "234 Faraday St, Carlton", dj_price: 750, genre: "Electronic Dance", description: "Martijn Gerard Garritsen, professionally known as Martin Garrix, is a Dutch DJ and record producer from Amstelveen. His most known singles are Animals, In the Name of Love, and Scared to be Lonely. He was ranked number one on DJ Mag's Top 100 DJs list for three consecutive years", email: "martin@gmail.com", manager_id: 1)
file = URI.open('https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fisisbriones%2Ffiles%2F2017%2F10%2FRachelKaplan-1899_preview-1200x800.jpg')
dj3.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj3.save!

dj4 = Dj.new(name: "Calvin Harris", address: "121 Cardigan St, Carlton", dj_price: 800, genre: "Electronic Dance", description: "Adam Richard Wiles, known professionally as Calvin Harris, is a Scottish DJ, record producer, singer, and songwriter. He is known for his singles We Found Love, This Is What You Came For, Summer, Feel So Close, Outside, Feels, and One Kiss", email: "calvin@gmail.com", manager_id: 1)
file = URI.open('https://media.npr.org/assets/img/2012/12/07/calvin_harris_press_shot_credit_rukes_wide-78e817bdc90268316b28dfc940b3a3113e1cc006-s1500-c85.jpg')
dj4.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj4.save!

dj5 = Dj.new(name: "Skrillex", address: "539 Swanton St, Carlton", dj_price: 700, genre: "Electronic Dance", description: "Sonny John Moore, known professionally as Skrillex, is an American record producer, DJ, musician, singer and songwriter.", email: "calvin@gmail.com", manager_id: 1)
file = URI.open('https://static.billboard.com/files/media/Skrillex-Scary-Monsters-Nice-Sprites-2019-billboard-1500-compressed.jpg?1')
dj5.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj5.save!

dj6 = Dj.new(name: "Armin van Buuren", address: "77 Barry St, Carlton", dj_price: 700, genre: "Electronic Dance", description: "Armin Jozef Jacobus Daniël van Buuren OON is a Dutch DJ and record producer from Leiden, South Holland. Since 2001, he has hosted A State of Trance, a weekly radio show, which is broadcast to nearly 40 million listeners in 84 countries on over 100 FM radio stations.", email: "Armin@gmail.com", manager_id: 1)
file = URI.open('https://weraveyou.com/wp-content/uploads/2020/04/Armin-van-Buuren-Press.jpg')
dj6.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dj6.save!
