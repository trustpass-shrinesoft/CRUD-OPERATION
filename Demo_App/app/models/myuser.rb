class Myuser < ApplicationRecord
    def savedata datas
        user=Myuser.new
        user.FirstName=datas["fn"];
        user.LastName=datas["ln"];
        user.Country=datas["country"]
        user.save;
    end

    def filterdata data
        user=Myuser.all
        user=user.where(:FirstName=>data["fn"],:LastName=>data["ln"],:Country=>data["country"]);
        return user;
    end
end
