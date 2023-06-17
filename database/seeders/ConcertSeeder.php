<?php

namespace Database\Seeders;

use App\Models\Concert;
use Illuminate\Database\Seeder;

class ConcertSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $concerts = [
            [
                'name' => 'The Red Chord',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'The Red Chord is an American deathcore band from Revere, Massachusetts, formed in 1999. The band comprises vocalist Guy Kozowyk, guitarist Mike McKenzie, bassist Greg Weeks and drummer Michael Justian.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'The Red Jumpsuit Apparatus',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'The Red Jumpsuit Apparatus is an American rock band that was formed in Middleburg, Florida, in 2003. The band is best known for their 2006 single "Face Down" from their major-label release Don\'t You Fake It and has released five studio albums to date.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'The Devil Wears Prada',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'The Devil Wears Prada is an American Christian metalcore band from Dayton, Ohio, formed in 2005. It consists of members Mike Hranica, Jeremy DePoyster, Kyle Sipress, and Giuseppe Capolupo.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'Pierce the Veil',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'Pierce the Veil is an American rock band from San Diego, California. Formed in 2006, the band was founded by brothers Vic and Mike Fuentes after the disbandment of the group Before Today, which was formed out of the San Diego punk rock scene.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'August Burns Red',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'August Burns Red is an American metalcore band from Lancaster, Pennsylvania formed in 2003. The band\'s current lineup consists of lead guitarist John Benjamin "JB" Brubaker, rhythm guitarist Brent Rambler, drummer Matt Greiner, lead vocalist Jake Luhrs, and bassist Dustin Davidson.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'As I Lay Dying',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'As I Lay Dying is an American metalcore band from San Diego, California. Founded in 2000 by vocalist Tim Lambesis, the band\'s first full lineup (including Lambesis\' Point of Recognition bandmate Jordan Mancino) was completed in 2001.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'Underoath',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'Underoath is an American rock band from Tampa, Florida. Founded by Dallas Taylor and Luke Morton on November 30, 1997, in Ocala, Florida, subsequently its additional members were from Tampa, Florida.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'Emarosa',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'Emarosa is an American post-hardcore band from Lexington, Kentucky. The band currently consists of founding member and lead guitarist ER White, as well as bass guitarist Robert Joffred, rhythm guitarist Matthew Marcellus, and lead vocalist Bradley Walden.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
            [
                'name' => 'The Word Alive',
                'image' => 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg',
                'location' => 'The Mosh Pit',
                'description' => 'The Word Alive is an American metalcore band formed in Phoenix, Arizona, in 2008. The band is signed to Fearless Records since their formation. The band currently consists of vocalist Tyler Smith, guitarists Zack Hansen and Tony Pizzuti, and drummer Matt Horn.',
                'date' => '2024-06-17 03:39:06',
                'price' => 250000,
            ],
        ];

        foreach ($concerts as $concert) {
            Concert::create($concert);
        }
    }
}
