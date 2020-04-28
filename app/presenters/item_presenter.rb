class ItemPresenter < Presenter

	def as_json(*)
		if @object.item_type == "Season"
			{
				title: @object.title
				plot: @object.plot
				item_type: @object.item_type
				serial_number: @object.serial_number
				episodes: @object.episodes.map {|e| EpisodePresenter.new(e) }
			}
		else
			{
				title: @object.title
				plot: @object.plot
				item_type: @object.item_type
			}
		end
		
	end

end