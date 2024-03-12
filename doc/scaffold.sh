# tidak perlu user, karena campaign akan dibuat oleh admin web lembaga.
rails g scaffold Campaign title picture content total:integer target:integer close_at:datetime
rails g scaffold Donation campaign:references	amount:integer name email telephone anonymous:boolean payment_type dua
rails g scaffold Category title