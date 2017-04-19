require 'telegram/bot'
 
token = 'TOKEN'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/halo'
      bot.api.send_message(chat_id: message.chat.id, text: "Selamat Datang Kawan.....")
    when '/lokasi'
      bot.api.send_location(chat_id: message.chat.id, latitude: -7.754897, longitude: 110.3549345)
    when '/res'
      bot.api.send_message(chat_id: message.chat.id, text: "Pie?")
    when '/gekngpo'
      bot.api.send_message(chat_id: message.chat.id, text: "Medang kopi")
    when '/sabalong'
      bot.api.send_message(chat_id: message.chat.id, text: "Bocah Koyo Asu..")
    when '/malam'
      bot.api.send_message(chat_id: message.chat.id, text: "Iyo aku reti")
    when '/asu'
      bot.api.send_message(chat_id: message.chat.id, text: "Koe kui sek koyo asu")
    end
  end
end
