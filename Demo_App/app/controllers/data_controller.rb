class DataController < ApplicationController
  def getdata
    @user=Myuser.find(1);
  end

  def savedata
    datas=Hash.new;
    datas["fn"]=params[:fn];
    datas["ln"]=params[:ln];
    datas["country"]=params[:country];
    ob=Myuser.new;
    ob.savedata datas;
    @fName=params[:fn];
    @lName=params[:ln];
  end

  def showdata
    @user=Myuser.all
  end

  def deletedata
    Myuser.delete(params[:id])
    showdata()
    render("showdata")
  end

  def editdata
    @user=Myuser.find(params["id"]);
  end

  def updatedata
  user=Myuser.find(params["id"])
  user.FirstName=params[:fn];
  user.LastName=params[:ln];
  user.Country=params[:country]
  user.save;
  @fName=params[:fn];
  @lName=params[:ln];
  end

  def filterdata
    data=Hash.new
    data['fn']=params['fn']
    data['ln']=params['ln']
    data['country']=params['country']
    @user1=Myuser.new
    @user=Myuser.new
    @user=@user1.filterdata data;
    render("showdata")
  end

end
