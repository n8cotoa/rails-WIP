FactoryBot.define do
  factory(:user) do
    email("test@test.com")
    password("password")
  end
  factory(:skill) do
    name("Awesome Coding")
    experience(10)
  end
  factory(:hobby) do
    name('Video Games')
    description("all sorts of them")
  end
  factory(:project) do
    name('Best Project Ever')
    description('It\'s literally the best project ever')
    repo_link('Repolink.com')
    deployment_link('deployment_link.com')
  end
end
