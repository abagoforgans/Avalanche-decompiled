contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function tras_er5as_3434(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    mem[64] = 96
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    mem[3 len 8] = 33
    delegate this.address.0x0 with:
         gas gas_remaining wei
        args mem[4 len calldata.size - 4]
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_711e5fc6(?) {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        s = 15
        while uint8(idx) < ('cd', 100).length:
            require uint8(idx) < ('cd', 68).length
            require uint8(idx + 1) < ('cd', 68).length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * uint8(idx)) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < ('cd', 132).length
            if address(cd[((32 * uint8(idx)) + cd[68] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[68] + 36)]):
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            else:
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            idx = idx + 1
            s = idx
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        require uint8(s + 1) < ('cd', 68).length
        require uint8(s) < ('cd', 68).length
        require uint8(s + 1) < ('cd', 68).length
        if address(cd[((32 * uint8(s)) + cd[68] + 36)]) < address(cd[((32 * uint8(s + 1)) + cd[68] + 36)]):
            _212 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = 0
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = _212
        else:
            _213 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = _213
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = 0
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        s = 15
        while uint8(idx) < ('cd', 100).length:
            require uint8(idx) < ('cd', 68).length
            require uint8(idx + 1) < ('cd', 68).length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * uint8(idx)) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < ('cd', 132).length
            if address(cd[((32 * uint8(idx)) + cd[68] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[68] + 36)]):
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            else:
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            idx = idx + 1
            s = idx
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        require uint8(s + 1) < ('cd', 68).length
        require uint8(s) < ('cd', 68).length
        require uint8(s + 1) < ('cd', 68).length
        if address(cd[((32 * uint8(s)) + cd[68] + 36)]) < address(cd[((32 * uint8(s + 1)) + cd[68] + 36)]):
            _214 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = 0
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = _214
        else:
            _215 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = _215
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = 0
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 516] = this.address
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 548] = 128
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 580] = mem[(32 * ('cd', 68).length) + 128]
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 612 len ceil32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len ceil32(mem[(32 * ('cd', 68).length) + 128])]
    if not mem[(32 * ('cd', 68).length) + 128] % 32:
        require ext_code.size(address(cd[((32 * uint8(s)) + cd[100] + 36)]))
        call address(cd[((32 * uint8(s)) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452 len mem[(32 * ('cd', 68).length) + 128] + (127 * ('cd', 68).length) + 160]
    else:
        mem[floor32(mem[(32 * ('cd', 68).length) + 128]) + (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 612] = mem[floor32(mem[(32 * ('cd', 68).length) + 128]) + (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + -(mem[(32 * ('cd', 68).length) + 128] % 32) + 644 len mem[(32 * ('cd', 68).length) + 128] % 32]
        require ext_code.size(address(cd[((32 * uint8(s)) + cd[100] + 36)]))
        call address(cd[((32 * uint8(s)) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452 len floor32(mem[(32 * ('cd', 68).length) + 128]) + (127 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 68).length - 1 < ('cd', 68).length
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = mem[(32 * ('cd', 68).length - 1) + 128]
    return memory
      from (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448
       len 32
}

function swapTokens(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, uint8[] arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg3.length <= test266151307()
    mem[96] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg5.length
            require idx < arg4.length
            require idx < arg3.length
            require idx + 1 < arg3.length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require idx < arg3.length
            require idx + 1 < arg3.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            else:
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224
        mem[(64 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(64 * arg3.length) + (32 * arg4.length) + 192]
            _406 = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[96]
            _414 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _458 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _414
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_458))
                        call address(_458).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _414, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _446 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _461 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_461 + 36] = 0
                        mem[_461 + 68] = _414
                        mem[_461 + 100] = this.address
                        mem[_461 + 132] = 128
                        mem[_461 + 164] = mem[_461]
                        s = 0
                        while s < mem[_461]:
                            mem[_461 + s + 196] = mem[_461 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_461] % 32:
                            require ext_code.size(address(_446))
                            call address(_446).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(this.address), 128, mem[_461 + 164 len mem[_461] + 32]
                        else:
                            mem[floor32(mem[_461]) + _461 + 196] = mem[floor32(mem[_461]) + _461 + -(mem[_461] % 32) + 228 len mem[_461] % 32]
                            require ext_code.size(address(_446))
                            call address(_446).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(this.address), 128, mem[_461], mem[_461 + 196 len floor32(mem[_461]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _436 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _480 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _414
                        mem[mem[64] + 68] = address(_436)
                        require ext_code.size(address(_480))
                        call address(_480).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _414, address(_436)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _457 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _483 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_483 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_483 + 36] = 0
                        mem[_483 + 68] = _414
                        mem[_483 + 100] = address(_436)
                        mem[_483 + 132] = 128
                        mem[_483 + 164] = mem[_483]
                        s = 0
                        while s < mem[_483]:
                            mem[_483 + s + 196] = mem[_483 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_483] % 32:
                            require ext_code.size(address(_457))
                            call address(_457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(_436), 128, mem[_483 + 164 len mem[_483] + 32]
                        else:
                            mem[floor32(mem[_483]) + _483 + 196] = mem[floor32(mem[_483]) + _483 + -(mem[_483] % 32) + 228 len mem[_483] % 32]
                            require ext_code.size(address(_457))
                            call address(_457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(_436), 128, mem[_483], mem[_483 + 196 len floor32(mem[_483]) + 32]
            else:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _464 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _414
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_464))
                        call address(_464).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _414, 0, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _449 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _467 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_467 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_467 + 36] = _414
                        mem[_467 + 68] = 0
                        mem[_467 + 100] = this.address
                        mem[_467 + 132] = 128
                        mem[_467 + 164] = mem[_467]
                        s = 0
                        while s < mem[_467]:
                            mem[_467 + s + 196] = mem[_467 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_467] % 32:
                            require ext_code.size(address(_449))
                            call address(_449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(this.address), 128, mem[_467 + 164 len mem[_467] + 32]
                        else:
                            mem[floor32(mem[_467]) + _467 + 196] = mem[floor32(mem[_467]) + _467 + -(mem[_467] % 32) + 228 len mem[_467] % 32]
                            require ext_code.size(address(_449))
                            call address(_449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(this.address), 128, mem[_467], mem[_467 + 196 len floor32(mem[_467]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _437 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _487 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _414
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_437)
                        require ext_code.size(address(_487))
                        call address(_487).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _414, 0, address(_437)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _463 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _490 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_490 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_490 + 36] = _414
                        mem[_490 + 68] = 0
                        mem[_490 + 100] = address(_437)
                        mem[_490 + 132] = 128
                        mem[_490 + 164] = mem[_490]
                        s = 0
                        while s < mem[_490]:
                            mem[_490 + s + 196] = mem[_490 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_490] % 32:
                            require ext_code.size(address(_463))
                            call address(_463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(_437), 128, mem[_490 + 164 len mem[_490] + 32]
                        else:
                            mem[floor32(mem[_490]) + _490 + 196] = mem[floor32(mem[_490]) + _490 + -(mem[_490] % 32) + 228 len mem[_490] % 32]
                            require ext_code.size(address(_463))
                            call address(_463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(_437), 128, mem[_490], mem[_490 + 196 len floor32(mem[_490]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_406) / 10
            continue 
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg5.length
            require idx < arg4.length
            require idx < arg3.length
            require idx + 1 < arg3.length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require idx < arg3.length
            require idx + 1 < arg3.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            else:
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224
        mem[(64 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(64 * arg3.length) + (32 * arg4.length) + 192]
            _409 = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[96]
            _416 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _470 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _416
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_470))
                        call address(_470).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _416, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _452 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _473 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_473 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_473 + 36] = 0
                        mem[_473 + 68] = _416
                        mem[_473 + 100] = this.address
                        mem[_473 + 132] = 128
                        mem[_473 + 164] = mem[_473]
                        s = 0
                        while s < mem[_473]:
                            mem[_473 + s + 196] = mem[_473 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_473] % 32:
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(this.address), 128, mem[_473 + 164 len mem[_473] + 32]
                        else:
                            mem[floor32(mem[_473]) + _473 + 196] = mem[floor32(mem[_473]) + _473 + -(mem[_473] % 32) + 228 len mem[_473] % 32]
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(this.address), 128, mem[_473], mem[_473 + 196 len floor32(mem[_473]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _438 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _494 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _416
                        mem[mem[64] + 68] = address(_438)
                        require ext_code.size(address(_494))
                        call address(_494).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _416, address(_438)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _469 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _497 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_497 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_497 + 36] = 0
                        mem[_497 + 68] = _416
                        mem[_497 + 100] = address(_438)
                        mem[_497 + 132] = 128
                        mem[_497 + 164] = mem[_497]
                        s = 0
                        while s < mem[_497]:
                            mem[_497 + s + 196] = mem[_497 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_497] % 32:
                            require ext_code.size(address(_469))
                            call address(_469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(_438), 128, mem[_497 + 164 len mem[_497] + 32]
                        else:
                            mem[floor32(mem[_497]) + _497 + 196] = mem[floor32(mem[_497]) + _497 + -(mem[_497] % 32) + 228 len mem[_497] % 32]
                            require ext_code.size(address(_469))
                            call address(_469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(_438), 128, mem[_497], mem[_497 + 196 len floor32(mem[_497]) + 32]
            else:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _476 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _416
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_476))
                        call address(_476).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _416, 0, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _455 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _479 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_479 + 36] = _416
                        mem[_479 + 68] = 0
                        mem[_479 + 100] = this.address
                        mem[_479 + 132] = 128
                        mem[_479 + 164] = mem[_479]
                        s = 0
                        while s < mem[_479]:
                            mem[_479 + s + 196] = mem[_479 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_479] % 32:
                            require ext_code.size(address(_455))
                            call address(_455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(this.address), 128, mem[_479 + 164 len mem[_479] + 32]
                        else:
                            mem[floor32(mem[_479]) + _479 + 196] = mem[floor32(mem[_479]) + _479 + -(mem[_479] % 32) + 228 len mem[_479] % 32]
                            require ext_code.size(address(_455))
                            call address(_455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(this.address), 128, mem[_479], mem[_479 + 196 len floor32(mem[_479]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _439 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _501 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _416
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_439)
                        require ext_code.size(address(_501))
                        call address(_501).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _416, 0, address(_439)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _475 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _504 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_504 + 36] = _416
                        mem[_504 + 68] = 0
                        mem[_504 + 100] = address(_439)
                        mem[_504 + 132] = 128
                        mem[_504 + 164] = mem[_504]
                        s = 0
                        while s < mem[_504]:
                            mem[_504 + s + 196] = mem[_504 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_504] % 32:
                            require ext_code.size(address(_475))
                            call address(_475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(_439), 128, mem[_504 + 164 len mem[_504] + 32]
                        else:
                            mem[floor32(mem[_504]) + _504 + 196] = mem[floor32(mem[_504]) + _504 + -(mem[_504] % 32) + 228 len mem[_504] % 32]
                            require ext_code.size(address(_475))
                            call address(_475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(_439), 128, mem[_504], mem[_504 + 196 len floor32(mem[_504]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_409) / 10
            continue 
    require mem[96] - 1 < mem[96]
    mem[mem[64]] = mem[(32 * mem[96] - 1) + 128]
    return memory
      from mem[64]
       len 32
}

function externalFlashCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 160
    _3 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    _6 = mem[_3 + 128]
    mem[ceil32(arg4.length) + 160 len floor32(mem[_3 + 128])] = mem[_3 + 160 len floor32(mem[_3 + 128])]
    _435 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _6) + ceil32(arg4.length) + 160] = mem[mem[160] + 128]
    _439 = mem[_435 + 128]
    mem[(32 * _6) + ceil32(arg4.length) + 192 len floor32(mem[_435 + 128])] = mem[_435 + 160 len floor32(mem[_435 + 128])]
    _863 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 64 <= arg4.length + 32
    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _439) + (32 * _6) + ceil32(arg4.length) + 192] = mem[mem[192] + 128]
    _867 = mem[_863 + 128]
    mem[(32 * _439) + (32 * _6) + ceil32(arg4.length) + 224 len floor32(mem[_863 + 128])] = mem[_863 + 160 len floor32(mem[_863 + 128])]
    _1286 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 64 <= arg4.length + 32
    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= arg4.length + 32
    mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224] = mem[mem[224] + 128]
    _1290 = mem[_1286 + 128]
    mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256 len floor32(mem[_1286 + 128])] = mem[_1286 + 160 len floor32(mem[_1286 + 128])]
    mem[64] = (32 * _1290) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256
    _1704 = mem[256]
    require uint8(mem[256] + 1) < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    _1707 = mem[(32 * uint8(mem[256] + 1)) + ceil32(arg4.length) + 160]
    require mem[(32 * _6) + ceil32(arg4.length) + 160]
    require uint8(mem[256] + 1) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
    _1710 = mem[(32 * uint8(mem[256] + 1) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
    require mem[(32 * _6) + ceil32(arg4.length) + 160]
    require uint8(mem[256] + 1) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
    _1713 = mem[(32 * uint8(mem[256] + 1) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
    mem[(32 * _1290) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 260] = mem[(32 * uint8(mem[256] + 1) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 204 len 20]
    mem[(32 * _1290) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 292] = _1713
    require ext_code.size(address(_1707))
    call address(_1707).0xa9059cbb with:
         gas gas_remaining wei
        args address(_1710), _1713
    mem[(32 * _1290) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _2117 = mem[(32 * _6) + ceil32(arg4.length) + 160]
    idx = 1
    s = 0
    s = 0
    while uint8(idx) < _2117:
        _2118 = mem[(32 * _6) + ceil32(arg4.length) + 160]
        require mem[(32 * _6) + ceil32(arg4.length) + 160]
        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _439) + (32 * _6) + ceil32(arg4.length) + 192]
        _2123 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
        require (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
        _2130 = mem[(32 * (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
        require (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 < mem[ceil32(arg4.length) + 128]
        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[ceil32(arg4.length) + 128]
        if mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + ceil32(arg4.length) + 172 len 20] < mem[(32 * (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1) + ceil32(arg4.length) + 172 len 20]:
            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                        if not uint8(_1704):
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _2236 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                        _2266 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                        mem[mem[64] + 36] = _2266
                        require ext_code.size(address(_2236))
                        call address(_2236).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2266
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2152 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _2130
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_2152))
                        call address(_2152).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _2130, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2303 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2342 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[mem[64] + 36] = _2342
                                    require ext_code.size(address(_2303))
                                    call address(_2303).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _2342
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                else:
                    require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    _2147 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                    _2155 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2155 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2155 + 36] = 0
                    mem[_2155 + 68] = _2130
                    mem[_2155 + 100] = this.address
                    mem[_2155 + 132] = 128
                    mem[_2155 + 164] = mem[_2155]
                    s = 0
                    while s < mem[_2155]:
                        mem[_2155 + s + 196] = mem[_2155 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_2155] % 32:
                        require ext_code.size(address(_2147))
                        call address(_2147).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2130, address(this.address), 128, mem[_2155 + 164 len mem[_2155] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2570 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    _2588 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2612 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[_2155 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[_2155 + 68] = _2612
                                    require ext_code.size(address(_2570))
                                    call address(_2570).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_2588), _2612
                                    mem[_2155 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        mem[floor32(mem[_2155]) + _2155 + 196] = mem[floor32(mem[_2155]) + _2155 + -(mem[_2155] % 32) + 228 len mem[_2155] % 32]
                        require ext_code.size(address(_2147))
                        call address(_2147).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2130, address(this.address), 128, mem[_2155], mem[_2155 + 196 len floor32(mem[_2155]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2590 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    _2615 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2642 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[_2155 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[_2155 + 68] = _2642
                                    require ext_code.size(address(_2590))
                                    call address(_2590).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_2615), _2642
                                    mem[_2155 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
            else:
                if (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 == uint8(_1704):
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                            if not uint8(_1704):
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _2253 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                            _2286 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                            mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                            mem[mem[64] + 36] = _2286
                            require ext_code.size(address(_2253))
                            call address(_2253).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2286
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            _2170 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2130
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2170))
                            call address(_2170).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _2130, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2327 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2369 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[mem[64] + 36] = _2369
                                        require ext_code.size(address(_2327))
                                        call address(_2327).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _2369
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2157 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        _2173 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2173 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2173 + 36] = 0
                        mem[_2173 + 68] = _2130
                        mem[_2173 + 100] = this.address
                        mem[_2173 + 132] = 128
                        mem[_2173 + 164] = mem[_2173]
                        s = 0
                        while s < mem[_2173]:
                            mem[_2173 + s + 196] = mem[_2173 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_2173] % 32:
                            require ext_code.size(address(_2157))
                            call address(_2157).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2130, address(this.address), 128, mem[_2173 + 164 len mem[_2173] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2573 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2592 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2617 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2173 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2173 + 68] = _2617
                                        require ext_code.size(address(_2573))
                                        call address(_2573).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2592), _2617
                                        mem[_2173 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            mem[floor32(mem[_2173]) + _2173 + 196] = mem[floor32(mem[_2173]) + _2173 + -(mem[_2173] % 32) + 228 len mem[_2173] % 32]
                            require ext_code.size(address(_2157))
                            call address(_2157).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2130, address(this.address), 128, mem[_2173], mem[_2173 + 196 len floor32(mem[_2173]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2594 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2620 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2645 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2173 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2173 + 68] = _2645
                                        require ext_code.size(address(_2594))
                                        call address(_2594).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2620), _2645
                                        mem[_2173 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                else:
                    require (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    _2143 = mem[(32 * (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1) + (32 * _6) + ceil32(arg4.length) + 192]
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                            if not uint8(_1704):
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _2273 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                            _2308 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                            mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                            mem[mem[64] + 36] = _2308
                            require ext_code.size(address(_2273))
                            call address(_2273).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2308
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            _2190 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2130
                            mem[mem[64] + 68] = address(_2143)
                            require ext_code.size(address(_2190))
                            call address(_2190).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _2130, address(_2143)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2351 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2396 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[mem[64] + 36] = _2396
                                        require ext_code.size(address(_2351))
                                        call address(_2351).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _2396
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2175 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        _2193 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2193 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2193 + 36] = 0
                        mem[_2193 + 68] = _2130
                        mem[_2193 + 100] = address(_2143)
                        mem[_2193 + 132] = 128
                        mem[_2193 + 164] = mem[_2193]
                        s = 0
                        while s < mem[_2193]:
                            mem[_2193 + s + 196] = mem[_2193 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_2193] % 32:
                            require ext_code.size(address(_2175))
                            call address(_2175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2130, address(_2143), 128, mem[_2193 + 164 len mem[_2193] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2576 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2596 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2622 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2193 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2193 + 68] = _2622
                                        require ext_code.size(address(_2576))
                                        call address(_2576).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2596), _2622
                                        mem[_2193 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            mem[floor32(mem[_2193]) + _2193 + 196] = mem[floor32(mem[_2193]) + _2193 + -(mem[_2193] % 32) + 228 len mem[_2193] % 32]
                            require ext_code.size(address(_2175))
                            call address(_2175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2130, address(_2143), 128, mem[_2193], mem[_2193 + 196 len floor32(mem[_2193]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2598 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2625 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2648 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2193 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2193 + 68] = _2648
                                        require ext_code.size(address(_2598))
                                        call address(_2598).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2625), _2648
                                        mem[_2193 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
        else:
            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                        if not uint8(_1704):
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                            idx = idx + 1
                            s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                            s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                            continue 
                        require 0 < mem[ceil32(arg4.length) + 128]
                        _2243 = mem[ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                        _2275 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                        mem[mem[64] + 36] = _2275
                        require ext_code.size(address(_2243))
                        call address(_2243).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2275
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2159 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2130
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_2159))
                        call address(_2159).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _2130, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2313 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2354 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[mem[64] + 36] = _2354
                                    require ext_code.size(address(_2313))
                                    call address(_2313).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _2354
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                else:
                    require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    _2150 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                    _2162 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2162 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2162 + 36] = _2130
                    mem[_2162 + 68] = 0
                    mem[_2162 + 100] = this.address
                    mem[_2162 + 132] = 128
                    mem[_2162 + 164] = mem[_2162]
                    s = 0
                    while s < mem[_2162]:
                        mem[_2162 + s + 196] = mem[_2162 + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_2162] % 32:
                        require ext_code.size(address(_2150))
                        call address(_2150).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2130, 0, address(this.address), 128, mem[_2162 + 164 len mem[_2162] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2579 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    _2600 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2627 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[_2162 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[_2162 + 68] = _2627
                                    require ext_code.size(address(_2579))
                                    call address(_2579).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_2600), _2627
                                    mem[_2162 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        mem[floor32(mem[_2162]) + _2162 + 196] = mem[floor32(mem[_2162]) + _2162 + -(mem[_2162] % 32) + 228 len mem[_2162] % 32]
                        require ext_code.size(address(_2150))
                        call address(_2150).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2130, 0, address(this.address), 128, mem[_2162], mem[_2162 + 196 len floor32(mem[_2162]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(_1704):
                            if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    require 0 < mem[ceil32(arg4.length) + 128]
                                    _2602 = mem[ceil32(arg4.length) + 160]
                                    require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                    _2630 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                    require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                    _2651 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                    mem[_2162 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                    mem[_2162 + 68] = _2651
                                    require ext_code.size(address(_2602))
                                    call address(_2602).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(_2630), _2651
                                    mem[_2162 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
            else:
                if (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 == uint8(_1704):
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                            if not uint8(_1704):
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _2261 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                            _2295 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                            mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                            mem[mem[64] + 36] = _2295
                            require ext_code.size(address(_2261))
                            call address(_2261).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2295
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            _2180 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2130
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_2180))
                            call address(_2180).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _2130, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2337 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2380 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[mem[64] + 36] = _2380
                                        require ext_code.size(address(_2337))
                                        call address(_2337).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _2380
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2164 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        _2183 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2183 + 36] = _2130
                        mem[_2183 + 68] = 0
                        mem[_2183 + 100] = this.address
                        mem[_2183 + 132] = 128
                        mem[_2183 + 164] = mem[_2183]
                        s = 0
                        while s < mem[_2183]:
                            mem[_2183 + s + 196] = mem[_2183 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_2183] % 32:
                            require ext_code.size(address(_2164))
                            call address(_2164).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2130, 0, address(this.address), 128, mem[_2183 + 164 len mem[_2183] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2582 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2604 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2632 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2183 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2183 + 68] = _2632
                                        require ext_code.size(address(_2582))
                                        call address(_2582).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2604), _2632
                                        mem[_2183 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            mem[floor32(mem[_2183]) + _2183 + 196] = mem[floor32(mem[_2183]) + _2183 + -(mem[_2183] % 32) + 228 len mem[_2183] % 32]
                            require ext_code.size(address(_2164))
                            call address(_2164).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2130, 0, address(this.address), 128, mem[_2183], mem[_2183 + 196 len floor32(mem[_2183]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2606 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2635 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2654 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2183 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2183 + 68] = _2654
                                        require ext_code.size(address(_2606))
                                        call address(_2606).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2635), _2654
                                        mem[_2183 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                else:
                    require (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                    _2145 = mem[(32 * (uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + 1) + (32 * _6) + ceil32(arg4.length) + 192]
                    if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10) != 1:
                            if not uint8(_1704):
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            if uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                idx = idx + 1
                                s = uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]
                                s = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 255 len 1] / 10
                                continue 
                            require 0 < mem[ceil32(arg4.length) + 128]
                            _2282 = mem[ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                            _2318 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                            mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                            mem[mem[64] + 36] = _2318
                            require ext_code.size(address(_2282))
                            call address(_2282).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2318
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                            _2198 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2130
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2145)
                            require ext_code.size(address(_2198))
                            call address(_2198).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _2130, 0, address(_2145)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2363 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2408 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[mem[64] + 4] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[mem[64] + 36] = _2408
                                        require ext_code.size(address(_2363))
                                        call address(_2363).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _2408
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                    else:
                        require uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160] < mem[(32 * _6) + ceil32(arg4.length) + 160]
                        _2185 = mem[(32 * uint8(_1704) + uint8(idx) % mem[(32 * _6) + ceil32(arg4.length) + 160]) + (32 * _6) + ceil32(arg4.length) + 192]
                        _2201 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2201 + 36] = _2130
                        mem[_2201 + 68] = 0
                        mem[_2201 + 100] = address(_2145)
                        mem[_2201 + 132] = 128
                        mem[_2201 + 164] = mem[_2201]
                        s = 0
                        while s < mem[_2201]:
                            mem[_2201 + s + 196] = mem[_2201 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_2201] % 32:
                            require ext_code.size(address(_2185))
                            call address(_2185).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2130, 0, address(_2145), 128, mem[_2201 + 164 len mem[_2201] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2585 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2608 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2637 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2201 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2201 + 68] = _2637
                                        require ext_code.size(address(_2585))
                                        call address(_2585).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2608), _2637
                                        mem[_2201 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            mem[floor32(mem[_2201]) + _2201 + 196] = mem[floor32(mem[_2201]) + _2201 + -(mem[_2201] % 32) + 228 len mem[_2201] % 32]
                            require ext_code.size(address(_2185))
                            call address(_2185).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2130, 0, address(_2145), 128, mem[_2201], mem[_2201 + 196 len floor32(mem[_2201]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(_1704):
                                if uint8(_1704) != mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                    if uint8(_1704) + uint8(idx) % _2118 == mem[(32 * _6) + ceil32(arg4.length) + 160] - 1:
                                        require 0 < mem[ceil32(arg4.length) + 128]
                                        _2610 = mem[ceil32(arg4.length) + 160]
                                        require 0 < mem[(32 * _6) + ceil32(arg4.length) + 160]
                                        _2640 = mem[(32 * _6) + ceil32(arg4.length) + 192]
                                        require 0 < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
                                        _2657 = mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
                                        mem[_2201 + 36] = mem[(32 * _6) + ceil32(arg4.length) + 204 len 20]
                                        mem[_2201 + 68] = _2657
                                        require ext_code.size(address(_2610))
                                        call address(_2610).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(_2640), _2657
                                        mem[_2201 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
        idx = idx + 1
        s = uint8(_1704) + uint8(idx) % _2118
        s = uint8(_2123) / 10
        continue 
    require uint8(_1704) < mem[ceil32(arg4.length) + 128]
    _2121 = mem[(32 * uint8(_1704)) + ceil32(arg4.length) + 160]
    require uint8(_1704) < mem[(32 * _6) + ceil32(arg4.length) + 160]
    require uint8(_1704) < mem[(32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 224]
    _2127 = mem[(32 * uint8(_1704)) + (32 * _867) + (32 * _439) + (32 * _6) + ceil32(arg4.length) + 256]
    mem[mem[64] + 4] = mem[(32 * uint8(_1704)) + (32 * _6) + ceil32(arg4.length) + 204 len 20]
    require ext_code.size(address(_2121))
    call address(_2121).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _2127
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor1[tx.origin]
}



}
