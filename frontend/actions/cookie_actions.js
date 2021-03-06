var AppDispatcher = require('../dispatcher/dispatcher'),
    CookieConstants = require('../constants/cookie_constants');

var CookieActions = {
  receiveAll: function (cookies) {
    AppDispatcher.dispatch({
      actionType: CookieConstants.COOKIES_RECEIVED,
      cookies: cookies
    });
  },

  receiveCookie: function (cookie) {
    AppDispatcher.dispatch({
      actionType: CookieConstants.COOKIE_RECEIVED,
      cookie: cookie
    });
  },

  fetchCookiesFromBrowser: function () {
    AppDispatcher.dispatch({
      actionType: CookieConstants.FETCH_COOKIES
    });
  },

  clearCookies: function () {
    AppDispatcher.dispatch({
      actionType: CookieConstants.CLEAR_COOKIES
    });
  },

  clearCookie: function (cookieName) {
    AppDispatcher.dispatch({
      actionType: CookieConstants.CLEAR_COOKIE,
      cookieName: cookieName
    });
  }
};

module.exports = CookieActions;
