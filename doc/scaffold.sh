# tidak perlu user, karena campaign akan dibuat oleh admin web lembaga.
rails g scaffold Campaign title picture content total:integer target:integer close_at:datetime
rails g scaffold Donation campaign:references amount:integer name email telephone anonymous:boolean payment_type dua
rails g scaffold Category title

# SPP
rails g scaffold SppBatch start_at:datetime end_at:datetime
rails g scaffold SppStudent spp_batch:references nis name gender birth_at:datetime address pict father mother phone email
rails g scaffold SppCategory title
rails g scaffold SppInvoice spp_student:references spp_category:references amount:integer paid_amount:integer status
rails g scaffold SppPayment spp_batch:references user:references spp_student:references spp_invoice:references tipe  amount:integer pay_at:datetime