class Event {
  final String id;
  final String title;
  final DateTime startsAt;
  final String hostId;
  final String city;
  final String? description;
  final int capacity;
  final bool cancelled;

  const Event({
    required this.id,
    required this.title,
    required this.startsAt,
    required this.hostId,
    required this.city,
    this.description,
    required this.capacity,
    this.cancelled = false,
  });
}
