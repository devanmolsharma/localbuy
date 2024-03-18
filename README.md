# LocalBuy

LocalBuy is a Ruby on Rails application for buying and selling groceries locally.

## Features

- **User authentication:** Users can sign up, log in, and log out.
- **Product listings:** Users can create, view, edit, and delete product listings.
- **Search functionality:** Users can search for products based on various criteria.
- **Responsive design:** The application is optimized for both desktop and mobile devices.

## Dependencies

LocalBuy relies on the following technologies:

- Ruby 3.0.1
- Rails 6.1.4
- TailwindCss (for styling)
- Devise (for user authentication)

## Why LocalBuy?

LocalBuy aims to facilitate local commerce for groceries, connecting buyers and sellers within a community.

## Get Started

Follow these steps to get LocalBuy up and running on your local machine:

1. **Clone the repository:**
   ```
   git clone https://github.com/devanmolsharma/localbuy

   ```

2. **Install dependencies:**
   ```
   bundle install
   ```

3. **Set up the database:**
   ```
   rails db:create
   rails db:migrate
   ```

4. **Start the server:**
   ```
   rails server
   ```

5. **Visit the application:**
   Open your web browser and navigate to `http://localhost:3000`.

## Contributing Guide

Contributions are welcome! To contribute to LocalBuy, follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/my-feature`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature/my-feature`).
6. Create a new Pull Request.

## TODOS

- Implement advanced search functionality.
- Enhance user interface for better user experience.

## License

LocalBuy is licensed under the Apache License 2.0. 