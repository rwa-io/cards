import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(
  valueField: 'code',
)
enum MemorySize {
  c2r3(0),
  c3r4(1),
  c4r5(2),
  c5r6(3);

  const MemorySize(this.code);
  final int code;

  int get size => switch (this) {
        c2r3 => 6,
        c3r4 => 12,
        c4r5 => 20,
        c5r6 => 30,
      };

  int get columns => switch (this) {
        c2r3 => 2,
        c3r4 => 3,
        c4r5 => 4,
        c5r6 => 5,
      };

  int get rows => switch (this) {
        c2r3 => 3,
        c3r4 => 4,
        c4r5 => 5,
        c5r6 => 6,
      };

  int get padding => switch (this) {
        c2r3 => 8,
        c3r4 => 5,
        c4r5 => 4,
        c5r6 => 3,
      };

  int get borderRadius => switch (this) {
        c2r3 => 20,
        c3r4 => 16,
        c4r5 => 14,
        c5r6 => 12,
      };
}
