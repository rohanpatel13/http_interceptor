String buildUrlString(String url, Map<String, String>? parameters) {
  // Avoids unnecessary processing.
  if (parameters == null) return url;

  // Check if there are parameters to add.
  if (parameters.length > 0) {
    // Checks if the string url already has parameters.
    if (url.contains("?")) {
      url += "&";
    } else {
      url += "?";
    }

    // Concat every parameter to the string url.
    parameters.forEach((key, value) {
      url += "$key=$value&";
    });

    // Remove last '&' character.
    url = url.substring(0, url.length - 1);
  }

  return url;
}
