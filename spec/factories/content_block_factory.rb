FactoryGirl.define do
  factory :content_block, class: Blocky::ContentBlock do
    controller "static_pages"
    action "home"
    name "hello_world"
    content "<p>Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass.</p>"
  end

  factory :global_content_block, class: Blocky::ContentBlock do
    name "phone_number"
    content "<a href="tel:1112223333">(111) 222-3333</a>"
  end
end
