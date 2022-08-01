class AuctionItemPolicy < ApplicationPolicy

    def show?
        true
    end

    def create?
       user.role == 'admin'
    end

    def update?
        user.role == 'admin'
    end

    class Scope
        attr_reader :current_user, :auction_items
        def initialize(current_user, auctions_items)
            @current_user = current_user
            @auction_items = auction_items
        end

        def resolve
            if current_user.role == 'admin'
                auction_items.all
            else
                AuctionItem.joins(:auction).where(auction: {status: ['Scheduled', 'Completed']})
            end
        end


    end
end