// *Listing 9-10: This Node.js code snippet makes use of both the official salesforce/core module and the unofficial sfdx-node module to authorize an org.*

const { SfdxProjectJson, Org } = require("@salesforce/core");
const sfdx = require("sfdx-node");

const authWeb = async (destination, isDevHub) => {
  if (!isDevHub) {
    try {
      const orgObj = await Org.create(destination);
      return orgObj;
    } catch (e) {
      // Do nothing
    }
  }
  return sfdx.auth.webLogin({
    setdefaultdevhubusername: isDevHub,
    setalias: destination
  });
};

module.exports = {
  authWeb
};
