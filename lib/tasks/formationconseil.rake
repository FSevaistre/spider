require 'csv'

namespace :scrap do
  task formationconseil: :environment do
    b = Watir::Browser.new
    b.goto 'http://e.sumatraformationconseil.com/mod/glossary/view.php?id=4797&mode=letter&hook=A&sortkey=&sortorder=asc'
    b.text_field(name: 'username').set '********@gmail.com'
    b.text_field(name: 'password').set '********'
    b.button(id: 'loginbtn').click
    b.link(text: 'Tout').click
    b.link(text: 'Tout').click
    tables = b.tables(class: 'glossarypost')
    CSV.open('formationconseil.csv', 'w') do |csv|
      tables.each_with_index do |t, index|
        puts "==== Index #{index} done ===="
        csv << [t.h4.text, t.td.text.gsub(/^#{t.h4.text}/, '')]
      end
    end
    b.close
  end
end
