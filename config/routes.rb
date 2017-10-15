Rails.application.routes.draw do
	get 'sums' => 'sums#sum'
	post 'sums' => 'sums#create'
	post 'filters' => 'filters#filter'
	root 'sums#sum'
end
