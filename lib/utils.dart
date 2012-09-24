Object findIn(Object o, List<Object> elements, [Object transform(Object)]) {
  final matchingElements = elements.filter((e) => ((transform != null ? transform(e) : e) == o));
  if (matchingElements.length === 1) {
    return matchingElements.iterator().next();
  } else {
    return null;
  }
}

Object _transformIfNotNull(Object nullable, Object transform(Object)) {
  return nullable === null ? null : transform(nullable);
}