# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Screenshot
![Index page](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle1.png)
![Singup page](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle2.png)
![Login page](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle3.png)
![Signup page](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle3.5.png)
![Shopping Cart no item](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle4.png)
![Shopping Cart](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle5.png)
![Order confirmation](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle6.png)
![Admin page](https://raw.githubusercontent.com/y-mtl/jungle-rails/master/docs/jungle7.png)
## Stripe Testing

As for test card info, please visit their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
