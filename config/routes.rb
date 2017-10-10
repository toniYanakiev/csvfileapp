Rails.application.routes.draw do
	get 'sums' => 'sums#sum'
	post 'sums' => 'sums#create'
	root 'sums#sum'
end
