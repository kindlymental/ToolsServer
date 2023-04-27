const { newsList, wordsList } = require('./news')

//查询首页信息
const homeList = async () => {
  const news = await newsList()
  const words = await wordsList()
  let res = {
    pageTitle: '知识沸点',
    newsTitle: '今日最热',
    noticeText: '您如果有什么好的想法，可以联系我们，我们将提供更好的服务。',
    searchKeyList: words,
    topNewsList: news && [news[0]],
    newsList: news && news.slice(1),
  }
  return res
}

module.exports = {
  homeList,
}
