const imageManipulation = require("strapi-plugin-responsive-image/server/services/image-manipulation");

module.exports = (plugin) => {
  plugin.services["image-manipulation"] = () => {
    return {
      ...imageManipulation(),
      //Quitar el "generateThumbnail" de esta amnera no agregara el formato de imagen "pequeñita"
      generateThumbnail: () => {},
    };
  };

  return plugin;
};
