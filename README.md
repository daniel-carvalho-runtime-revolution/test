# Ebook Repository - Rails MVC Application

A complete Rails MVC application for managing ebooks with full CRUD functionality.

## Features

- **Full CRUD Operations**: Create, Read, Update, and Delete ebooks
- **Ebook Attributes**:
  - Title
  - Author
  - Description
  - Published Date
  - ISBN
  - Genre
  - Number of Pages
- **Seeded Database**: Pre-populated with 10 fake ebooks across various genres

## Getting Started

### Prerequisites

- Ruby 3.1.3 or higher
- Rails 7.0.10
- SQLite3

### Installation

1. Clone the repository or navigate to the project directory:
```bash
cd /Users/danielcarvalho/Development/code/ebookrepo
```

2. Install dependencies:
```bash
bundle install
```

3. Set up the database:
```bash
rails db:migrate
rails db:seed
```

4. Start the server:
```bash
rails server -p 3001
```

5. Visit the application:
Open your browser and navigate to `http://localhost:3001`

## Database Schema

The application uses a single `ebooks` table with the following structure:

- `id` (integer, primary key)
- `title` (string)
- `author` (string)
- `description` (text)
- `published_date` (date)
- `isbn` (string)
- `genre` (string)
- `pages` (integer)
- `created_at` (datetime)
- `updated_at` (datetime)

## Seed Data

The application comes with 10 pre-seeded ebooks covering various genres:

- Technology: "The Art of Programming"
- Science Fiction: "Journey Through Time"
- Mystery: "The Mystery of Shadow Lane"
- Cooking: "Cooking with Fire"
- Historical Fiction: "The Last Kingdom"
- Business: "Digital Marketing Mastery"
- Fantasy: "The Dragon's Prophecy"
- Self-Help: "Mindfulness in Modern Life"
- Science: "The Physics of Everything"
- Romance: "Love in the Time of AI"

To reset the seed data, run:
```bash
rails db:seed
```

## Routes

- `GET /` - Homepage (redirects to ebooks index)
- `GET /ebooks` - List all ebooks
- `GET /ebooks/:id` - Show a specific ebook
- `GET /ebooks/new` - Form to create a new ebook
- `POST /ebooks` - Create a new ebook
- `GET /ebooks/:id/edit` - Form to edit an ebook
- `PATCH/PUT /ebooks/:id` - Update an ebook
- `DELETE /ebooks/:id` - Delete an ebook

## Project Structure

```
app/
├── controllers/
│   └── ebooks_controller.rb    # CRUD operations controller
├── models/
│   └── ebook.rb                # Ebook model
└── views/
    └── ebooks/                 # View templates
        ├── index.html.erb      # List view
        ├── show.html.erb       # Detail view
        ├── new.html.erb        # Create form
        ├── edit.html.erb       # Edit form
        ├── _form.html.erb      # Form partial
        └── _ebook.html.erb     # Ebook partial
```

## Technologies Used

- Ruby on Rails 7.0.10
- Ruby 3.1.3
- SQLite3
- Puma Web Server
- Turbo & Stimulus (Hotwire)
- Importmap for JavaScript

## License

This project is created for educational purposes.
