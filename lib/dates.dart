/**
 * Date and Time Utilities
 */
library github.dates;

String friendlyDateTime(DateTime time) {
  return "${friendlyDate(time)} at ${friendlyTime(time)}";
}

String friendlyDate(DateTime time) {
  return
      "${monthName(time.month)} ${time.day}${friendlyDaySuffix(time.day)}, ${time.year}";
}

String friendlyTime(DateTime time) {
  var suffix = time.hour >= 12 ? "PM" : "AM";
  var hour = ((time.hour + 11) % 12 + 1);
  
  return "${hour}:${time.minute}:${friendlySecond(time.second)} ${suffix} (in ${time.timeZoneName})";
}

String friendlySecond(int second) {
  if (second > 9) {
    return second.toString();
  } else {
    return "0${second}";
  }
}

String friendlyDaySuffix(int day) {
  switch (day) {
    case 1:
    case 21:
    case 31:
      return "st";
    case 2:
    case 22:
      return "nd";
    case 23:
    case 3:
      return "rd";
    default:
      return "th";
  }
}

String monthName(int number) {
  switch (number) {
    case 1:
      return "January";
    case 2:
      return "Feburary";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "August";
    case 9:
      return "September";
    case 10:
      return "October";
    case 11:
      return "November";
    case 12:
      return "December";
  }
  return "(not a month?)";
}