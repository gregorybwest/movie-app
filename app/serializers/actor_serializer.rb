class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :movie_id, :movie_plot

  belongs_to :movie


end
