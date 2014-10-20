## Notice

Code cutter is currently work in progress.

## Intro

The reason I decided to create Code Cutter (CC) is to make my code reviews consistent and balanced. That way it is easier to compare the submissions from various candidates, and it ensures that the submitted code is reviewed from a number of important perspectives.

CC presents a user with a series of questions in four categories:
- User / Reviewer Experience
- Object Oriented Design
- Tesitng
- Specific Technology (Ruby) Knowledge

A report will be generated as a result of answering the quesitons which will summarise candidate's strengths and areas for improvement.

## Usage pre-requisites

Install node, checkout project, install node packages, and install bower components

```
brew install node
git checkout https://git.realestate.com.au/iparipsa/code-cutter
cd code-cutter
npm install
bower install
```

## Usage Instructions

Start the app with: ```grunt serve```

## To change questions / weightings

edit ```data/questions.csv```
run ```bundle exec rake csv:to_json```
copy the contents of ```out/questions.json``` to the value of data variable in ```questions.coffee```

## Issues

It appears that ng-justgage has an issue with the way versions are managed. If the gage is not working, copy and paste the latest code from https://github.com/mattlaver/angular-justgage/blob/master/ng-justgage.js to bower_components/angular-justgage/ng-justgage.js

## Work Pipeline

- Report generation
-- Display total for each section as a fraction of max score
-- Grand total as compared to the max score

- Form styling
-- align questions: left, and answers: right
-- make the form look good

- Add a slider to each section allowing the user to adjust the score as they see fit

## License (MIT)

The project is licensed under the MIT license. Please refer to LICENSE.md for details.
