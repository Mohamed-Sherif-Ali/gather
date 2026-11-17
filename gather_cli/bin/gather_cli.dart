import 'package:gather_cli/event.dart';

void main(List<String> arguments) {
  final event1 = Event(
    id: '1',
    title: 'Sample Event',
    startsAt: DateTime.utc(2027, 10, 15, 10, 0, 0),
    hostId: 'host123',
    city: 'New York',
    capacity: 100,
  );
  final event2 = Event(
    id: '2',
    title: 'Another Event',
    startsAt: DateTime.utc(2027, 10, 16, 14, 0, 0),
    hostId: 'host456',
    city: 'Los Angeles',
    capacity: 50,
    description: 'This is a sample event description.',
    cancelled: true,
  );
  final event3 = Event(
    id: '3',
    title: 'Third Event',
    startsAt: DateTime.utc(2027, 10, 17, 9, 0, 0),
    hostId: 'host789',
    city: 'Chicago',
    capacity: 200,
    description: null,
  );

  final List<Event> events = [event1, event2, event3];
  for (final event in events) {
    event.description == null
        ? print(
            'Event: ${event.title}\n City: ${event.city}\n Capacity: ${event.capacity}\n Id: ${event.id}\n Starts At: ${event.startsAt}\n Host ID: ${event.hostId}\n Cancelled: ${event.cancelled}\n',
          )
        : print(
            'Event: ${event.title}\n City: ${event.city}\n Capacity: ${event.capacity}\n Id: ${event.id}\n Starts At: ${event.startsAt}\n Host ID: ${event.hostId}\n Description: ${event.description}\n Cancelled: ${event.cancelled}\n',
          );
  }
}
