import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamersparlor/static/input_field.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/topbar.dart';

class UploadScreen extends StatefulWidget {
  UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  String? _fileName;
  String? _saveAsFileName;
  List<PlatformFile>? _paths;
  String? _directoryPath;
  String? _extension;
  bool _isLoading = false;
  bool _userAborted = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _extension = _controller.text);
  }

  void _pickFiles() async {
    _resetState();
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        onFileLoading: (FilePickerStatus status) => print(status),
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    }
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
      _userAborted = _paths == null;
    });
  }

  Future<void> _saveFile() async {
    _resetState();
    try {
      String? fileName = await FilePicker.platform.saveFile(
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
        type: _pickingType,
      );
      setState(() {
        _saveAsFileName = fileName;
        _userAborted = fileName == null;
      });
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _logException(String message) {
    print(message);
    _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    _scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _resetState() {
    if (!mounted) {
      return;
    }
    setState(() {
      _isLoading = true;
      _directoryPath = null;
      _fileName = null;
      _paths = null;
      _saveAsFileName = null;
      _userAborted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarMenu(
              menu: false,
            ),
            SizedBox(
              height: 40,
            ),
            Center(child: Text('Add Video',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
            SizedBox(
              height: 40,
            ),
            InputField(title: 'First Name *'),
            SizedBox(
              height: 30,
            ),
            InputField(title: 'Last Name'),
            SizedBox(
              height: 30,
            ),
            InputField(title: 'Email *'),
            SizedBox(
              height: 30,
            ),  InputField(title: 'Gamertag *'),
            SizedBox(
              height: 30,
            ),  InputField(title: 'Game *'),
            SizedBox(
              height: 30,
            ), InputField(title: 'Instagram'),
            SizedBox(
              height: 30,
            ), InputField(title: 'Twitter'),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text('Upload Video'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => _pickFiles(),
                    child: Text('Upload video'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          _fileName != null ? _fileName! : '',
                          maxLines: 2,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(child: LargeButton(title: 'Submit', onPressed: (){})),
             SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
