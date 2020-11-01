# Digital Show Program Creator

The Digital Show Program is a Sinatra-based web application prototype for the service I am building, Paperless Playhouse (a non-automated version is already up at www.paperlessplayhouse.com). It allows registered users to create, save, view, and update (or delete) digital programs listing credits for theatrical productions.

The initial screen invites users to sign up or log in with a user name and password. Once logged in, a user is taken to their account page with options to see a list of programs they have created, start a new program, or log out.

1.) Program List

  Displays a list of programs that the user has created. In this view only the title and show dates are displayed, with an option to view the full program. PROBLEM!

2.) Draft program

  Takes the user to a form where they are asked to supply a Show Title, Playwright, Show Dates, Production Company, Director, a list of Crew Credits, and Performer Credits. It is possible to submit with any or all of these fields blank, but submitting with no title will result in an automatic title of "Untitled Program" - this and any other field can be updated later.

3.) Log Out

  This option ends the user's session and returns to the home page.

## Installation

You are welcome to fork and clone your own copy of the Finder to tinker with, or go to the 'Code' menu and choose 'Download ZIP'.

## Usage

Input ruby bin/makeups in the terminal while the flatiron-project-1 directory is open.

## License

The MIT License (MIT)

Copyright (c) 2020 'Cailín Kless'

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
