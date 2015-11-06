book_ratings = {
    "Stranger in a Strange Land" => 3,
    "2001: A Space Odyssey" => 5,
    "The Hitchhiker's Guide to the Galaxy" => 4,
    "War and Peace" => 5,
    "I, Robot" => 4
}

#puts book_ratings["The Hitchhiker's Guide to the Galaxy"]

books_by_author = {
    "Asimov, Isaac" => {
        "I, Robot" => 4,
        "Foundation" => 5,
        "Foundation and Empire" => 5
    },
    "Tolstoy, Leo" => {
        "War and Peace" => 4,
        "Anna Karenina" => 5,
        "The Death of Ivan Ilyich" => 4
    },
    "Adams, Douglas" => {
        "The Hitchhiker's Guide to the Galaxy" => 4
    },
    "Heinlein, Robert" => {
        "Stranger in a Strange Land" => 3
    },
    "Clarke, Arthur, C." => {
        "2001: A Space Odyssey" => 5
    }
}

#p books_by_author["Tolstoy, Leo"]
#p books_by_author["Tolstoy, Leo"].keys

arun = {
    firstname: "Arun",
    lastname: "Sood",
    email: "arun.instructor@gmail.com"
}

arun.merge!(role: "Instructor")
p arun