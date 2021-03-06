module Types
  class QueryType < Types::BaseObject
    field :items, [Types::ItemType], null: false, description: "Returns a list of of itemsin the martian libary"
    def items
      Item.preload(:user)
    end
  end
end
