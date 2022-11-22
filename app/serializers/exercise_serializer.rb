class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :target, :equipment, :bodyPart, :gif
end
