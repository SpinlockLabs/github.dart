void main() {
  print(solve(500));
  print(solve(20));
  print(solve(519));
  print(solve(201));
}

const int maxPerPage = 100;
const int accuracyRange = 5;

/// Solves the most efficient way to fetch the number of objects [limit] with the least requests.
PaginationInformation solve(int limit) {
  if (limit < 0) {
    throw RangeError('limit cannot be less than zero (was $limit)');
  }

  if (limit < maxPerPage) {
    return PaginationInformation(limit, 1, limit);
  }

  if ((limit % maxPerPage) == 0) {
    return PaginationInformation(limit, limit ~/ maxPerPage, maxPerPage);
  }

  const itemsPerPage = 100;
  final pages = (limit / itemsPerPage).ceil();

  return PaginationInformation(limit, pages, itemsPerPage);
}

class PaginationInformation {
  final int limit;
  final int itemsPerPage;
  final int pages;

  PaginationInformation(this.limit, this.pages, this.itemsPerPage);

  @override
  String toString() => 'limit: $limit, pages: $pages, per page: $itemsPerPage';
}
