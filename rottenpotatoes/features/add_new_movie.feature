Feature: add new movie

  As an avid moviegoer
  So that I can add movies that I would like to see
  I want to be able to add a new movie

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

Scenario: adding a new movie
  When I am on the RottenPotatoes home page
  And I follow "Add new movie"
  And I fill in "Title" with "Wonder Woman"
  And I select "PG-13" from "Rating"
  And I select "2017" from "movie_release_date_1i"
  And I select "Jun" from "movie_release_date_2i"
  And I select "2" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "Wonder Woman was successfully created."
  And I should see "2017-06-02"
  And I should see "PG-13"
