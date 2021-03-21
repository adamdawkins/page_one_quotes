# frozen_string_literal: true

# 001: Twelfth Night or What You Will

first_folio = Publication.find_or_create_by(
  title: "Mr. William Shakespeare's Comedies, Histories & Tragedies", year: 1623
)

edward_blount = Publisher.find_or_create_by(name: "Edward Blount")
william_and_isaac_jaggard = Publisher.find_or_create_by(name: "William and Isaac Jaggard")

Publishing.create([
  { publishable: first_folio, publisher: edward_blount },
  { publishable: first_folio, publisher: william_and_isaac_jaggard }
])


shakespeare = Author.find_or_create_by(last_name: "Shakespeare", first_name: "William")

Quote.find_or_create_by(text: "If music be the food of love, play on.",
                        work_title: "Twelfth Night, or What You Will",
                        author: shakespeare,
                        publication: first_folio)

