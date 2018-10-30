var StudyDataUpload = artifacts.require("StudyDataUpload");

module.exports = function (deployer) {
    // deployment steps
    deployer.deploy(StudyDataUpload);
};