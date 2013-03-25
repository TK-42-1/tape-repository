module ApplicationHelper
  def title
      base_title = "TETCO Tape Information Repository"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end
    
    def logo
      logo = image_tag("logo.png", alt: "TETCO Tape Repository", class: "box")      
    end
    
    def code
      code = image_tag("https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl=http://tapes.tetco.com/tapes/#{@tape.number}")
    end
end
