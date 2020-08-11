import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../form_field.dart';
import '../form_style.dart';

import 'date_range_picker_form_field.dart';

@immutable
class FastDateRangePicker extends FastFormField<DateTimeRange> {
  FastDateRangePicker({
    bool autofocus = false,
    FastFormFieldBuilder builder,
    this.cancelText,
    this.confirmText,
    this.currentDate,
    InputDecoration decoration,
    this.errorFormatText,
    this.errorInvalidRangeText,
    this.errorInvalidText,
    this.fieldEndHintText,
    this.fieldEndLabelText,
    this.fieldStartHintText,
    this.fieldStartLabelText,
    @required this.firstDate,
    this.format,
    String helper,
    this.helpText,
    this.icon,
    @required String id,
    this.initialEntryMode,
    DateTimeRange initialValue,
    String label,
    @required this.lastDate,
    this.textBuilder,
    FormFieldValidator validator,
  }) : super(
          autofocus: autofocus,
          builder: builder ?? fastDateRangerPickerBuilder,
          decoration: decoration,
          helper: helper,
          id: id,
          initialValue: initialValue,
          label: label,
          validator: validator,
        );

  final String cancelText;
  final String confirmText;
  final DateTime currentDate;
  final String errorFormatText;
  final String errorInvalidRangeText;
  final String errorInvalidText;
  final String fieldEndHintText;
  final String fieldEndLabelText;
  final String fieldStartHintText;
  final String fieldStartLabelText;
  final DateTime firstDate;
  final DateFormat format;
  final String helpText;
  final Icon icon;
  final DatePickerEntryMode initialEntryMode;
  final DateTime lastDate;
  final DateRangePickerTextBuilder textBuilder;

  @override
  State<StatefulWidget> createState() => FastFormFieldState<DateTimeRange>();
}

final FastFormFieldBuilder fastDateRangerPickerBuilder = (context, state) {
  final style = FormStyle.of(context);
  final widget = state.widget as FastDateRangePicker;

  return DateRangePickerFormField(
    autovalidate: state.autovalidate,
    cancelText: widget.cancelText,
    confirmText: widget.confirmText,
    decoration: widget.decoration ?? style.getInputDecoration(context, widget),
    errorFormatText: widget.errorFormatText,
    errorInvalidRangeText: widget.errorInvalidRangeText,
    errorInvalidText: widget.errorInvalidText,
    fieldEndHintText: widget.fieldEndHintText,
    fieldEndLabelText: widget.fieldEndLabelText,
    fieldStartHintText: widget.fieldStartHintText,
    fieldStartLabelText: widget.fieldStartLabelText,
    firstDate: widget.firstDate,
    format: widget.format,
    helpText: widget.helpText,
    icon: widget.icon,
    initialValue: widget.initialValue,
    lastDate: widget.lastDate,
    onChanged: state.onChanged,
    onReset: state.onReset,
    onSaved: state.onSaved,
    textBuilder: widget.textBuilder,
    validator: widget.validator,
  );
};
