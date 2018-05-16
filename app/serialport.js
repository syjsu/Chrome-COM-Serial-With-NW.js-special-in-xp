
    var onGetDevices = function(ports) {
        for (var i = 0; i < ports.length; i++) {
            console.log(ports[i].path);
        }
    }
    chrome.serial.getDevices(onGetDevices);

    function convertArrayBufferToString(buf) {
        var bufView = new Uint8Array(buf);
        var encodedString = String.fromCharCode.apply("null", bufView);
        return decodeURIComponent(encodedString);
    }

    var onReceiveCallback = function(info) {
        console.log('received', convertArrayBufferToString(info.data));
    };

    //convertStringToArrayBuffer('hello')
    var convertStringToArrayBuffer = function(str) {
        var buf = new ArrayBuffer(str.length);
        var bufView = new Uint8Array(buf);
        for (var i = 0; i < str.length; i++) {
            bufView[i] = str.charCodeAt(i);
        }
        return buf;
    };

    var onConnect = function(connectionInfo) {

        console.log(chrome.runtime.lastError, connectionInfo);

        chrome.serial.onReceive.addListener(onReceiveCallback);

        var connectionId = connectionInfo.connectionId;

        var buffer = new ArrayBuffer(1);
        var dataView = new DataView(buffer);
        dataView.setInt8(0, 0xaa);

        chrome.serial.send(connectionId, buffer, function() {

            chrome.serial.update(connectionId, {
                bitrate: 9600
            }, function(result) {
                console.log(chrome.runtime.lastError, result);

                chrome.serial.send(connectionId, buffer, console.log.bind(console));

            });

        });
    };

    chrome.serial.connect('COM2', {
        bitrate: 9600
    }, onConnect);