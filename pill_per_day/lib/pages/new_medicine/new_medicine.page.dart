import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pill_per_day/pages/new_medicine/new_medicine.state.dart';
import 'package:pill_per_day/pages/new_medicine/new_medicine.viewmodel.dart';
import 'package:pill_per_day/shared/widgets/page_button.dart';

class NewMedicinePage extends StatelessWidget {
  final NewMedicineViewModel viewModel;
  NewMedicinePage({super.key, required this.viewModel});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController datePickerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Remédio'),
        backgroundColor: Theme.of(context).cardColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      body: ValueListenableBuilder<NewMedicineState>(
        valueListenable: viewModel.state,
        builder: (context, state, _) {
          if (state is NewMedicineStateError) {
            print('ERROR');
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 128,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Ocorreu um erro ao cadastrar o remédio.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.red,
                        ),
                  ),
                  if (state.message.isNotEmpty)
                    Text(
                      state.message,
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.red,
                              ),
                    ),
                ],
              ),
            );
          }
          if (state is NewMedicineStateSuccess) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Future.delayed(const Duration(seconds: 3), () {
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              });
            });
            return Column(
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  size: 128,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Remédio cadastrado com sucesso!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            );
          }
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: 'Nome do Remédio',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(99.0)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, insira um nome';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    if (value == null) return;
                                    viewModel.setName(value);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: 'A cada quantas horas?',
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(99.0)),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9.]')),
                                  ],
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, insira um intervalo';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    if (value == null ||
                                        double.tryParse(value) == null) return;
                                    viewModel.setFrequencyHours(
                                        double.tryParse(value)!);
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Até',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: datePickerController,
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          hintText: 'Data limite',
                                          alignLabelWithHint: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(99.0)),
                                          ),
                                        ),
                                        readOnly: true,
                                        onTap: () =>
                                            onTapDateField(context: context),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Por favor, insira uma data';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: 'Observações',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(99.0)),
                                    ),
                                  ),
                                  maxLines: null,
                                  onSaved: (value) {
                                    if (value == null || value.isEmpty) return;
                                    viewModel.setObservations(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PageButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            viewModel.saveMedicine();
                          }
                        },
                        text: 'Salvar',
                        icon: const Icon(Icons.save),
                      ),
                    ],
                  ),
                ),
              ),
              if (state is NewMedicineStateLoading)
                Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: const CircularProgressIndicator(),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  onTapDateField({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime(2101),
      firstDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    datePickerController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
    viewModel.setLimitDate(pickedDate);
  }
}
