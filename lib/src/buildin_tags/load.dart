import 'dart:collection';

import 'package:liquid/src/errors.dart';
import 'package:liquid/src/parser/tag_parser.dart';
import 'package:liquid/src/expressions.dart';

import '../context.dart';
import '../block.dart';
import '../model.dart';
import '../tag.dart';

class Load extends Block {
  String library;

  Load(this.library): super([]);

  @override
  Iterable<String> render(RenderContext context) {

    return Iterable.empty();
  }

  static final SimpleBlockFactory factory = (tokens, children) {
    var parser = TagParser.from(tokens);
    parser.expect(types: [TokenType.identifier]);
    final library = parser.current.value;
    return Load(library);
  };
}
