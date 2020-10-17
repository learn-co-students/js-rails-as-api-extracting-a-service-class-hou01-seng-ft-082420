class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end

    def to_serialized_json
        # @sighting.to_json(:include => {
        #     :bird => {:only => [:name, :species]},
        #     :location => {:only => [:latitude, :longitude]}
        # }, :except => [:updated_at])
        # easier to read version/abstraction:
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                },
                location: {
                    only: [:latitude, :longitude]
                }
            },
            except: [:updated_at],
        }
        @sighting.to_json(options)
    end 
end