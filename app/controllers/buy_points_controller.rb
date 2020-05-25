class BuyPointsController < ApplicationController
  def index
    @buy_points = BuyPoint.all
  end

  def show
    @buy_point = BuyPoint.find(params[:id])
  end

  def new
    @buy_point = BuyPoint.new
  end

  def edit
    User.find(1).buy_historyes.sum(:point)
  end

  def create
    @buy_point = BuyPoint.new(buy_point_params)
    @buy_point.supporter_id = current_supporter.id
    @buy_point.deposit_status = "入金待ち"
    if @buy_point.save
       redirect_to buy_points_path(@buy_point)
    else
       render 'new'
    end
  end

  def update
    @buy_point = BuyPoint.find(params[:id])
    # order_params内のデータ（注文ステータス）が変更された時
    #binding.pry
    if @buy_point.update(buy_point_params)
      # 注文ステータスが入金確認待ちに変更された場合は
      if @buy_point.deposit_status == "入金確認"
        @point_history = PointHistory.new
        @point_history.supporter_id = @buy_point.supporter_id
        @point_history.point = @buy_point.purchase_point
        @point_history.save!
        # セーブができない！！！！！！！！！！！！！！！！！！！ポイント履歴に反映されない
      end

      # ステータスが更新されたら注文詳細ページに戻る
        #redirect_back(fallback_location: admin_order_path(@order))
      redirect_to buy_points_path
      # null ture ni suru
      # update action no 動作確認
    else
      render :show
    end
  end

  def destroy
  end

  private
  def buy_point_params
    params.require(:buy_point).permit(:purchase_point,:supporter_id,:deposit_status,:purchase_point,:surname,:name)
  end
end
