require 'rails_helper'

RSpec.describe "routes for Lessons", type: :routing do
  it "routes /lessons to the lessons controller" do
    expect(get("/lessons")).to route_to("lessons#index")
  end

  it "routes /lessons/1 to lessons#show" do
    expect(get: "/lessons/1").to route_to(
      controller: "lessons",
      action: "show",
      id: "1"
    )
  end

  it "routes /lessons to lessons#create" do
    expect(post: "/lessons").to route_to(
      controller: "lessons",
      action: "create"
    )
  end

  it "routes /lessons/1 to lessons#update" do
    expect(put: "/lessons/1").to route_to(
      controller: "lessons",
      action: "update",
      id: "1"
    )
  end

  it "routes /lessons/1 to lessons#destroy" do
    expect(delete: "/lessons/1").to route_to(
      controller: "lessons",
      action: "destroy",
      id: "1"
    )
  end
end
