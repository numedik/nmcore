class HomeController < ApplicationController

  before_filter :doorkeeper_authorize!
  def landing
    @coreurl = 'https://'+NMID+'.core.numedik.com'
    @apitype = params[:apitype] || 'dpis' #default to dpis
    @railsmem = GetProcessMem.new

    @uptime = `uptime`
  end

  def doorkeeper
    # INFO: for testing only. each client will need
    # these to connect to doorkeeper
    appId = "73a83a4931752dcb298e24cd3ec8ebe402"+
      "c44a7e6d23085566f7995268365fed"
    appSecret = "5a342b5d2a32a10a2d7ae7cc3d35b6"+
      "9270be52e9acda72cb88fd09369023d5ae"
    site = "http://localhost:3000/"
    # BEGIN Basic Usage flow
    client ||= OAuth2::Client.new(
      appId, appSecret,
      :site => "#{site}"
    )
    url = client.auth_code.authorize_url(
      :redirect_uri => "#{site}/callbacks/numedik"
    )
    redirect_to url # will redirect the user to our API's sign in page
    # END Basic Usage Flow
  end

  def dashboard_info

    userinfo = Hash.new
    userinfo[:user] = {id: current_user.id, fullname: current_user.fullname, email: current_user.email}
    userinfo[:clinic] = 'Klinik DuniaMedik'
    userinfo[:workoder] = {id: current_user.workorder.id, code:current_user.workorder.code, name: current_user.workorder.name}
    userinfo[:clock] = {clockin: '8:00 AM (23rd Oct 15)', duration: '4 Hours 32 Minutes', ipaddr: current_user.current_sign_in_ip}
    userinfo[:tca] = [
      {time: '8:30AM', name: 'TENGKU NOR ASIAH BT SAMSURI', mrn: 'MRN34453'},
      {time: '9:30AM', name: 'MUHAMMAD ZAKI BIN ALI', mrn: 'MRN01253'},
      {time: '10:00AM', name: 'NADIA ALIA BT RAMLI', mrn: 'MRN31253'}
    ]
    userinfo[:userlist] = User.where('id <> ?',current_user.id).select(:id,:fullname,:email)
    render json: { info: userinfo }
  end
end
