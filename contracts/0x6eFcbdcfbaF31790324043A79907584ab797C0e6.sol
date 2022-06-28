contract main {




// =====================  Runtime code  =====================


array of uint256 sub_cedb8a81;
address stor2;
address stor3;

function sub_cedb8a81(?) {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(stor2)
            staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _712 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _784 = mem[_712 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_712 + 192])] = mem[_712 + 224 len floor32(mem[_712 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _1120 = mem[ceil32(return_data.size) + 224]
                    if not mem[ceil32(return_data.size) + 224]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(return_data.size) + 224]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    require s <= test266151307()
                    mem[(32 * _784) + ceil32(return_data.size) + 224] = s
                    if s:
                        mem[(32 * _784) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                    t = s
                    idx = _1120
                    while idx:
                        require t - 1 < mem[(32 * _784) + ceil32(return_data.size) + 224]
                        mem[t + (32 * _784) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                    mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _784) + ceil32(return_data.size) + 224]
                    mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _784) + ceil32(return_data.size) + 224])] = mem[(32 * _784) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _784) + ceil32(return_data.size) + 224])]
                    if not mem[(32 * _784) + ceil32(return_data.size) + 224] % 32:
                        revert with 0, 
                                    32,
                                    mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _784) + ceil32(return_data.size) + 224] + 32]
                    mem[floor32(mem[(32 * _784) + ceil32(return_data.size) + 224]) + (32 * _784) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _784) + ceil32(return_data.size) + 224]) + (32 * _784) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _784) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _784) + ceil32(return_data.size) + 224] % 32]
                    revert with 0, 
                                32,
                                mem[(32 * _784) + ceil32(return_data.size) + 224],
                                mem[(32 * _784) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _784) + ceil32(return_data.size) + 224]) + 32]
                _714 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _785 = mem[_714 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_714 + 192])] = mem[_714 + 224 len floor32(mem[_714 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1121 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _785) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _785) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1121
                while idx:
                    require t - 1 < mem[(32 * _785) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _785) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _785) + ceil32(return_data.size) + 224]
                mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _785) + ceil32(return_data.size) + 224])] = mem[(32 * _785) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _785) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _785) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _785) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _785) + ceil32(return_data.size) + 224]) + (32 * _785) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _785) + ceil32(return_data.size) + 224]) + (32 * _785) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _785) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _785) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _785) + ceil32(return_data.size) + 224],
                            mem[(32 * _785) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _785) + ceil32(return_data.size) + 224]) + 32]
            if arg2:
                _718 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _787 = mem[_718 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_718 + 192])] = mem[_718 + 224 len floor32(mem[_718 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1123 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _787) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _787) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1123
                while idx:
                    require t - 1 < mem[(32 * _787) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _787) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _787) + ceil32(return_data.size) + 224]
                mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _787) + ceil32(return_data.size) + 224])] = mem[(32 * _787) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _787) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _787) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _787) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _787) + ceil32(return_data.size) + 224]) + (32 * _787) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _787) + ceil32(return_data.size) + 224]) + (32 * _787) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _787) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _787) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _787) + ceil32(return_data.size) + 224],
                            mem[(32 * _787) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _787) + ceil32(return_data.size) + 224]) + 32]
            _716 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _786 = mem[_716 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_716 + 192])] = mem[_716 + 224 len floor32(mem[_716 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1122 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _786) + ceil32(return_data.size) + 224] = s
            mem[64] = (32 * _786) + ceil32(return_data.size) + ceil32(s) + 256
            if s:
                mem[(32 * _786) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1122
            while idx:
                require t - 1 < mem[(32 * _786) + ceil32(return_data.size) + 224]
                mem[t + (32 * _786) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _786) + ceil32(return_data.size) + 224]
            mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _786) + ceil32(return_data.size) + 224])] = mem[(32 * _786) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _786) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _786) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _786) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _786) + ceil32(return_data.size) + 224]) + (32 * _786) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _786) + ceil32(return_data.size) + 224]) + (32 * _786) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _786) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _786) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _786) + ceil32(return_data.size) + 224],
                        mem[(32 * _786) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _786) + ceil32(return_data.size) + 224]) + 32]
        if arg3:
            revert with 0, 'One amount need to be 0!'
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(stor2)
            staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _720 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _788 = mem[_720 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_720 + 192])] = mem[_720 + 224 len floor32(mem[_720 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _1124 = mem[ceil32(return_data.size) + 224]
                    if not mem[ceil32(return_data.size) + 224]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(return_data.size) + 224]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    require s <= test266151307()
                    mem[(32 * _788) + ceil32(return_data.size) + 224] = s
                    mem[64] = (32 * _788) + ceil32(return_data.size) + ceil32(s) + 256
                    if s:
                        mem[(32 * _788) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                    t = s
                    idx = _1124
                    while idx:
                        require t - 1 < mem[(32 * _788) + ceil32(return_data.size) + 224]
                        mem[t + (32 * _788) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                    mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _788) + ceil32(return_data.size) + 224]
                    mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _788) + ceil32(return_data.size) + 224])] = mem[(32 * _788) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _788) + ceil32(return_data.size) + 224])]
                    if not mem[(32 * _788) + ceil32(return_data.size) + 224] % 32:
                        revert with 0, 
                                    32,
                                    mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _788) + ceil32(return_data.size) + 224] + 32]
                    mem[floor32(mem[(32 * _788) + ceil32(return_data.size) + 224]) + (32 * _788) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _788) + ceil32(return_data.size) + 224]) + (32 * _788) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _788) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _788) + ceil32(return_data.size) + 224] % 32]
                    revert with 0, 
                                32,
                                mem[(32 * _788) + ceil32(return_data.size) + 224],
                                mem[(32 * _788) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _788) + ceil32(return_data.size) + 224]) + 32]
                _722 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _789 = mem[_722 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_722 + 192])] = mem[_722 + 224 len floor32(mem[_722 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1125 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _789) + ceil32(return_data.size) + 224] = s
                mem[64] = (32 * _789) + ceil32(return_data.size) + ceil32(s) + 256
                if s:
                    mem[(32 * _789) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1125
                while idx:
                    require t - 1 < mem[(32 * _789) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _789) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _789) + ceil32(return_data.size) + 224]
                mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _789) + ceil32(return_data.size) + 224])] = mem[(32 * _789) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _789) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _789) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _789) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _789) + ceil32(return_data.size) + 224]) + (32 * _789) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _789) + ceil32(return_data.size) + 224]) + (32 * _789) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _789) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _789) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _789) + ceil32(return_data.size) + 224],
                            mem[(32 * _789) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _789) + ceil32(return_data.size) + 224]) + 32]
            if arg2:
                _726 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _791 = mem[_726 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_726 + 192])] = mem[_726 + 224 len floor32(mem[_726 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1127 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _791) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _791) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1127
                while idx:
                    require t - 1 < mem[(32 * _791) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _791) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _791) + ceil32(return_data.size) + 224]
                mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _791) + ceil32(return_data.size) + 224])] = mem[(32 * _791) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _791) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _791) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _791) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _791) + ceil32(return_data.size) + 224]) + (32 * _791) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _791) + ceil32(return_data.size) + 224]) + (32 * _791) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _791) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _791) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _791) + ceil32(return_data.size) + 224],
                            mem[(32 * _791) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _791) + ceil32(return_data.size) + 224]) + 32]
            _724 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _790 = mem[_724 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_724 + 192])] = mem[_724 + 224 len floor32(mem[_724 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1126 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _790) + ceil32(return_data.size) + 224] = s
            mem[64] = (32 * _790) + ceil32(return_data.size) + ceil32(s) + 256
            if s:
                mem[(32 * _790) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1126
            while idx:
                require t - 1 < mem[(32 * _790) + ceil32(return_data.size) + 224]
                mem[t + (32 * _790) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _790) + ceil32(return_data.size) + 224]
            mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _790) + ceil32(return_data.size) + 224])] = mem[(32 * _790) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _790) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _790) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _790) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _790) + ceil32(return_data.size) + 224]) + (32 * _790) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _790) + ceil32(return_data.size) + 224]) + (32 * _790) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _790) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _790) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _790) + ceil32(return_data.size) + 224],
                        mem[(32 * _790) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _790) + ceil32(return_data.size) + 224]) + 32]
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor2)
        staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        if arg2:
            if not arg2:
                _732 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _794 = mem[_732 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_732 + 192])] = mem[_732 + 224 len floor32(mem[_732 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1130 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _794) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _794) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1130
                while idx:
                    require t - 1 < mem[(32 * _794) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _794) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _794) + ceil32(return_data.size) + 224]
                mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _794) + ceil32(return_data.size) + 224])] = mem[(32 * _794) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _794) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _794) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _794) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _794) + ceil32(return_data.size) + 224]) + (32 * _794) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _794) + ceil32(return_data.size) + 224]) + (32 * _794) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _794) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _794) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _794) + ceil32(return_data.size) + 224],
                            mem[(32 * _794) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _794) + ceil32(return_data.size) + 224]) + 32]
            _734 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _795 = mem[_734 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_734 + 192])] = mem[_734 + 224 len floor32(mem[_734 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1131 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _795) + ceil32(return_data.size) + 224] = s
            if s:
                mem[(32 * _795) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1131
            while idx:
                require t - 1 < mem[(32 * _795) + ceil32(return_data.size) + 224]
                mem[t + (32 * _795) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _795) + ceil32(return_data.size) + 224]
            mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _795) + ceil32(return_data.size) + 224])] = mem[(32 * _795) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _795) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _795) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _795) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _795) + ceil32(return_data.size) + 224]) + (32 * _795) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _795) + ceil32(return_data.size) + 224]) + (32 * _795) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _795) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _795) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _795) + ceil32(return_data.size) + 224],
                        mem[(32 * _795) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _795) + ceil32(return_data.size) + 224]) + 32]
        if arg2:
            _730 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _793 = mem[_730 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_730 + 192])] = mem[_730 + 224 len floor32(mem[_730 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1129 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _793) + ceil32(return_data.size) + 224] = s
            if s:
                mem[(32 * _793) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1129
            while idx:
                require t - 1 < mem[(32 * _793) + ceil32(return_data.size) + 224]
                mem[t + (32 * _793) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _793) + ceil32(return_data.size) + 224]
            mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _793) + ceil32(return_data.size) + 224])] = mem[(32 * _793) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _793) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _793) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _793) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _793) + ceil32(return_data.size) + 224]) + (32 * _793) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _793) + ceil32(return_data.size) + 224]) + (32 * _793) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _793) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _793) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _793) + ceil32(return_data.size) + 224],
                        mem[(32 * _793) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _793) + ceil32(return_data.size) + 224]) + 32]
        _728 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _792 = mem[_728 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_728 + 192])] = mem[_728 + 224 len floor32(mem[_728 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _1128 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            revert with 0, '0'
        s = 0
        idx = mem[ceil32(return_data.size) + 224]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[(32 * _792) + ceil32(return_data.size) + 224] = s
        mem[64] = (32 * _792) + ceil32(return_data.size) + ceil32(s) + 256
        if s:
            mem[(32 * _792) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = _1128
        while idx:
            require t - 1 < mem[(32 * _792) + ceil32(return_data.size) + 224]
            mem[t + (32 * _792) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 260] = 32
        mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _792) + ceil32(return_data.size) + 224]
        mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _792) + ceil32(return_data.size) + 224])] = mem[(32 * _792) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _792) + ceil32(return_data.size) + 224])]
        if not mem[(32 * _792) + ceil32(return_data.size) + 224] % 32:
            revert with 0, 
                        32,
                        mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _792) + ceil32(return_data.size) + 224] + 32]
        mem[floor32(mem[(32 * _792) + ceil32(return_data.size) + 224]) + (32 * _792) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _792) + ceil32(return_data.size) + 224]) + (32 * _792) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _792) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _792) + ceil32(return_data.size) + 224] % 32]
        revert with 0, 
                    32,
                    mem[(32 * _792) + ceil32(return_data.size) + 224],
                    mem[(32 * _792) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _792) + ceil32(return_data.size) + 224]) + 32]
    if not arg2:
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor2)
        staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        if arg2:
            if not arg2:
                _740 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                _798 = mem[_740 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_740 + 192])] = mem[_740 + 224 len floor32(mem[_740 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1134 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _798) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _798) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1134
                while idx:
                    require t - 1 < mem[(32 * _798) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _798) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _798) + ceil32(return_data.size) + 224]
                mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _798) + ceil32(return_data.size) + 224])] = mem[(32 * _798) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _798) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _798) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _798) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _798) + ceil32(return_data.size) + 224]) + (32 * _798) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _798) + ceil32(return_data.size) + 224]) + (32 * _798) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _798) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _798) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _798) + ceil32(return_data.size) + 224],
                            mem[(32 * _798) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _798) + ceil32(return_data.size) + 224]) + 32]
            _742 = mem[192 len 4], Mask(224, 32, arg2) >> 32
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            _799 = mem[_742 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_742 + 192])] = mem[_742 + 224 len floor32(mem[_742 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1135 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _799) + ceil32(return_data.size) + 224] = s
            if s:
                mem[(32 * _799) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1135
            while idx:
                require t - 1 < mem[(32 * _799) + ceil32(return_data.size) + 224]
                mem[t + (32 * _799) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _799) + ceil32(return_data.size) + 224]
            mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _799) + ceil32(return_data.size) + 224])] = mem[(32 * _799) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _799) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _799) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _799) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _799) + ceil32(return_data.size) + 224]) + (32 * _799) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _799) + ceil32(return_data.size) + 224]) + (32 * _799) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _799) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _799) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _799) + ceil32(return_data.size) + 224],
                        mem[(32 * _799) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _799) + ceil32(return_data.size) + 224]) + 32]
        if arg2:
            _738 = mem[192 len 4], Mask(224, 32, arg2) >> 32
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            _797 = mem[_738 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_738 + 192])] = mem[_738 + 224 len floor32(mem[_738 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1133 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _797) + ceil32(return_data.size) + 224] = s
            if s:
                mem[(32 * _797) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1133
            while idx:
                require t - 1 < mem[(32 * _797) + ceil32(return_data.size) + 224]
                mem[t + (32 * _797) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _797) + ceil32(return_data.size) + 224]
            mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _797) + ceil32(return_data.size) + 224])] = mem[(32 * _797) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _797) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _797) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _797) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _797) + ceil32(return_data.size) + 224]) + (32 * _797) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _797) + ceil32(return_data.size) + 224]) + (32 * _797) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _797) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _797) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _797) + ceil32(return_data.size) + 224],
                        mem[(32 * _797) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _797) + ceil32(return_data.size) + 224]) + 32]
        _736 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _796 = mem[_736 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_736 + 192])] = mem[_736 + 224 len floor32(mem[_736 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _1132 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            revert with 0, '0'
        s = 0
        idx = mem[ceil32(return_data.size) + 224]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[(32 * _796) + ceil32(return_data.size) + 224] = s
        mem[64] = (32 * _796) + ceil32(return_data.size) + ceil32(s) + 256
        if s:
            mem[(32 * _796) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = _1132
        while idx:
            require t - 1 < mem[(32 * _796) + ceil32(return_data.size) + 224]
            mem[t + (32 * _796) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 260] = 32
        mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _796) + ceil32(return_data.size) + 224]
        mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _796) + ceil32(return_data.size) + 224])] = mem[(32 * _796) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _796) + ceil32(return_data.size) + 224])]
        if not mem[(32 * _796) + ceil32(return_data.size) + 224] % 32:
            revert with 0, 
                        32,
                        mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _796) + ceil32(return_data.size) + 224] + 32]
        mem[floor32(mem[(32 * _796) + ceil32(return_data.size) + 224]) + (32 * _796) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _796) + ceil32(return_data.size) + 224]) + (32 * _796) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _796) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _796) + ceil32(return_data.size) + 224] % 32]
        revert with 0, 
                    32,
                    mem[(32 * _796) + ceil32(return_data.size) + 224],
                    mem[(32 * _796) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _796) + ceil32(return_data.size) + 224]) + 32]
    if arg3:
        revert with 0, 'One amount need to be 0!'
    if not arg2:
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor2)
        staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        if not arg2:
            if arg2:
                _746 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                _801 = mem[_746 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_746 + 192])] = mem[_746 + 224 len floor32(mem[_746 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _1137 = mem[ceil32(return_data.size) + 224]
                if not mem[ceil32(return_data.size) + 224]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(return_data.size) + 224]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[(32 * _801) + ceil32(return_data.size) + 224] = s
                if s:
                    mem[(32 * _801) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
                t = s
                idx = _1137
                while idx:
                    require t - 1 < mem[(32 * _801) + ceil32(return_data.size) + 224]
                    mem[t + (32 * _801) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 260] = 32
                mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _801) + ceil32(return_data.size) + 224]
                mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _801) + ceil32(return_data.size) + 224])] = mem[(32 * _801) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _801) + ceil32(return_data.size) + 224])]
                if not mem[(32 * _801) + ceil32(return_data.size) + 224] % 32:
                    revert with 0, 
                                32,
                                mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _801) + ceil32(return_data.size) + 224] + 32]
                mem[floor32(mem[(32 * _801) + ceil32(return_data.size) + 224]) + (32 * _801) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _801) + ceil32(return_data.size) + 224]) + (32 * _801) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _801) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _801) + ceil32(return_data.size) + 224] % 32]
                revert with 0, 
                            32,
                            mem[(32 * _801) + ceil32(return_data.size) + 224],
                            mem[(32 * _801) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _801) + ceil32(return_data.size) + 224]) + 32]
            _744 = mem[192 len 4], Mask(224, 32, arg2) >> 32
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            _800 = mem[_744 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_744 + 192])] = mem[_744 + 224 len floor32(mem[_744 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1136 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _800) + ceil32(return_data.size) + 224] = s
            mem[64] = (32 * _800) + ceil32(return_data.size) + ceil32(s) + 256
            if s:
                mem[(32 * _800) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1136
            while idx:
                require t - 1 < mem[(32 * _800) + ceil32(return_data.size) + 224]
                mem[t + (32 * _800) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _800) + ceil32(return_data.size) + 224]
            mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _800) + ceil32(return_data.size) + 224])] = mem[(32 * _800) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _800) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _800) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _800) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _800) + ceil32(return_data.size) + 224]) + (32 * _800) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _800) + ceil32(return_data.size) + 224]) + (32 * _800) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _800) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _800) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _800) + ceil32(return_data.size) + 224],
                        mem[(32 * _800) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _800) + ceil32(return_data.size) + 224]) + 32]
        if not arg2:
            _748 = mem[192 len 4], Mask(224, 32, arg2) >> 32
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            _802 = mem[_748 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_748 + 192])] = mem[_748 + 224 len floor32(mem[_748 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1138 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _802) + ceil32(return_data.size) + 224] = s
            mem[64] = (32 * _802) + ceil32(return_data.size) + ceil32(s) + 256
            if s:
                mem[(32 * _802) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1138
            while idx:
                require t - 1 < mem[(32 * _802) + ceil32(return_data.size) + 224]
                mem[t + (32 * _802) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _802) + ceil32(return_data.size) + 224]
            mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _802) + ceil32(return_data.size) + 224])] = mem[(32 * _802) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _802) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _802) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _802) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _802) + ceil32(return_data.size) + 224]) + (32 * _802) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _802) + ceil32(return_data.size) + 224]) + (32 * _802) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _802) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _802) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _802) + ceil32(return_data.size) + 224],
                        mem[(32 * _802) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _802) + ceil32(return_data.size) + 224]) + 32]
        _750 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _803 = mem[_750 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_750 + 192])] = mem[_750 + 224 len floor32(mem[_750 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _1139 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            revert with 0, '0'
        s = 0
        idx = mem[ceil32(return_data.size) + 224]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[(32 * _803) + ceil32(return_data.size) + 224] = s
        mem[64] = (32 * _803) + ceil32(return_data.size) + ceil32(s) + 256
        if s:
            mem[(32 * _803) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = _1139
        while idx:
            require t - 1 < mem[(32 * _803) + ceil32(return_data.size) + 224]
            mem[t + (32 * _803) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 260] = 32
        mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _803) + ceil32(return_data.size) + 224]
        mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _803) + ceil32(return_data.size) + 224])] = mem[(32 * _803) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _803) + ceil32(return_data.size) + 224])]
        if not mem[(32 * _803) + ceil32(return_data.size) + 224] % 32:
            revert with 0, 
                        32,
                        mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _803) + ceil32(return_data.size) + 224] + 32]
        mem[floor32(mem[(32 * _803) + ceil32(return_data.size) + 224]) + (32 * _803) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _803) + ceil32(return_data.size) + 224]) + (32 * _803) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _803) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _803) + ceil32(return_data.size) + 224] % 32]
        revert with 0, 
                    32,
                    mem[(32 * _803) + ceil32(return_data.size) + 224],
                    mem[(32 * _803) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _803) + ceil32(return_data.size) + 224]) + 32]
    mem[128] = address(ext_call.return_data[0])
    mem[160] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor2)
    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            _752 = mem[192 len 4], Mask(224, 32, arg2) >> 32
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            _804 = mem[_752 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_752 + 192])] = mem[_752 + 224 len floor32(mem[_752 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _1140 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                revert with 0, '0'
            s = 0
            idx = mem[ceil32(return_data.size) + 224]
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[(32 * _804) + ceil32(return_data.size) + 224] = s
            if s:
                mem[(32 * _804) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
            t = s
            idx = _1140
            while idx:
                require t - 1 < mem[(32 * _804) + ceil32(return_data.size) + 224]
                mem[t + (32 * _804) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 260] = 32
            mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _804) + ceil32(return_data.size) + 224]
            mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _804) + ceil32(return_data.size) + 224])] = mem[(32 * _804) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _804) + ceil32(return_data.size) + 224])]
            if not mem[(32 * _804) + ceil32(return_data.size) + 224] % 32:
                revert with 0, 
                            32,
                            mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _804) + ceil32(return_data.size) + 224] + 32]
            mem[floor32(mem[(32 * _804) + ceil32(return_data.size) + 224]) + (32 * _804) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _804) + ceil32(return_data.size) + 224]) + (32 * _804) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _804) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _804) + ceil32(return_data.size) + 224] % 32]
            revert with 0, 
                        32,
                        mem[(32 * _804) + ceil32(return_data.size) + 224],
                        mem[(32 * _804) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _804) + ceil32(return_data.size) + 224]) + 32]
        _754 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _805 = mem[_754 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_754 + 192])] = mem[_754 + 224 len floor32(mem[_754 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _1141 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            revert with 0, '0'
        s = 0
        idx = mem[ceil32(return_data.size) + 224]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[(32 * _805) + ceil32(return_data.size) + 224] = s
        if s:
            mem[(32 * _805) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = _1141
        while idx:
            require t - 1 < mem[(32 * _805) + ceil32(return_data.size) + 224]
            mem[t + (32 * _805) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 260] = 32
        mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _805) + ceil32(return_data.size) + 224]
        mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _805) + ceil32(return_data.size) + 224])] = mem[(32 * _805) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _805) + ceil32(return_data.size) + 224])]
        if not mem[(32 * _805) + ceil32(return_data.size) + 224] % 32:
            revert with 0, 
                        32,
                        mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _805) + ceil32(return_data.size) + 224] + 32]
        mem[floor32(mem[(32 * _805) + ceil32(return_data.size) + 224]) + (32 * _805) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _805) + ceil32(return_data.size) + 224]) + (32 * _805) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _805) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _805) + ceil32(return_data.size) + 224] % 32]
        revert with 0, 
                    32,
                    mem[(32 * _805) + ceil32(return_data.size) + 224],
                    mem[(32 * _805) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _805) + ceil32(return_data.size) + 224]) + 32]
    if arg2:
        _758 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _807 = mem[_758 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_758 + 192])] = mem[_758 + 224 len floor32(mem[_758 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _1143 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            revert with 0, '0'
        s = 0
        idx = mem[ceil32(return_data.size) + 224]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[(32 * _807) + ceil32(return_data.size) + 224] = s
        if s:
            mem[(32 * _807) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = _1143
        while idx:
            require t - 1 < mem[(32 * _807) + ceil32(return_data.size) + 224]
            mem[t + (32 * _807) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 260] = 32
        mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _807) + ceil32(return_data.size) + 224]
        mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _807) + ceil32(return_data.size) + 224])] = mem[(32 * _807) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _807) + ceil32(return_data.size) + 224])]
        if not mem[(32 * _807) + ceil32(return_data.size) + 224] % 32:
            revert with 0, 
                        32,
                        mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _807) + ceil32(return_data.size) + 224] + 32]
        mem[floor32(mem[(32 * _807) + ceil32(return_data.size) + 224]) + (32 * _807) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _807) + ceil32(return_data.size) + 224]) + (32 * _807) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _807) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _807) + ceil32(return_data.size) + 224] % 32]
        revert with 0, 
                    32,
                    mem[(32 * _807) + ceil32(return_data.size) + 224],
                    mem[(32 * _807) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _807) + ceil32(return_data.size) + 224]) + 32]
    _756 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _806 = mem[_756 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_756 + 192])] = mem[_756 + 224 len floor32(mem[_756 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _1142 = mem[ceil32(return_data.size) + 224]
    if not mem[ceil32(return_data.size) + 224]:
        revert with 0, '0'
    s = 0
    idx = mem[ceil32(return_data.size) + 224]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[(32 * _806) + ceil32(return_data.size) + 224] = s
    mem[64] = (32 * _806) + ceil32(return_data.size) + ceil32(s) + 256
    if s:
        mem[(32 * _806) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
    t = s
    idx = _1142
    while idx:
        require t - 1 < mem[(32 * _806) + ceil32(return_data.size) + 224]
        mem[t + (32 * _806) + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 260] = 32
    mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 292] = mem[(32 * _806) + ceil32(return_data.size) + 224]
    mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(mem[(32 * _806) + ceil32(return_data.size) + 224])] = mem[(32 * _806) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * _806) + ceil32(return_data.size) + 224])]
    if not mem[(32 * _806) + ceil32(return_data.size) + 224] % 32:
        revert with 0, 
                    32,
                    mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 292 len mem[(32 * _806) + ceil32(return_data.size) + 224] + 32]
    mem[floor32(mem[(32 * _806) + ceil32(return_data.size) + 224]) + (32 * _806) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(mem[(32 * _806) + ceil32(return_data.size) + 224]) + (32 * _806) + ceil32(return_data.size) + ceil32(s) + -(mem[(32 * _806) + ceil32(return_data.size) + 224] % 32) + 356 len mem[(32 * _806) + ceil32(return_data.size) + 224] % 32]
    revert with 0, 
                32,
                mem[(32 * _806) + ceil32(return_data.size) + 224],
                mem[(32 * _806) + ceil32(return_data.size) + ceil32(s) + 324 len floor32(mem[(32 * _806) + ceil32(return_data.size) + 224]) + 32]
}



}
