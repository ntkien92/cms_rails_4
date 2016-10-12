class PostDecorator < Draper::Decorator
  delegate_all

  def show_recommend
    recommend ? 'Recommend' : 'UnRecommned'
  end

  def show_public
    public ? 'Public' : 'UnPublic'
  end
end