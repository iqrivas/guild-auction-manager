class AuctionPolicy < ApplicationPolicy

    def index?
        true
    end

    def create?
       user.role == 'admin'
    end

    def update?
        user.role == 'admin'
    end

    class Scope
        attr_reader :current_user, :auctions
        def initialize(current_user, auctions)
            @current_user = current_user
            @auctions = auctions
        end

        def resolve
            if current_user.role == 'admin'
                auctions.all
            else
                auctions.where(status: ['Scheduled','Completed'])
            end
        end


    end
end