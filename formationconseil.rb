agent = Spidr.start_at('http://e.sumatraformationconseil.com/mod/glossary/view.php?id=4797&mode=letter')
agent.post_page('http://e.sumatraformationconseil.com/login/index.php', { username: '***************@gmail.com', password: '*****************' }.to_json )

    let(:queue)   { [URI("http://example.com/link")] }
    let(:history) { Set[URI("http://example.com/")]  }

    subject do
      described_class.new do |agent|
        agent.queue   = queue
        agent.history = history
      end
    end

subject.authorized.add("http://#{host}/private", app.user, app.password)

Spidr::Agent.new(queue: [URI('http://e.sumatraformationconseil.com/mod/glossary/view.php?id=4797&mode=letter')]).authorized.add('http://e.sumatraformationconseil.com/login/index.php', '***************@gmail.com', '*****************')


agent = Spidr::Agent.new
agent.post_page('http://e.sumatraformationconseil.com/login/index.php', { username: '***************@gmail.com', password: '*****************' }.to_json )

require 'watir'

b = Watir::Browser.new
b.goto 'http://e.sumatraformationconseil.com/mod/glossary/view.php?id=4797&mode=letter&hook=A&sortkey=&sortorder=asc'
b.text_field(name: 'username').set '***************@gmail.com'
b.text_field(name: 'password').set '*****************'
b.button(id: 'loginbtn').click
b.link(text: 'Tout').click
b.link(text: 'Tout').click
b.tables(class: 'glossarypost')


