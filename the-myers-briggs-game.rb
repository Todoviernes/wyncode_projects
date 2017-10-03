require 'colorize'
#Defining the users profile
user_profile = ""
jobs = {
    "estj" => {
        description: "Realists who are quick to make practical decisions.",
        # ok = "ok man"
        jobs: [
            "Insurance Sales Agent",
            "Pharmacist",
            "Lawyer",
            "Project Manager",
            "Judge"
        ]
    },
    "istj" => {
      description:"Hard workers who value their resposibilites and commitments.",
      jobs: [
        "Auditor",
        "Accountant",
        "Chief financial officer",
        "Web development engineer",
        "Government employee"
      ]
    },
    "esfj" => {
      description:"Gregarious, traditional, motivated to help others.",#spelling, commas
      jobs: [
        "Sales representative",
        "Nurse/Healthcare worker",
        "Social worker",
        "PR account executive",
        "Loan officer"
      ]
    },
    "isfj" => {
      description:"Modest and determinated workers who enjoy helping others.",
      jobs: [
        "Dentist",
        "Elementary school teacher",
        "Librarian",
        "Franchise owner",
        "Customer service representative"
      ]
    },
    "estp" => {
      description:"Pragmatists who love excitement and excel in crisis.",
      jobs: [
        "Detective",
        "Banker",
        "Investor",
        "Entertainment agent",
        "Sport coach"
      ]
    },
    "istp" => {
      description:"Straightforward and honest people who prefer action to conversation.",#spelling
      jobs: [
        "Civil engineer",
        "Economist",
        "Pilot",
        "Data communications analyst",
        "Emergency room physician"
      ]
    },
    "esfp" => {
      description:"Lively and playful people who value common sense.",
      jobs: [
        "Child welfare counselor",
        "Primary care physician",
        "Actor",
        "Interior designer",
        "Environmental scientist"
      ]
    },
    "isfp" => {
      description:"Warm and sesitive types who like to help people in tangible ways.",#spelling
      jobs: [
        "Fashion designer",
        "Physical therapist",
        "Massage therapist",
        "Landscape architect",
        "Storekeeper"
      ]
    },
    "entj" => {
      description:"Natural leaders who are logical, analytical, and good strategic planners.",
      jobs: [
        "Executive",
        "Lawyer",
        "Market research analyst",
        "Management/Business consultant",
        "Venture capitalist"
      ]
    },
    "intj" => {
      description:"Creative perfectionists who prefer to do things their own way.",
      jobs: [
        "Investment banker",
        "Personal financial adviser",
        "Software developer",
        "Economist",
        "Executive"
      ]
    },
    "enfj" => {
      description:"People-lovers who are energetic, articulate and diplomatic.",
      jobs: [
        "Advertising executive",
        "Public relations specialist",
        "Corporate coach/Trainer",
        "Sales manager",
        "Employment specialist/HR professional"
      ]
    },
    "infj" => {
      description:"Thoughtful, creative people driven by firm principales and personal integrity.",
      jobs: [
        "Therapist/Mental health counselor",
        "Social Worker",
        "HR diversity manager",
        "Organizational development consultant",
        "Customer relations manager"
      ]
    },
    "entp" => {
      description:"Enterprising, creative people who enjoy new challenges.",#spelling
      jobs: [
        "Entrepreneur",
        "Real state developer",
        "Advertising creative director",
        "Marketing director",
        "Politician/Political consultant"
      ]
    },
    "intp" => {
      description:"Independent and creative problem-solvers.",
      jobs: [
        "Computer programmer/Software designer",
        "Financial analyst",
        "Architect",
        "College professor",
        "Economist"
      ]
    },
    "enfp" => {
      description:"Curious, confident and creative types who see possibilities everywhere.",#spelling
      jobs: [
        "Journalist",
        "Advertising creative director",
        "Consultant",
        "Restaurateur",
        "Event planner"
      ]
    },
    "infp" => {
      description:"Sensitive idealists, motivated by their deeper personal values.",
      jobs: [
        "Graphic designer",
        "Psychologist/Therapist",
        "Writer/Editor",
        "Physical therapist",
        "HR development trainer"
      ]
    }
}
puts 
puts 
puts 'Welcome to the game of opportunity! Are you ready?' #Welcome message #changed welcome statement
sleep 2
puts 
puts 'Type "y" for YES or "n" NO.'
user_choice = gets.chomp
until %w[y n].include? user_choice
  puts 'You need to choose one option y or n'.red
  user_choice = gets.chomp
end
puts "You pick: #{user_choice}"
if user_choice == 'n' # End of game by user choice
  puts 'You will regret your decision, that is unfortunate for you!' # Good bye message user choose NO #changed goodbye statement
  puts <<END
  ╱╱┏╮
  ╱╱┃┃
  ▉━╯┗━╮
  ▉┈┈┈┈┃
  ▉╮┈┈┈┃
  ╱╰━━━╯
END
else
puts 'Great this will be the opportunity of a lifetime!' #changed message
sleep 1
puts 
puts 'Whats your name?'.each_char { sleep 0.04; $stdout.flush }
user_name = gets.chomp
puts 
puts "#{user_name} Does your job fit your personality?"
sleep 1
puts
puts "The Myers-Briggs Type Indicator (MBTI) personality test, which measures preferences like introversion and extroversion and have been part of business culture for decades. Today about 80% of the Fortune 500 and 89% of Fortune 100 companies use it to analyze." 
sleep 7
puts 
puts "Please be as candid as possible so we can recommend a list of 5 careers tailored to fit your specific character type. This will require your interaction use 'a' or 'b' for each of the following questions."
puts 
sleep 3
#Game begins
puts "How is your interaction whith the world?"
sleep 0.5
puts 
puts "(a) Introvert. Introverts often like working alone or in a small groups, prefer a more deliberate pace, and like to focus on one task at the time."
puts
sleep 0.5
puts "(b) Extrovert. Extroverts are energized by people, enjoy a variety of tasks, a quick pace, and are good with multitasking."
response = gets.chomp
until %w[a b].include? response
puts 'You need to choose one option a or b'.red
response = gets.chomp
end
case response
when 'a'
    user_profile += "i"
when 'b'
    user_profile += "e"
end
puts "How do you absorb information?"
sleep 0.5
puts 
puts "(a) Sensors. Sensors are realistic people who like to focus on the facts and details, and apply common sense and past expericence to come up with practcal solutions to problems."
puts 
sleep 0.5
puts "(b) Intuitives. Intutives prefer to focus on possibilities and the big picture, easily see the patterns, value innovation, and seek creative solutions to problems."
response = gets.chomp
until %w[a b].include? response
puts 'You need to choose one option a or b'.red
response = gets.chomp
end
case response
when 'a'
    user_profile += "s"
when 'b'
    user_profile += "n"
end
puts "Decision-Making..."
sleep 0.5
puts 
puts "(a) Thinkers. Thinkers Tend to make decisions using logical analysis, objetively weigh pros and cons, and value honestly, consistency, and fairness."
puts 
sleep 0.5
puts "(b) Feelers. Feelers tend to be sensitive and cooperative, and decide based on their own personal values and how others will be affected by their actions."
response = gets.chomp
until %w[a b].include? response
  puts 'You need to choose one option a or b'.red
  response = gets.chomp
end
case response
when 'a'
    user_profile += "t"
when 'b'
    user_profile += "f"
end
puts "Organization..."
sleep 0.5
puts 
puts "(a) Judgers. Judgers tend to be organized and prepared, like to make and stick to plans, and are comfortable following most rules."
puts 
sleep 0.5 
puts "(b) Perceivers. Percievers prefer to keep their options open, like to be able to act spontaneously, and like to be flexible with making plans."
response = gets.chomp
until %w[a b].include? response
  puts 'You need to choose one option a or b'.red
  response = gets.chomp
end
case response
when 'a'
    user_profile += "j"
when 'b'
    user_profile += "p"
end
puts <<END

     ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄
    ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
    ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀
    ▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌     ▐░▌
    ▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌
    ▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌
    ▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀█░█▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌     ▐░▌
    ▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌          ▐░▌       ▐░▌     ▐░▌
    ▐░█▄▄▄▄▄▄▄█░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌     ▐░▌
    ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌     ▐░▌
     ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀       ▀
------------------------------------------------------------------------
END
puts "#{user_name}"
puts "here are your results..."
puts 
puts "Your profile is: #{user_profile.upcase}"
puts 
job_result = jobs[user_profile]
puts 
puts job_result[:description]
puts
puts "#{user_name} Here's a list of careers that match your #{user_profile.upcase} profile."
puts 
num = 1
for job in job_result[:jobs]
    puts "#{num}.  #{job}"
    num += 1
end
puts
puts "Hope this can help you find the right career that's perfect for you!"
end