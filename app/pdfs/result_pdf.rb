class ResultPdf < Prawn::Document
  def initialize(p)
    super(top_margin: 70)
    @page = p
    @ratings = Rating.where(page_id: @page.id)
    @abstand_normal = 15
    
    header
    result
    
  end
  def header
    text "Umfrageergebnis:#{@page.title}", size: 30, style: :bold
    move_down @abstand_normal
    text @page.period
    move_down @abstand_normal
    text "am: #{@ratings.first.created_at}"
    move_down @abstand_normal
    text "Abgegebene Bewertungen: #{@ratings.count}"
    move_down @abstand_normal
    move_down 20
  end

  def result
    @ratings.each do |rating| 
      if rating.question 
        text rating.question.content, :style => :bold
         rating.question.answers.each do |answer| 
           text "#{answer.ratings.count || 0}  x  #{answer.content}" 
         end 
      end 
    end
  end

end