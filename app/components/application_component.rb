# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  def btn
    "py-2 cursor-pointer px-4 font-semibold rounded-lg shadow-md text-white bg-blue-500 hover:bg-blue-700 focus:outline-none"
  end
end
