class UrlConstants {
  static String kUriPrefix = 'https://adtip.page.link';
//stagging
  static const BASE_URL = "https://adtip2.qa.ad-tip.com/api/";
//production
  // static const BASE_URL = "http://adtip2.prod.ad-tip.com/api/";

  static const Get_Comment_List = "${BASE_URL}getcommentsofvideos/";

  static const Save_Comment = "${BASE_URL}savevideocomment";

  static const Save_Channel = "${BASE_URL}savemychannel";

  static const getVideoByChannel = "${BASE_URL}getvideobychannel/";
  static const getProductList = "${BASE_URL}getProductlist/";
  static const getProductDetails = "${BASE_URL}productbyproductid/";
  static const getCompanyListURL = "${BASE_URL}getcompanylist/";
  static const getProfessionListURL = "${BASE_URL}gettargetprofession";

  static const getAreaListURL = "${BASE_URL}gettargetareas";

  static const getButtonListURL = "${BASE_URL}getbuttons";
  static const getAdModelsListURL = "${BASE_URL}getadmodels";
  static const savefirstpageadmodelURL = "${BASE_URL}savefirstpageadmodel";
  static const savesecondpageadmodelURL = "${BASE_URL}savesecondpageadmodel";
  static const saveThirdpageadmodelURL = "${BASE_URL}savethirdpageadmodel";
  static const saveGetalladdsURL = "${BASE_URL}getalladds";
  static const getproductCategary = "${BASE_URL}productcategory/";
  static const addproduct = "${BASE_URL}addproduct/";
  static const editproduct = "${BASE_URL}updateproduct/";

  static const couponUrl = "${BASE_URL}getcoupon";
  static const demoRequestUrl = "${BASE_URL}requestdemo";
  static const lastDataComapnyUrl = "${BASE_URL}getLastaddetails/";
  static const shortVideoUrl = "${BASE_URL}getshots/";
  static const followChannelUrl = "${BASE_URL}updatecompanydetails";
  static const likeVideoUrl = "${BASE_URL}savevideodetails";
  static const getFollowCompanyUrl = "${BASE_URL}getfollowcompany/";
  static const getCommentVideoUrl = "${BASE_URL}getcommentsofvideos/";
  static const getOtherCompanyListUrl = "${BASE_URL}getothercompanylist/";
  static const followChannelsUrl = "${BASE_URL}saveChannelDetails";
  static const replyCommentUrl = "${BASE_URL}savevideocomment";
  static const selfChannelUrl = "${BASE_URL}getchannelbyuserid/";
  static const getProductByUseridUrl = "${BASE_URL}getProductByUserid/";

  static const createChannelUrl = "${BASE_URL}savemychannel";
  static const editChannelUrl = "${BASE_URL}updatechanel";
  static const blockCompanyUrl = "${BASE_URL}getblockadcompanybyuser/";
  static const blockUserUrl = "${BASE_URL}getblockadbycompany/";
  static const getAdminUrl = "${BASE_URL}getalladmins/";
  static const addAdminUrl = "${BASE_URL}saveadmin";
  static const deleteAdminUrl = "${BASE_URL}deleteadmin";
  static const editAdminUrl = "${BASE_URL}updateadmin";
  static const bannerUrl = "${BASE_URL}getmasteradsPagination";
  static const myLikeCompanyUrl = "${BASE_URL}getallcompanylist/";
  static const searchVideo = "${BASE_URL}searchfuntube";
  static const postUrl = "${BASE_URL}savepost";
  static const getPostUrl = "${BASE_URL}getcompanypost/";
  static const getTrackingOrderUrl = "${BASE_URL}getOrderTracking/";

  static const pauseStartOrderUrl = "${BASE_URL}saveadpausecountinuestatus";
  static const leadUrl = "${BASE_URL}getgraphdata";

  static const String uploadshot = "${BASE_URL}uploadshot";
  static const String getVideoCatagory = "${BASE_URL}getvideocatagory";
  static String getChannelbyUserId(int userId) =>
      "${BASE_URL}getchannelbyuserid/$userId";
  static String getVideobyChannel(int channelId, int userId) =>
      "${BASE_URL}getvideobychannel/0/$channelId/$userId";
  static String getVideos = "${BASE_URL}getvideos/";
  static String getPopularVideos(int userId) =>
      "${BASE_URL}getpopularvideo/$userId";
  static String getShorts(int userId) => "${BASE_URL}getshots/$userId";

  static String likeRequest = "${BASE_URL}savevideodetails";
  static String saveVideo = "${BASE_URL}savevideodetails";
  static String followUnfollowChannel = "${BASE_URL}savechanneldetails";

  static String getVideoDetails(int videoId, int userId) =>
      "${BASE_URL}getvideo/$videoId/$userId"; //getfunds

  static String getFunds(userId) => "${BASE_URL}getfunds/$userId";

  static String saveAdLikeAmount = "${BASE_URL}saveadlikeamount";
  static String saveadviewamount = "${BASE_URL}saveadviewamount";
  static String getadview = "${BASE_URL}getadview";
  static String saveVideoCommentLike = "${BASE_URL}savevideocommentlike";
  static String saveuserdetailsUrl = '${BASE_URL}saveuserdetails';

  static String getPopularVideoUrl = '${BASE_URL}getpopularshort/0/';
  static String getPopularShortsUrl = '${BASE_URL}getpopularshort/1/';
  static String getFollowedChannelUrl =
      '${BASE_URL}getlistoffollowedchannelbyuser/';
  static String getsentnotificationUrl(int userId) =>
      "${BASE_URL}getsentnotification/$userId";

  static String savefallowcompanyUrl = '${BASE_URL}savefallowcompany';

  static String saveadviewsandlikesUrl = '${BASE_URL}saveadviewsandlikes';
  static String saveadviewamountUrl = '${BASE_URL}saveadviewamount';

  static String zegoCloudFreeAppSign =
      "ab4c27bc0ae40cb5188a5b817d18c794702e7d2278ecbdfffdfcd418b0b3d943";
  static int zegoCloudFreeAppId = 580229927;

  static String chattingApiGetSentNotificationUrl =
      '${BASE_URL}getsentnotification/';
  static String chattingApiGetMessagesUrl = '${BASE_URL}getmessages/';
  static String chattingApiGetOneToOneMessagesUrl = '${BASE_URL}getmessage/';
  static String chattingApiSaveUserDeviceTokenUrl =
      '${BASE_URL}saveuserdevicetoken';
  static String chattingApiSendMessageUrl = '${BASE_URL}sendmessage';
  static String chattingApiDeleteMessagesUrl = '${BASE_URL}deletemessages';
  static String chattingApiSaveTicksUrl = '${BASE_URL}saveticks';
  static String chattingApiDeleteChatForMeUrl = '${BASE_URL}deletechatforme';
  static String chattingApiDeleteChatForEveryoneUrl =
      '${BASE_URL}deletechatforeveryone';
  static String chattingApiBlockChatUserUrl = '${BASE_URL}blockchatuser';

  ///wallet
  static String withdrawFundApiUrl = '${BASE_URL}withdrawFund';
  static const WITHDRAW_FUND_FROM_WALLET = "${BASE_URL}withdrawFundFromWallet/";

  ///company
  static String getSingleCompany = '${BASE_URL}getcompany';
  static String createNewCompany = '${BASE_URL}createnewcompany';
  static String updateCompany = '${BASE_URL}updatecompany';
  static String deletePost = '${BASE_URL}deletepost';
  static String getAllCompany = '${BASE_URL}getallcompanylist/';
  static String getpostDetails = '${BASE_URL}getPostDetails';

  ///calling
  static String updateDeviceToken = '${BASE_URL}updatedevicetoken';

  ///ads
  static String checkadpendingbalance = '${BASE_URL}checkadpendingbalance/';
  static String getAdDetailsForQr = '${BASE_URL}getAdDetailsForQr';
  static String shortVideoAd = '${BASE_URL}getAdForShortVideo';
  static String getAdLikes = '${BASE_URL}getmylikead/';

  ///ad orders
  static String getQrWebData = '${BASE_URL}getQrAdWebByAdIdForAdvertiser';

  ///contact us
  static String saveWebsiteMessage = '${BASE_URL}savewebsitemessage/';

  ///channel
  static String saveChannelWithdrawRequest =
      '${BASE_URL}saveChannelWithdrawRequest/';
  static String getChannelTransactions = '${BASE_URL}getTransactions';
  static String getChannelShorts = '${BASE_URL}channelShortsVideos';

  /// video
  static String likeVideo = '${BASE_URL}saveVideoLike';
  static String deleteVideo = '${BASE_URL}deleteVideo';
  static String editVideo = '${BASE_URL}editVideo';
  static String getVideoComment = '${BASE_URL}getCommentOfVideo';
  static String saveVideoComment = '${BASE_URL}saveVideoComment';
  static String saveChannelFollowers = '${BASE_URL}saveChannelFollowers';
  static String getShortsVideo = '${BASE_URL}getshots';
  static String getShortsVideoById = '${BASE_URL}getShortById';

  ///user
  static String getNotifications = '${BASE_URL}getNotifications';

  ///referal
  static String generateReferal = '${BASE_URL}generateReferalId';
  static String checkReferalCodeValid = '${BASE_URL}checkReferalCodeValid';
  static String saveReferWithdrawRequest =
      '${BASE_URL}saveReferWithdrawRequest';
  static String getTransactionsOfReferalWithdrawRequests =
      '${BASE_URL}getTransactionsOfReferalWithdrawRequests';
}
