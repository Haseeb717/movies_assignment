class ItemPresenter < Presenter

	def as_json(*)
		title: @object.title
		plot: @object.plot
		type: @object.type
		serial_number: @object.serial_number
		episodes: @object.episodes.map {|e| EpisodePresenter.new(e) }
	end

end