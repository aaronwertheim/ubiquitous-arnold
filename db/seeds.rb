puts "Getting Exercise Data"

    def get_exercise_data
        exercises = RestClient.get("https://movie-json-data.herokuapp.com/exercises")
        exercises_array = JSON.parse(exercises)
        exercises_array.each do |e|
            Exercise.create(
                name: e["name"],
                equipment: e["equipment"],
                bodyPart: e["bodyPart"],
                target: e["target"],
                gif: e["gifUrl"]
            )
        end


    end

 get_exercise_data() 

 puts "Exercises Seeded!"
