contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6925642d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while ('cd', 36).length > idx:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x110acb23 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _199 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 384
            require mem[_189] == mem[_189 + 12 len 20]
            mem[_199] = mem[_189]
            require mem[_189 + 32] == mem[_189 + 44 len 20]
            mem[_199 + 32] = mem[_189 + 32]
            mem[_199 + 64] = mem[_189 + 64]
            mem[_199 + 96] = mem[_189 + 96]
            mem[_199 + 128] = mem[_189 + 128]
            mem[_199 + 160] = mem[_189 + 160]
            mem[_199 + 192] = mem[_189 + 192]
            mem[_199 + 224] = mem[_189 + 224]
            mem[_199 + 256] = mem[_189 + 256]
            require mem[_189 + 288] < 3
            mem[_199 + 288] = mem[_189 + 288]
            mem[_199 + 320] = mem[_189 + 320]
            require mem[_189 + 352] == mem[_189 + 364 len 20]
            mem[_199 + 352] = mem[_189 + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _199
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _147 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _149 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _149:
            _293 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_293 + 44 len 20]
            mem[t + 64] = mem[_293 + 64]
            mem[t + 96] = mem[_293 + 96]
            mem[t + 128] = mem[_293 + 128]
            mem[t + 160] = mem[_293 + 160]
            mem[t + 192] = mem[_293 + 192]
            mem[t + 224] = mem[_293 + 224]
            mem[t + 256] = mem[_293 + 256]
            if mem[_293 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_293 + 288]
            mem[t + 320] = mem[_293 + 320]
            mem[t + 352] = mem[_293 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _147 + (384 * _149) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_297]
        require mem[_297] <= test266151307()
        require _297 + mem[_297] + 31 < _297 + return_data.size
        _310 = mem[_297 + mem[_297]]
        if mem[_297 + mem[_297]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_297 + mem[_297]]) + 1 < 0 or _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1
        mem[_297 + ceil32(return_data.size)] = _310
        require return_data.size >= _307 + (480 * _310) + 32
        s = _297 + _307 + 32
        t = _297 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _310:
            require _297 + return_data.size - s >= 480
            _420 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_420] = mem[s]
            mem[_420 + 32] = mem[s + 32]
            mem[_420 + 64] = mem[s + 64]
            mem[_420 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_420 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_420 + 160] = mem[s + 160]
            mem[_420 + 192] = mem[s + 192]
            mem[_420 + 224] = mem[s + 224]
            mem[_420 + 256] = mem[s + 256]
            mem[_420 + 288] = mem[s + 288]
            mem[_420 + 320] = mem[s + 320]
            mem[_420 + 352] = mem[s + 352]
            mem[_420 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_420 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_420 + 448] = mem[s + 448]
            mem[t] = _420
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _419 = mem[64]
        mem[mem[64]] = 32
        _422 = mem[_297 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_297 + ceil32(return_data.size)]
        idx = 0
        s = _297 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _422:
            _527 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_527 + 32]
            mem[t + 64] = mem[_527 + 64]
            mem[t + 96] = mem[_527 + 96]
            mem[t + 128] = mem[_527 + 140 len 20]
            mem[t + 160] = mem[_527 + 172 len 20]
            mem[t + 192] = mem[_527 + 192]
            mem[t + 224] = mem[_527 + 224]
            mem[t + 256] = mem[_527 + 256]
            mem[t + 288] = mem[_527 + 288]
            mem[t + 320] = mem[_527 + 320]
            mem[t + 352] = mem[_527 + 352]
            mem[t + 384] = mem[_527 + 384]
            if mem[_527 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_527 + 416]
            mem[t + 448] = mem[_527 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _419 + (480 * _422) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 512
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + 288] = 0
    mem[(32 * ('cd', 36).length) + 320] = 0
    mem[(32 * ('cd', 36).length) + 352] = 0
    mem[(32 * ('cd', 36).length) + 384] = 0
    mem[var31002] = 0
    mem[var31002 + 32] = 0
    mem[var31002 + 64] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while ('cd', 36).length > idx:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x110acb23 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _741 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 384
            require mem[_732] == mem[_732 + 12 len 20]
            mem[_741] = mem[_732]
            require mem[_732 + 32] == mem[_732 + 44 len 20]
            mem[_741 + 32] = mem[_732 + 32]
            mem[_741 + 64] = mem[_732 + 64]
            mem[_741 + 96] = mem[_732 + 96]
            mem[_741 + 128] = mem[_732 + 128]
            mem[_741 + 160] = mem[_732 + 160]
            mem[_741 + 192] = mem[_732 + 192]
            mem[_741 + 224] = mem[_732 + 224]
            mem[_741 + 256] = mem[_732 + 256]
            require mem[_732 + 288] < 3
            mem[_741 + 288] = mem[_732 + 288]
            mem[_741 + 320] = mem[_732 + 320]
            require mem[_732 + 352] == mem[_732 + 364 len 20]
            mem[_741 + 352] = mem[_732 + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _741
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _690 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _691 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _691:
            _835 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_835 + 44 len 20]
            mem[t + 64] = mem[_835 + 64]
            mem[t + 96] = mem[_835 + 96]
            mem[t + 128] = mem[_835 + 128]
            mem[t + 160] = mem[_835 + 160]
            mem[t + 192] = mem[_835 + 192]
            mem[t + 224] = mem[_835 + 224]
            mem[t + 256] = mem[_835 + 256]
            if mem[_835 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_835 + 288]
            mem[t + 320] = mem[_835 + 320]
            mem[t + 352] = mem[_835 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _690 + (384 * _691) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _840 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _850 = mem[_840]
        require mem[_840] <= test266151307()
        require _840 + mem[_840] + 31 < _840 + return_data.size
        _852 = mem[_840 + mem[_840]]
        if mem[_840 + mem[_840]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_840 + mem[_840]]) + 1 < 0 or _840 + ceil32(return_data.size) + ceil32(32 * mem[_840 + mem[_840]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _840 + ceil32(return_data.size) + ceil32(32 * mem[_840 + mem[_840]]) + 1
        mem[_840 + ceil32(return_data.size)] = _852
        require return_data.size >= _850 + (480 * _852) + 32
        s = _840 + _850 + 32
        t = _840 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _852:
            require _840 + return_data.size - s >= 480
            _963 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_963] = mem[s]
            mem[_963 + 32] = mem[s + 32]
            mem[_963 + 64] = mem[s + 64]
            mem[_963 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_963 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_963 + 160] = mem[s + 160]
            mem[_963 + 192] = mem[s + 192]
            mem[_963 + 224] = mem[s + 224]
            mem[_963 + 256] = mem[s + 256]
            mem[_963 + 288] = mem[s + 288]
            mem[_963 + 320] = mem[s + 320]
            mem[_963 + 352] = mem[s + 352]
            mem[_963 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_963 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_963 + 448] = mem[s + 448]
            mem[t] = _963
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _962 = mem[64]
        mem[mem[64]] = 32
        _964 = mem[_840 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_840 + ceil32(return_data.size)]
        idx = 0
        s = _840 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _964:
            _1069 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1069 + 32]
            mem[t + 64] = mem[_1069 + 64]
            mem[t + 96] = mem[_1069 + 96]
            mem[t + 128] = mem[_1069 + 140 len 20]
            mem[t + 160] = mem[_1069 + 172 len 20]
            mem[t + 192] = mem[_1069 + 192]
            mem[t + 224] = mem[_1069 + 224]
            mem[t + 256] = mem[_1069 + 256]
            mem[t + 288] = mem[_1069 + 288]
            mem[t + 320] = mem[_1069 + 320]
            mem[t + 352] = mem[_1069 + 352]
            mem[t + 384] = mem[_1069 + 384]
            if mem[_1069 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_1069 + 416]
            mem[t + 448] = mem[_1069 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _962 + (480 * _964) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 896
    mem[(32 * ('cd', 36).length) + 512] = 0
    mem[(32 * ('cd', 36).length) + 544] = 0
    mem[(32 * ('cd', 36).length) + 576] = 0
    mem[(32 * ('cd', 36).length) + 608] = 0
    mem[(32 * ('cd', 36).length) + 640] = 0
    mem[(32 * ('cd', 36).length) + 672] = 0
    mem[(32 * ('cd', 36).length) + 704] = 0
    mem[(32 * ('cd', 36).length) + 736] = 0
    mem[(32 * ('cd', 36).length) + 768] = 0
    mem[var39002] = 0
    mem[var39002 + 32] = 0
    mem[var39002 + 64] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while ('cd', 36).length > idx:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x110acb23 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _1283 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 384
            require mem[_1274] == mem[_1274 + 12 len 20]
            mem[_1283] = mem[_1274]
            require mem[_1274 + 32] == mem[_1274 + 44 len 20]
            mem[_1283 + 32] = mem[_1274 + 32]
            mem[_1283 + 64] = mem[_1274 + 64]
            mem[_1283 + 96] = mem[_1274 + 96]
            mem[_1283 + 128] = mem[_1274 + 128]
            mem[_1283 + 160] = mem[_1274 + 160]
            mem[_1283 + 192] = mem[_1274 + 192]
            mem[_1283 + 224] = mem[_1274 + 224]
            mem[_1283 + 256] = mem[_1274 + 256]
            require mem[_1274 + 288] < 3
            mem[_1283 + 288] = mem[_1274 + 288]
            mem[_1283 + 320] = mem[_1274 + 320]
            require mem[_1274 + 352] == mem[_1274 + 364 len 20]
            mem[_1283 + 352] = mem[_1274 + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1283
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1232 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1233 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _1233:
            _1377 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1377 + 44 len 20]
            mem[t + 64] = mem[_1377 + 64]
            mem[t + 96] = mem[_1377 + 96]
            mem[t + 128] = mem[_1377 + 128]
            mem[t + 160] = mem[_1377 + 160]
            mem[t + 192] = mem[_1377 + 192]
            mem[t + 224] = mem[_1377 + 224]
            mem[t + 256] = mem[_1377 + 256]
            if mem[_1377 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_1377 + 288]
            mem[t + 320] = mem[_1377 + 320]
            mem[t + 352] = mem[_1377 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1232 + (384 * _1233) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1382 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1392 = mem[_1382]
        require mem[_1382] <= test266151307()
        require _1382 + mem[_1382] + 31 < _1382 + return_data.size
        _1394 = mem[_1382 + mem[_1382]]
        if mem[_1382 + mem[_1382]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1382 + mem[_1382]]) + 1 < 0 or _1382 + ceil32(return_data.size) + ceil32(32 * mem[_1382 + mem[_1382]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1382 + ceil32(return_data.size) + ceil32(32 * mem[_1382 + mem[_1382]]) + 1
        mem[_1382 + ceil32(return_data.size)] = _1394
        require return_data.size >= _1392 + (480 * _1394) + 32
        s = _1382 + _1392 + 32
        t = _1382 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1394:
            require _1382 + return_data.size - s >= 480
            _1505 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_1505] = mem[s]
            mem[_1505 + 32] = mem[s + 32]
            mem[_1505 + 64] = mem[s + 64]
            mem[_1505 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_1505 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_1505 + 160] = mem[s + 160]
            mem[_1505 + 192] = mem[s + 192]
            mem[_1505 + 224] = mem[s + 224]
            mem[_1505 + 256] = mem[s + 256]
            mem[_1505 + 288] = mem[s + 288]
            mem[_1505 + 320] = mem[s + 320]
            mem[_1505 + 352] = mem[s + 352]
            mem[_1505 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_1505 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_1505 + 448] = mem[s + 448]
            mem[t] = _1505
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _1504 = mem[64]
        mem[mem[64]] = 32
        _1506 = mem[_1382 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_1382 + ceil32(return_data.size)]
        idx = 0
        s = _1382 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _1506:
            _1611 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1611 + 32]
            mem[t + 64] = mem[_1611 + 64]
            mem[t + 96] = mem[_1611 + 96]
            mem[t + 128] = mem[_1611 + 140 len 20]
            mem[t + 160] = mem[_1611 + 172 len 20]
            mem[t + 192] = mem[_1611 + 192]
            mem[t + 224] = mem[_1611 + 224]
            mem[t + 256] = mem[_1611 + 256]
            mem[t + 288] = mem[_1611 + 288]
            mem[t + 320] = mem[_1611 + 320]
            mem[t + 352] = mem[_1611 + 352]
            mem[t + 384] = mem[_1611 + 384]
            if mem[_1611 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_1611 + 416]
            mem[t + 448] = mem[_1611 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _1504 + (480 * _1506) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 1280
    mem[(32 * ('cd', 36).length) + 896] = 0
    mem[(32 * ('cd', 36).length) + 928] = 0
    mem[(32 * ('cd', 36).length) + 960] = 0
    mem[(32 * ('cd', 36).length) + 992] = 0
    mem[(32 * ('cd', 36).length) + 1024] = 0
    mem[(32 * ('cd', 36).length) + 1056] = 0
    mem[(32 * ('cd', 36).length) + 1088] = 0
    mem[(32 * ('cd', 36).length) + 1120] = 0
    mem[(32 * ('cd', 36).length) + 1152] = 0
    mem[var47002] = 0
    mem[var47002 + 32] = 0
    mem[var47002 + 64] = 0
    mem[var49002] = var49001
    if not var49003 - 1:
        idx = 0
        while ('cd', 36).length > idx:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x110acb23 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1816 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _1825 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 384
            require mem[_1816] == mem[_1816 + 12 len 20]
            mem[_1825] = mem[_1816]
            require mem[_1816 + 32] == mem[_1816 + 44 len 20]
            mem[_1825 + 32] = mem[_1816 + 32]
            mem[_1825 + 64] = mem[_1816 + 64]
            mem[_1825 + 96] = mem[_1816 + 96]
            mem[_1825 + 128] = mem[_1816 + 128]
            mem[_1825 + 160] = mem[_1816 + 160]
            mem[_1825 + 192] = mem[_1816 + 192]
            mem[_1825 + 224] = mem[_1816 + 224]
            mem[_1825 + 256] = mem[_1816 + 256]
            require mem[_1816 + 288] < 3
            mem[_1825 + 288] = mem[_1816 + 288]
            mem[_1825 + 320] = mem[_1816 + 320]
            require mem[_1816 + 352] == mem[_1816 + 364 len 20]
            mem[_1825 + 352] = mem[_1816 + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1825
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1774 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1775 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _1775:
            _1919 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1919 + 44 len 20]
            mem[t + 64] = mem[_1919 + 64]
            mem[t + 96] = mem[_1919 + 96]
            mem[t + 128] = mem[_1919 + 128]
            mem[t + 160] = mem[_1919 + 160]
            mem[t + 192] = mem[_1919 + 192]
            mem[t + 224] = mem[_1919 + 224]
            mem[t + 256] = mem[_1919 + 256]
            if mem[_1919 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_1919 + 288]
            mem[t + 320] = mem[_1919 + 320]
            mem[t + 352] = mem[_1919 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1774 + (384 * _1775) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1924 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1934 = mem[_1924]
        require mem[_1924] <= test266151307()
        require _1924 + mem[_1924] + 31 < _1924 + return_data.size
        _1936 = mem[_1924 + mem[_1924]]
        if mem[_1924 + mem[_1924]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1924 + mem[_1924]]) + 1 < 0 or _1924 + ceil32(return_data.size) + ceil32(32 * mem[_1924 + mem[_1924]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1924 + ceil32(return_data.size) + ceil32(32 * mem[_1924 + mem[_1924]]) + 1
        mem[_1924 + ceil32(return_data.size)] = _1936
        require return_data.size >= _1934 + (480 * _1936) + 32
        s = _1924 + _1934 + 32
        t = _1924 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1936:
            require _1924 + return_data.size - s >= 480
            _2047 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_2047] = mem[s]
            mem[_2047 + 32] = mem[s + 32]
            mem[_2047 + 64] = mem[s + 64]
            mem[_2047 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_2047 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_2047 + 160] = mem[s + 160]
            mem[_2047 + 192] = mem[s + 192]
            mem[_2047 + 224] = mem[s + 224]
            mem[_2047 + 256] = mem[s + 256]
            mem[_2047 + 288] = mem[s + 288]
            mem[_2047 + 320] = mem[s + 320]
            mem[_2047 + 352] = mem[s + 352]
            mem[_2047 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_2047 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_2047 + 448] = mem[s + 448]
            mem[t] = _2047
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _2046 = mem[64]
        mem[mem[64]] = 32
        _2048 = mem[_1924 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_1924 + ceil32(return_data.size)]
        idx = 0
        s = _1924 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _2048:
            _2153 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2153 + 32]
            mem[t + 64] = mem[_2153 + 64]
            mem[t + 96] = mem[_2153 + 96]
            mem[t + 128] = mem[_2153 + 140 len 20]
            mem[t + 160] = mem[_2153 + 172 len 20]
            mem[t + 192] = mem[_2153 + 192]
            mem[t + 224] = mem[_2153 + 224]
            mem[t + 256] = mem[_2153 + 256]
            mem[t + 288] = mem[_2153 + 288]
            mem[t + 320] = mem[_2153 + 320]
            mem[t + 352] = mem[_2153 + 352]
            mem[t + 384] = mem[_2153 + 384]
            if mem[_2153 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_2153 + 416]
            mem[t + 448] = mem[_2153 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _2046 + (480 * _2048) + -mem[64] + 64
    mem[64] = (32 * ('cd', 36).length) + 1664
    mem[(32 * ('cd', 36).length) + 1280] = 0
    mem[(32 * ('cd', 36).length) + 1312] = 0
    mem[(32 * ('cd', 36).length) + 1344] = 0
    mem[(32 * ('cd', 36).length) + 1376] = 0
    mem[(32 * ('cd', 36).length) + 1408] = 0
    mem[(32 * ('cd', 36).length) + 1440] = 0
    mem[(32 * ('cd', 36).length) + 1472] = 0
    mem[(32 * ('cd', 36).length) + 1504] = 0
    mem[(32 * ('cd', 36).length) + 1536] = 0
    mem[var55002] = 0
    mem[var55002 + 32] = 0
    mem[var55002 + 64] = 0
    mem[var57002] = var57001
    if var57003 - 1:
        # nil
    else:
        idx = 0
        while ('cd', 36).length > idx:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x110acb23 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _2367 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 384
            require mem[_2358] == mem[_2358 + 12 len 20]
            mem[_2367] = mem[_2358]
            require mem[_2358 + 32] == mem[_2358 + 44 len 20]
            mem[_2367 + 32] = mem[_2358 + 32]
            mem[_2367 + 64] = mem[_2358 + 64]
            mem[_2367 + 96] = mem[_2358 + 96]
            mem[_2367 + 128] = mem[_2358 + 128]
            mem[_2367 + 160] = mem[_2358 + 160]
            mem[_2367 + 192] = mem[_2358 + 192]
            mem[_2367 + 224] = mem[_2358 + 224]
            mem[_2367 + 256] = mem[_2358 + 256]
            require mem[_2358 + 288] < 3
            mem[_2367 + 288] = mem[_2358 + 288]
            mem[_2367 + 320] = mem[_2358 + 320]
            require mem[_2358 + 352] == mem[_2358 + 364 len 20]
            mem[_2367 + 352] = mem[_2358 + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2367
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2316 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2317 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _2317:
            _2461 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2461 + 44 len 20]
            mem[t + 64] = mem[_2461 + 64]
            mem[t + 96] = mem[_2461 + 96]
            mem[t + 128] = mem[_2461 + 128]
            mem[t + 160] = mem[_2461 + 160]
            mem[t + 192] = mem[_2461 + 192]
            mem[t + 224] = mem[_2461 + 224]
            mem[t + 256] = mem[_2461 + 256]
            if mem[_2461 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_2461 + 288]
            mem[t + 320] = mem[_2461 + 320]
            mem[t + 352] = mem[_2461 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2316 + (384 * _2317) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2466 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2476 = mem[_2466]
        require mem[_2466] <= test266151307()
        require _2466 + mem[_2466] + 31 < _2466 + return_data.size
        _2478 = mem[_2466 + mem[_2466]]
        if mem[_2466 + mem[_2466]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2466 + mem[_2466]]) + 1 < 0 or _2466 + ceil32(return_data.size) + ceil32(32 * mem[_2466 + mem[_2466]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2466 + ceil32(return_data.size) + ceil32(32 * mem[_2466 + mem[_2466]]) + 1
        mem[_2466 + ceil32(return_data.size)] = _2478
        require return_data.size >= _2476 + (480 * _2478) + 32
        s = _2466 + _2476 + 32
        t = _2466 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _2478:
            require _2466 + return_data.size - s >= 480
            _2589 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_2589] = mem[s]
            mem[_2589 + 32] = mem[s + 32]
            mem[_2589 + 64] = mem[s + 64]
            mem[_2589 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_2589 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_2589 + 160] = mem[s + 160]
            mem[_2589 + 192] = mem[s + 192]
            mem[_2589 + 224] = mem[s + 224]
            mem[_2589 + 256] = mem[s + 256]
            mem[_2589 + 288] = mem[s + 288]
            mem[_2589 + 320] = mem[s + 320]
            mem[_2589 + 352] = mem[s + 352]
            mem[_2589 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_2589 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_2589 + 448] = mem[s + 448]
            mem[t] = _2589
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        # nil
}

function sub_10704956(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    mem[64] = (32 * ('cd', 100).length) + 128
    if not ('cd', 100).length:
        idx = 0
        while ('cd', 100).length > idx:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x5e73a034 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_218]
            require mem[_218] == mem[_218 + 12 len 20]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = 10^18
            mem[mem[64] + 68] = address(cd[68])
            require ext_code.size(address(_225))
            staticcall address(_225).0x4fcd54a4 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), 10^18, address(cd[68])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _275 = mem[_264]
            _276 = mem[_264 + 32]
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).tokenMetadata(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _330 = mem[_328 + 32]
            _334 = mem[64]
            mem[64] = mem[64] + 384
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_334] = address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_334 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xa3017d9 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_334 + 64] = mem[_344]
            mem[_334 + 96] = _330
            mem[_334 + 128] = _276
            mem[_334 + 160] = _275
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).strategyName() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_334 + 192] = mem[_350]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xe2e730f6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_334 + 224] = mem[_360]
            mem[_334 + 256] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x9b0f09ae with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_366] < 3
            if mem[_366] > 2:
                revert with 0, 33
            mem[_334 + 288] = mem[_366]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x26473a8f with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_334 + 320] = mem[_376]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xf725ed10 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_384] == mem[_384 + 12 len 20]
            mem[_334 + 352] = mem[_384 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _334
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _197 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _199 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _199:
            _393 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_393 + 44 len 20]
            mem[t + 64] = mem[_393 + 64]
            mem[t + 96] = mem[_393 + 96]
            mem[t + 128] = mem[_393 + 128]
            mem[t + 160] = mem[_393 + 160]
            mem[t + 192] = mem[_393 + 192]
            mem[t + 224] = mem[_393 + 224]
            mem[t + 256] = mem[_393 + 256]
            if mem[_393 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_393 + 288]
            mem[t + 320] = mem[_393 + 320]
            mem[t + 352] = mem[_393 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _197 + (384 * _199) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _407 = mem[_397]
        require mem[_397] <= test266151307()
        require _397 + mem[_397] + 31 < _397 + return_data.size
        _410 = mem[_397 + mem[_397]]
        if mem[_397 + mem[_397]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_397 + mem[_397]]) + 1 < 0 or _397 + ceil32(return_data.size) + ceil32(32 * mem[_397 + mem[_397]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _397 + ceil32(return_data.size) + ceil32(32 * mem[_397 + mem[_397]]) + 1
        mem[_397 + ceil32(return_data.size)] = _410
        require return_data.size >= _407 + (480 * _410) + 32
        s = _397 + _407 + 32
        t = _397 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _410:
            require _397 + return_data.size - s >= 480
            _545 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_545] = mem[s]
            mem[_545 + 32] = mem[s + 32]
            mem[_545 + 64] = mem[s + 64]
            mem[_545 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_545 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_545 + 160] = mem[s + 160]
            mem[_545 + 192] = mem[s + 192]
            mem[_545 + 224] = mem[s + 224]
            mem[_545 + 256] = mem[s + 256]
            mem[_545 + 288] = mem[s + 288]
            mem[_545 + 320] = mem[s + 320]
            mem[_545 + 352] = mem[s + 352]
            mem[_545 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_545 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_545 + 448] = mem[s + 448]
            mem[t] = _545
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _544 = mem[64]
        mem[mem[64]] = 32
        _547 = mem[_397 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_397 + ceil32(return_data.size)]
        idx = 0
        s = _397 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _547:
            _677 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_677 + 32]
            mem[t + 64] = mem[_677 + 64]
            mem[t + 96] = mem[_677 + 96]
            mem[t + 128] = mem[_677 + 140 len 20]
            mem[t + 160] = mem[_677 + 172 len 20]
            mem[t + 192] = mem[_677 + 192]
            mem[t + 224] = mem[_677 + 224]
            mem[t + 256] = mem[_677 + 256]
            mem[t + 288] = mem[_677 + 288]
            mem[t + 320] = mem[_677 + 320]
            mem[t + 352] = mem[_677 + 352]
            mem[t + 384] = mem[_677 + 384]
            if mem[_677 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_677 + 416]
            mem[t + 448] = mem[_677 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _544 + (480 * _547) + -mem[64] + 64
    mem[64] = (32 * ('cd', 100).length) + 512
    mem[(32 * ('cd', 100).length) + 128] = 0
    mem[(32 * ('cd', 100).length) + 160] = 0
    mem[(32 * ('cd', 100).length) + 192] = 0
    mem[(32 * ('cd', 100).length) + 224] = 0
    mem[(32 * ('cd', 100).length) + 256] = 0
    mem[(32 * ('cd', 100).length) + 288] = 0
    mem[(32 * ('cd', 100).length) + 320] = 0
    mem[(32 * ('cd', 100).length) + 352] = 0
    mem[(32 * ('cd', 100).length) + 384] = 0
    mem[var37002] = 0
    mem[var37002 + 32] = 0
    mem[var37002 + 64] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while ('cd', 100).length > idx:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x5e73a034 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _918 = mem[_912]
            require mem[_912] == mem[_912 + 12 len 20]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = 10^18
            mem[mem[64] + 68] = address(cd[68])
            require ext_code.size(address(_918))
            staticcall address(_918).0x4fcd54a4 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), 10^18, address(cd[68])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _956 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _968 = mem[_956]
            _969 = mem[_956 + 32]
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).tokenMetadata(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1023 = mem[_1020 + 32]
            _1026 = mem[64]
            mem[64] = mem[64] + 384
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_1026] = address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_1026 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xa3017d9 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1026 + 64] = mem[_1036]
            mem[_1026 + 96] = _1023
            mem[_1026 + 128] = _969
            mem[_1026 + 160] = _968
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).strategyName() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1042 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1026 + 192] = mem[_1042]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xe2e730f6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1052 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1026 + 224] = mem[_1052]
            mem[_1026 + 256] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x9b0f09ae with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1058 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1058] < 3
            if mem[_1058] > 2:
                revert with 0, 33
            mem[_1026 + 288] = mem[_1058]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x26473a8f with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1068 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1026 + 320] = mem[_1068]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xf725ed10 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1076 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1076] == mem[_1076 + 12 len 20]
            mem[_1026 + 352] = mem[_1076 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1026
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _890 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _891 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _891:
            _1085 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1085 + 44 len 20]
            mem[t + 64] = mem[_1085 + 64]
            mem[t + 96] = mem[_1085 + 96]
            mem[t + 128] = mem[_1085 + 128]
            mem[t + 160] = mem[_1085 + 160]
            mem[t + 192] = mem[_1085 + 192]
            mem[t + 224] = mem[_1085 + 224]
            mem[t + 256] = mem[_1085 + 256]
            if mem[_1085 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_1085 + 288]
            mem[t + 320] = mem[_1085 + 320]
            mem[t + 352] = mem[_1085 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _890 + (384 * _891) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1090 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1100 = mem[_1090]
        require mem[_1090] <= test266151307()
        require _1090 + mem[_1090] + 31 < _1090 + return_data.size
        _1102 = mem[_1090 + mem[_1090]]
        if mem[_1090 + mem[_1090]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1090 + mem[_1090]]) + 1 < 0 or _1090 + ceil32(return_data.size) + ceil32(32 * mem[_1090 + mem[_1090]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1090 + ceil32(return_data.size) + ceil32(32 * mem[_1090 + mem[_1090]]) + 1
        mem[_1090 + ceil32(return_data.size)] = _1102
        require return_data.size >= _1100 + (480 * _1102) + 32
        s = _1090 + _1100 + 32
        t = _1090 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1102:
            require _1090 + return_data.size - s >= 480
            _1238 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_1238] = mem[s]
            mem[_1238 + 32] = mem[s + 32]
            mem[_1238 + 64] = mem[s + 64]
            mem[_1238 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_1238 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_1238 + 160] = mem[s + 160]
            mem[_1238 + 192] = mem[s + 192]
            mem[_1238 + 224] = mem[s + 224]
            mem[_1238 + 256] = mem[s + 256]
            mem[_1238 + 288] = mem[s + 288]
            mem[_1238 + 320] = mem[s + 320]
            mem[_1238 + 352] = mem[s + 352]
            mem[_1238 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_1238 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_1238 + 448] = mem[s + 448]
            mem[t] = _1238
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _1237 = mem[64]
        mem[mem[64]] = 32
        _1239 = mem[_1090 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_1090 + ceil32(return_data.size)]
        idx = 0
        s = _1090 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _1239:
            _1369 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1369 + 32]
            mem[t + 64] = mem[_1369 + 64]
            mem[t + 96] = mem[_1369 + 96]
            mem[t + 128] = mem[_1369 + 140 len 20]
            mem[t + 160] = mem[_1369 + 172 len 20]
            mem[t + 192] = mem[_1369 + 192]
            mem[t + 224] = mem[_1369 + 224]
            mem[t + 256] = mem[_1369 + 256]
            mem[t + 288] = mem[_1369 + 288]
            mem[t + 320] = mem[_1369 + 320]
            mem[t + 352] = mem[_1369 + 352]
            mem[t + 384] = mem[_1369 + 384]
            if mem[_1369 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_1369 + 416]
            mem[t + 448] = mem[_1369 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _1237 + (480 * _1239) + -mem[64] + 64
    mem[64] = (32 * ('cd', 100).length) + 896
    mem[(32 * ('cd', 100).length) + 512] = 0
    mem[(32 * ('cd', 100).length) + 544] = 0
    mem[(32 * ('cd', 100).length) + 576] = 0
    mem[(32 * ('cd', 100).length) + 608] = 0
    mem[(32 * ('cd', 100).length) + 640] = 0
    mem[(32 * ('cd', 100).length) + 672] = 0
    mem[(32 * ('cd', 100).length) + 704] = 0
    mem[(32 * ('cd', 100).length) + 736] = 0
    mem[(32 * ('cd', 100).length) + 768] = 0
    mem[var45002] = 0
    mem[var45002 + 32] = 0
    mem[var45002 + 64] = 0
    mem[var47002] = var47001
    if not var47003 - 1:
        idx = 0
        while ('cd', 100).length > idx:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x5e73a034 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1610 = mem[_1604]
            require mem[_1604] == mem[_1604 + 12 len 20]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = 10^18
            mem[mem[64] + 68] = address(cd[68])
            require ext_code.size(address(_1610))
            staticcall address(_1610).0x4fcd54a4 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), 10^18, address(cd[68])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1648 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1660 = mem[_1648]
            _1661 = mem[_1648 + 32]
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).tokenMetadata(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1712 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1715 = mem[_1712 + 32]
            _1718 = mem[64]
            mem[64] = mem[64] + 384
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_1718] = address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_1718 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xa3017d9 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1728 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1718 + 64] = mem[_1728]
            mem[_1718 + 96] = _1715
            mem[_1718 + 128] = _1661
            mem[_1718 + 160] = _1660
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).strategyName() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1734 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1718 + 192] = mem[_1734]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xe2e730f6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1744 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1718 + 224] = mem[_1744]
            mem[_1718 + 256] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x9b0f09ae with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1750 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1750] < 3
            if mem[_1750] > 2:
                revert with 0, 33
            mem[_1718 + 288] = mem[_1750]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x26473a8f with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1718 + 320] = mem[_1760]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xf725ed10 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1768 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1768] == mem[_1768 + 12 len 20]
            mem[_1718 + 352] = mem[_1768 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1718
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1582 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1583 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _1583:
            _1777 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1777 + 44 len 20]
            mem[t + 64] = mem[_1777 + 64]
            mem[t + 96] = mem[_1777 + 96]
            mem[t + 128] = mem[_1777 + 128]
            mem[t + 160] = mem[_1777 + 160]
            mem[t + 192] = mem[_1777 + 192]
            mem[t + 224] = mem[_1777 + 224]
            mem[t + 256] = mem[_1777 + 256]
            if mem[_1777 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_1777 + 288]
            mem[t + 320] = mem[_1777 + 320]
            mem[t + 352] = mem[_1777 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1582 + (384 * _1583) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1782 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1792 = mem[_1782]
        require mem[_1782] <= test266151307()
        require _1782 + mem[_1782] + 31 < _1782 + return_data.size
        _1794 = mem[_1782 + mem[_1782]]
        if mem[_1782 + mem[_1782]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1782 + mem[_1782]]) + 1 < 0 or _1782 + ceil32(return_data.size) + ceil32(32 * mem[_1782 + mem[_1782]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1782 + ceil32(return_data.size) + ceil32(32 * mem[_1782 + mem[_1782]]) + 1
        mem[_1782 + ceil32(return_data.size)] = _1794
        require return_data.size >= _1792 + (480 * _1794) + 32
        s = _1782 + _1792 + 32
        t = _1782 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _1794:
            require _1782 + return_data.size - s >= 480
            _1930 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_1930] = mem[s]
            mem[_1930 + 32] = mem[s + 32]
            mem[_1930 + 64] = mem[s + 64]
            mem[_1930 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_1930 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_1930 + 160] = mem[s + 160]
            mem[_1930 + 192] = mem[s + 192]
            mem[_1930 + 224] = mem[s + 224]
            mem[_1930 + 256] = mem[s + 256]
            mem[_1930 + 288] = mem[s + 288]
            mem[_1930 + 320] = mem[s + 320]
            mem[_1930 + 352] = mem[s + 352]
            mem[_1930 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_1930 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_1930 + 448] = mem[s + 448]
            mem[t] = _1930
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _1929 = mem[64]
        mem[mem[64]] = 32
        _1931 = mem[_1782 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_1782 + ceil32(return_data.size)]
        idx = 0
        s = _1782 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _1931:
            _2061 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2061 + 32]
            mem[t + 64] = mem[_2061 + 64]
            mem[t + 96] = mem[_2061 + 96]
            mem[t + 128] = mem[_2061 + 140 len 20]
            mem[t + 160] = mem[_2061 + 172 len 20]
            mem[t + 192] = mem[_2061 + 192]
            mem[t + 224] = mem[_2061 + 224]
            mem[t + 256] = mem[_2061 + 256]
            mem[t + 288] = mem[_2061 + 288]
            mem[t + 320] = mem[_2061 + 320]
            mem[t + 352] = mem[_2061 + 352]
            mem[t + 384] = mem[_2061 + 384]
            if mem[_2061 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_2061 + 416]
            mem[t + 448] = mem[_2061 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _1929 + (480 * _1931) + -mem[64] + 64
    mem[64] = (32 * ('cd', 100).length) + 1280
    mem[(32 * ('cd', 100).length) + 896] = 0
    mem[(32 * ('cd', 100).length) + 928] = 0
    mem[(32 * ('cd', 100).length) + 960] = 0
    mem[(32 * ('cd', 100).length) + 992] = 0
    mem[(32 * ('cd', 100).length) + 1024] = 0
    mem[(32 * ('cd', 100).length) + 1056] = 0
    mem[(32 * ('cd', 100).length) + 1088] = 0
    mem[(32 * ('cd', 100).length) + 1120] = 0
    mem[(32 * ('cd', 100).length) + 1152] = 0
    mem[var53002] = 0
    mem[var53002 + 32] = 0
    mem[var53002 + 64] = 0
    mem[var55002] = var55001
    if not var55003 - 1:
        idx = 0
        while ('cd', 100).length > idx:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x5e73a034 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2302 = mem[_2296]
            require mem[_2296] == mem[_2296 + 12 len 20]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = 10^18
            mem[mem[64] + 68] = address(cd[68])
            require ext_code.size(address(_2302))
            staticcall address(_2302).0x4fcd54a4 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), 10^18, address(cd[68])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2352 = mem[_2340]
            _2353 = mem[_2340 + 32]
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).tokenMetadata(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2407 = mem[_2404 + 32]
            _2410 = mem[64]
            mem[64] = mem[64] + 384
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_2410] = address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_2410 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xa3017d9 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2410 + 64] = mem[_2420]
            mem[_2410 + 96] = _2407
            mem[_2410 + 128] = _2353
            mem[_2410 + 160] = _2352
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).strategyName() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2410 + 192] = mem[_2426]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xe2e730f6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2410 + 224] = mem[_2436]
            mem[_2410 + 256] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x9b0f09ae with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2442] < 3
            if mem[_2442] > 2:
                revert with 0, 33
            mem[_2410 + 288] = mem[_2442]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x26473a8f with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2452 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2410 + 320] = mem[_2452]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xf725ed10 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2460 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2460] == mem[_2460 + 12 len 20]
            mem[_2410 + 352] = mem[_2460 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2410
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2274 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2275 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _2275:
            _2469 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2469 + 44 len 20]
            mem[t + 64] = mem[_2469 + 64]
            mem[t + 96] = mem[_2469 + 96]
            mem[t + 128] = mem[_2469 + 128]
            mem[t + 160] = mem[_2469 + 160]
            mem[t + 192] = mem[_2469 + 192]
            mem[t + 224] = mem[_2469 + 224]
            mem[t + 256] = mem[_2469 + 256]
            if mem[_2469 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_2469 + 288]
            mem[t + 320] = mem[_2469 + 320]
            mem[t + 352] = mem[_2469 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2274 + (384 * _2275) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2474 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2484 = mem[_2474]
        require mem[_2474] <= test266151307()
        require _2474 + mem[_2474] + 31 < _2474 + return_data.size
        _2486 = mem[_2474 + mem[_2474]]
        if mem[_2474 + mem[_2474]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2474 + mem[_2474]]) + 1 < 0 or _2474 + ceil32(return_data.size) + ceil32(32 * mem[_2474 + mem[_2474]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2474 + ceil32(return_data.size) + ceil32(32 * mem[_2474 + mem[_2474]]) + 1
        mem[_2474 + ceil32(return_data.size)] = _2486
        require return_data.size >= _2484 + (480 * _2486) + 32
        s = _2474 + _2484 + 32
        t = _2474 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _2486:
            require _2474 + return_data.size - s >= 480
            _2622 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_2622] = mem[s]
            mem[_2622 + 32] = mem[s + 32]
            mem[_2622 + 64] = mem[s + 64]
            mem[_2622 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_2622 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_2622 + 160] = mem[s + 160]
            mem[_2622 + 192] = mem[s + 192]
            mem[_2622 + 224] = mem[s + 224]
            mem[_2622 + 256] = mem[s + 256]
            mem[_2622 + 288] = mem[s + 288]
            mem[_2622 + 320] = mem[s + 320]
            mem[_2622 + 352] = mem[s + 352]
            mem[_2622 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_2622 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_2622 + 448] = mem[s + 448]
            mem[t] = _2622
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        _2621 = mem[64]
        mem[mem[64]] = 32
        _2623 = mem[_2474 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_2474 + ceil32(return_data.size)]
        idx = 0
        s = _2474 + ceil32(return_data.size) + 32
        t = mem[64] + 64
        while idx < _2623:
            _2753 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2753 + 32]
            mem[t + 64] = mem[_2753 + 64]
            mem[t + 96] = mem[_2753 + 96]
            mem[t + 128] = mem[_2753 + 140 len 20]
            mem[t + 160] = mem[_2753 + 172 len 20]
            mem[t + 192] = mem[_2753 + 192]
            mem[t + 224] = mem[_2753 + 224]
            mem[t + 256] = mem[_2753 + 256]
            mem[t + 288] = mem[_2753 + 288]
            mem[t + 320] = mem[_2753 + 320]
            mem[t + 352] = mem[_2753 + 352]
            mem[t + 384] = mem[_2753 + 384]
            if mem[_2753 + 416] >= 3:
                revert with 0, 33
            mem[t + 416] = mem[_2753 + 416]
            mem[t + 448] = mem[_2753 + 460 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _2621 + (480 * _2623) + -mem[64] + 64
    mem[64] = (32 * ('cd', 100).length) + 1664
    mem[(32 * ('cd', 100).length) + 1280] = 0
    mem[(32 * ('cd', 100).length) + 1312] = 0
    mem[(32 * ('cd', 100).length) + 1344] = 0
    mem[(32 * ('cd', 100).length) + 1376] = 0
    mem[(32 * ('cd', 100).length) + 1408] = 0
    mem[(32 * ('cd', 100).length) + 1440] = 0
    mem[(32 * ('cd', 100).length) + 1472] = 0
    mem[(32 * ('cd', 100).length) + 1504] = 0
    mem[(32 * ('cd', 100).length) + 1536] = 0
    mem[var61002] = 0
    mem[var61002 + 32] = 0
    mem[var61002 + 64] = 0
    mem[var63002] = var63001
    if var63003 - 1:
        # nil
    else:
        idx = 0
        while ('cd', 100).length > idx:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x5e73a034 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2988 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2994 = mem[_2988]
            require mem[_2988] == mem[_2988 + 12 len 20]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = 10^18
            mem[mem[64] + 68] = address(cd[68])
            require ext_code.size(address(_2994))
            staticcall address(_2994).0x4fcd54a4 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), 10^18, address(cd[68])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _3044 = mem[_3032]
            _3045 = mem[_3032 + 32]
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).tokenMetadata(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3099 = mem[_3096 + 32]
            _3102 = mem[64]
            mem[64] = mem[64] + 384
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_3102] = address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_3102 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xa3017d9 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3102 + 64] = mem[_3112]
            mem[_3102 + 96] = _3099
            mem[_3102 + 128] = _3045
            mem[_3102 + 160] = _3044
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).strategyName() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3102 + 192] = mem[_3118]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xe2e730f6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3102 + 224] = mem[_3128]
            mem[_3102 + 256] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x9b0f09ae with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3134] < 3
            if mem[_3134] > 2:
                revert with 0, 33
            mem[_3102 + 288] = mem[_3134]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0x26473a8f with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3102 + 320] = mem[_3144]
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            staticcall address(cd[((32 * idx) + cd[132] + 36)]).0xf725ed10 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3152] == mem[_3152 + 12 len 20]
            mem[_3102 + 352] = mem[_3152 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _3102
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2966 = mem[64]
        mem[mem[64]] = 0xa0a53c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2967 = mem[96]
        mem[mem[64] + 36] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 68
        while idx < _2967:
            _3161 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3161 + 44 len 20]
            mem[t + 64] = mem[_3161 + 64]
            mem[t + 96] = mem[_3161 + 96]
            mem[t + 128] = mem[_3161 + 128]
            mem[t + 160] = mem[_3161 + 160]
            mem[t + 192] = mem[_3161 + 192]
            mem[t + 224] = mem[_3161 + 224]
            mem[t + 256] = mem[_3161 + 256]
            if mem[_3161 + 288] >= 3:
                revert with 0, 33
            mem[t + 288] = mem[_3161 + 288]
            mem[t + 320] = mem[_3161 + 320]
            mem[t + 352] = mem[_3161 + 364 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2966 + (384 * _2967) + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3166 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3176 = mem[_3166]
        require mem[_3166] <= test266151307()
        require _3166 + mem[_3166] + 31 < _3166 + return_data.size
        _3178 = mem[_3166 + mem[_3166]]
        if mem[_3166 + mem[_3166]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_3166 + mem[_3166]]) + 1 < 0 or _3166 + ceil32(return_data.size) + ceil32(32 * mem[_3166 + mem[_3166]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _3166 + ceil32(return_data.size) + ceil32(32 * mem[_3166 + mem[_3166]]) + 1
        mem[_3166 + ceil32(return_data.size)] = _3178
        require return_data.size >= _3176 + (480 * _3178) + 32
        s = _3166 + _3176 + 32
        t = _3166 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _3178:
            require _3166 + return_data.size - s >= 480
            _3314 = mem[64]
            if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 480
            mem[_3314] = mem[s]
            mem[_3314 + 32] = mem[s + 32]
            mem[_3314 + 64] = mem[s + 64]
            mem[_3314 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 140 len 20]
            mem[_3314 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_3314 + 160] = mem[s + 160]
            mem[_3314 + 192] = mem[s + 192]
            mem[_3314 + 224] = mem[s + 224]
            mem[_3314 + 256] = mem[s + 256]
            mem[_3314 + 288] = mem[s + 288]
            mem[_3314 + 320] = mem[s + 320]
            mem[_3314 + 352] = mem[s + 352]
            mem[_3314 + 384] = mem[s + 384]
            require mem[s + 416] < 3
            mem[_3314 + 416] = mem[s + 416]
            require mem[s + 448] == mem[s + 460 len 20]
            mem[_3314 + 448] = mem[s + 448]
            mem[t] = _3314
            s = s + 480
            t = t + 32
            idx = idx + 1
            continue 
        # nil
}



}
