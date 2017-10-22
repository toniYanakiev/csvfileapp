Rails.application.routes.draw do
	post 'sums' => 'sums#create'
	post 'filters' => 'filters#filter'
	post 'intervals' => 'intervals#interval'
	post 'lin_regressions' => 'lin_regressions#lin'

	root 'sums#sum'
end
