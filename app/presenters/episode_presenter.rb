class EpisodePresenter < Presenter

	def as_json(*)
		title: @object.title
		plot: @object.plot
	end

end