# frozen_string_literal: true

# method to launch rules page in default browser
module Rules
  def show_rules
    uri = './docs/rules.html'
    err = '2> /dev/null'
    system "xdg-open #{uri} #{err}"
  end
end
