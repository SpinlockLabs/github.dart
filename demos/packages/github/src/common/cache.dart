part of github.common;

class GitHubCache {
  final Cache cache;
  
  GitHubCache(this.cache);
  
  void register(CacheKey key, Object object) {
    cache.set(key, object);
  }
  
  Future get(CacheKey key, Loader loader) {
    return cache.get(key, ifAbsent: loader);
  }
}

class CacheKey {
  final Type type;
  final String identifier;
  
  CacheKey(this.type, this.identifier);
  
  bool operator ==(other) {
    if (other is! CacheKey) {
      return false;
    }
    
    return other.type == type && other.identifier == identifier;
  }
  
  int get hashCode {
    int prime = 31;
    
    int result = 1;
    
    result = prime * result + type.hashCode;
    
    result = prime * result + identifier.hashCode;
    
    return result;
  }
}