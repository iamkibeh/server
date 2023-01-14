# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Hold on a moment... 😎️"


User.create(
    first_name: "Ian",
    last_name: "Kangacha",
    email: "kangzyfix@gmail.com",
    phone_number: "+254743828153",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/kangzy-fix",
    linkedin: "https://www.linkedin.com/in/ian-kangacha-56101b245/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )
  
  User.create(
    first_name: "Denis",
    last_name: "Ouma",
    email: "denisouma@gmail.com",
    phone_number: "+254777730535",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/DenisOuma/Denisouma",
    linkedin: "https://www.linkedin.com/in/denisouma/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )
  User.create(
    first_name: "Jeff",
    last_name: "Odhiambo",
    email: "odhiambo47@gmail.com",
    phone_number: "+254722418808",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/jeffoty",
    linkedin: "https://www.linkedin.com/in/jeff-odhiambo-07822b242/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )
  User.create(
    first_name: "Immanuel",
    last_name: "Kibet",
    email: "immanuelkibet@gmail.com",
    phone_number: "+254743828153",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/iamkibeh",
    linkedin: "https://www.linkedin.com/in/kibet-immanuel/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )
  User.create(
    first_name: "Lucy",
    last_name: "Okoth",
    email: "lucyokoth@gmail.com",
    phone_number: "+254795866729",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/Lucy-okoth",
    linkedin: "https://www.linkedin.com/in/lucy-okoth-33564a238/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )

  User.create(
    first_name: "Victor",
    last_name: "Muhatia",
    email: "victormuhatia@gmail.com",
    phone_number: "+254741689150",
    password_digest: "password",
    agreement: "agreement",
    github: "",
    linkedin: "",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )

  User.create(
    first_name: "Andrew",
    last_name: "Kigen",
    email: "kigenandrew@gmail.com",
    phone_number: "+254715614452",
    password_digest: "password",
    agreement: "agreement",
    github: "https://github.com/kigen27",
    linkedin: "https://www.linkedin.com/in/andrew-kigen-7bb38024b/",
    cv_link: "https://mycv.com/",    
    country: "Kenya",
    bio: "This is my bio",
    skills: "Javascript, Ruby on rails, react",
    profession: "Programming",
    company_website: "http://moringaalumini.com",
    created_at: "20231201659",
    updated_at: "20231201659"
  )
  
  Post.create(
     post_title: "All Jobs",
     post_description: "This is a list of all the jobs that have been posted and available.",
     post_img: "",
     post_comment: "Wow this is an awesome post about the jobs that Moringa Alumni is offering.",
     post_category: "All Jobs",
  )
  Post.create(
    post_title: "Software Development" ,
    post_description: "This is a list of all software development work that have been posted and available.",
    post_img: "",
    post_comment: "Wow this is an awesome post about the jobs that Moringa Alumni is offering.",
    post_category: "Software Development",
 )
 Post.create(
  post_title: "Mobile Development",
  post_description: "This is a list of all the jobs that have been posted and available.",
  post_img: "",
  post_comment: "Wow this is an awesome post about mobile development that Moringa Alumni is offering.",
  post_category: "Mobile Development",
)

Comment.create([
  {text: "This is a great post!", post_id: 1, user_id: 1},
  {text: "I totally agree!", post_id: 2, user_id: 2},
  {text: "I disagree, this post is terrible.", post_id: 3, user_id: 3},
  {text: "This is a well-written article.", post_id: 4, user_id: 4},
  {text: "I have a different opinion on this topic.", post_id: 5, user_id: 5},
])






puts "Done creating users data....😍️"
