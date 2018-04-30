void main() {
  print(solve(500));
  print(solve(20));
  print(solve(519));
  print(solve(201));
}

const int MAX_PER_PAGE = 100;
const int ACCURACY_RANGE = 5;

/// Solves the most efficient way to fetch the number of objects [limit] with the least requests.
PaginationInformation solve(int limit) {
  if (limit < 0) {
    throw new RangeError("limit cannot be less than zero (was $limit)");
  }

  if (limit < MAX_PER_PAGE) {
    return new PaginationInformation(limit, 1, limit);
  }

  if ((limit % MAX_PER_PAGE) == 0) {
    return new PaginationInformation(
        limit, limit ~/ MAX_PER_PAGE, MAX_PER_PAGE);
  }

  int itemsPerPage = 100;
  int pages = (limit / itemsPerPage).ceil();

  return new PaginationInformation(limit, pages, itemsPerPage);
}

class PaginationInformation {
  final int limit;
  final int itemsPerPage;
  final int pages;

  PaginationInformation(this.limit, this.pages, this.itemsPerPage);

  @override
  String toString() => "limit: $limit, pages: $pages, per page: $itemsPerPage";
}
