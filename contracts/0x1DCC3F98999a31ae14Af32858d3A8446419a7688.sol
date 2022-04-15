contract main {




// =====================  Runtime code  =====================


#
#  - sub_4129d61a(?)
#  - sub_afac3f9b(?)
#
address owner;
mapping of uint8 stor2;

function owner() {
    return owner
}

function isWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function RecoverETH() {
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have execute permission'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_86d8fee0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have execute permission'
    if not cd[36]:
        revert with 0, 'amount is 0'
    if not ('cd', 4).length:
        revert with 0, 'users is 0'
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    if eth.balance(this.address) < cd[36] * ('cd', 4).length:
        revert with 0, 'Insufficient balance'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[36] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have execute permission'
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c4a2003(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have execute permission'
    if not eth.balance(this.address):
        revert with 0, 'balance is 0'
    if not ('cd', 36).length:
        revert with 0, 'amount is 0'
    if not ('cd', 4).length:
        revert with 0, 'users is 0'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'counter do not match'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have execute permission'
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function RecoverERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0xafac3f9b(?????):
                if unknown_0xbfeaf8c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor2[msg.sender]:
                        revert with 0, 'You do not have execute permission'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xea2c48bf(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            require unknown_0xf99031a7(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor2[address(cd[4])])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 228 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 228 len 28]
                        call address(cd[4]).mem[ceil32(return_data.size) + 228 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 232 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                                if not mem[ceil32(return_data.size) + 260]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[68] == address(cd[68])
                mem[0] = msg.sender
                mem[32] = 2
                if not stor2[msg.sender]:
                    revert with 0, 'You do not have execute permission'
                if not cd[36]:
                    revert with 0, 'amount is 0'
                if not ('cd', 4).length:
                    revert with 0, 'users is 0'
                if cd[36] and ('cd', 4).length > -1 / cd[36]:
                    revert with 0, 17
                mem[164] = msg.sender
                mem[196] = this.address
                mem[228] = cd[36] * ('cd', 4).length
                mem[128] = 100
                mem[64] = 260
                mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[160 len 4] = unknown_0x23b872dd(?????)
                mem[260 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36] * ('cd', 4).length, mem[260 len 28]
                mem[360] = 0
                call address(cd[68]).mem[260 len 4] with:
                     gas gas_remaining wei
                    args mem[264 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    require not mem[96]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        _3144 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 68] = cd[36]
                        _3145 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3145 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3145 + 36 len 28]
                        _3175 = mem[_3145]
                        s = 0
                        while s < _3175:
                            mem[s + _3144 + 100] = mem[_3145 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3175) <= _3175:
                            call address(cd[68]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3175 + _3144 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                _4541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4541] = return_data.size
                                mem[_4541 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_4541 + 32] == bool(mem[_4541 + 32])
                                    if not mem[_4541 + 32]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[_3144 + _3175 + 100] = 0
                            call address(cd[68]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3175 + _3144 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                _4572 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4572] = return_data.size
                                mem[_4572 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_4572 + 32] == bool(mem[_4572 + 32])
                                    if not mem[_4572 + 32]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3080]:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3191 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3223 = mem[_3191]
                        _3269 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3223
                        _3270 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3270 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _3307 = mem[_3270]
                        mem[_3269 + 100 len ceil32(mem[_3270])] = mem[_3270 + 32 len ceil32(mem[_3270])]
                        if ceil32(_3307) <= _3307:
                            call address(cd[68]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3307 + _3269 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                _4539 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_4539 + 32] == bool(mem[_4539 + 32])
                                    if not mem[_4539 + 32]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[_3269 + _3307 + 100] = 0
                            call address(cd[68]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3307 + _3269 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                _4571 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4571 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_4571 + 32] == bool(mem[_4571 + 32])
                                    if not mem[_4571 + 32]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[64] = ceil32(return_data.size) + 261
                    mem[260] = return_data.size
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if not return_data.size:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            _3158 = mem[64]
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 68] = cd[36]
                            _3159 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3159 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3159 + 36 len 28]
                            _3177 = mem[_3159]
                            s = 0
                            while s < _3177:
                                mem[s + _3158 + 100] = mem[_3159 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3177) <= _3177:
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3177 + _3158 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4549 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4549] = return_data.size
                                    mem[_4549 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4549 + 32] == bool(mem[_4549 + 32])
                                        if not mem[_4549 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_3158 + _3177 + 100] = 0
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3177 + _3158 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4576 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4576] = return_data.size
                                    mem[_4576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4576 + 32] == bool(mem[_4576 + 32])
                                        if not mem[_4576 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3082]:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[68]))
                            staticcall address(cd[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3225 = mem[_3195]
                            _3281 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3225
                            _3282 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3282 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _3311 = mem[_3282]
                            mem[_3281 + 100 len ceil32(mem[_3282])] = mem[_3282 + 32 len ceil32(mem[_3282])]
                            if ceil32(_3311) <= _3311:
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3311 + _3281 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4547 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4547 + 32] == bool(mem[_4547 + 32])
                                        if not mem[_4547 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_3281 + _3311 + 100] = 0
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3311 + _3281 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4575 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4575 + 32] == bool(mem[_4575 + 32])
                                        if not mem[_4575 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        require return_data.size >= 32
                        require mem[292] == bool(mem[292])
                        if not mem[292]:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            _3165 = mem[64]
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 68] = cd[36]
                            _3166 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3166 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3166 + 36 len 28]
                            _3178 = mem[_3166]
                            s = 0
                            while s < _3178:
                                mem[s + _3165 + 100] = mem[_3166 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3178) <= _3178:
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3178 + _3165 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4553 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4553] = return_data.size
                                    mem[_4553 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4553 + 32] == bool(mem[_4553 + 32])
                                        if not mem[_4553 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_3165 + _3178 + 100] = 0
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3178 + _3165 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4578 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4578] = return_data.size
                                    mem[_4578 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4578 + 32] == bool(mem[_4578 + 32])
                                        if not mem[_4578 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3083]:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[68]))
                            staticcall address(cd[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3226 = mem[_3197]
                            _3287 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3226
                            _3288 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3288 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _3313 = mem[_3288]
                            mem[_3287 + 100 len ceil32(mem[_3288])] = mem[_3288 + 32 len ceil32(mem[_3288])]
                            if ceil32(_3313) <= _3313:
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3313 + _3287 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4551 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4551 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4551 + 32] == bool(mem[_4551 + 32])
                                        if not mem[_4551 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_3287 + _3313 + 100] = 0
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3313 + _3287 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _4577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4577 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_4577 + 32] == bool(mem[_4577 + 32])
                                        if not mem[_4577 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if unknown_0x1c4a2003(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if not stor2[msg.sender]:
                    revert with 0, 'You do not have execute permission'
                if not eth.balance(this.address):
                    revert with 0, 'balance is 0'
                if not ('cd', 36).length:
                    revert with 0, 'amount is 0'
                if not ('cd', 4).length:
                    revert with 0, 'users is 0'
                if ('cd', 36).length != ('cd', 4).length:
                    revert with 0, 'counter do not match'
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                       value cd[((32 * idx) + cd[36] + 36)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if eth.balance(this.address):
                    if not stor2[msg.sender]:
                        revert with 0, 'You do not have execute permission'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4129d61a(?????):
                    if unknown_0x5e1045ec(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                        else:
                            require unknown_0x86d8fee0(?????) == uint32(call.func_hash) >> 224
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            if not stor2[msg.sender]:
                                revert with 0, 'You do not have execute permission'
                            if not cd[36]:
                                revert with 0, 'amount is 0'
                            if not ('cd', 4).length:
                                revert with 0, 'users is 0'
                            if cd[36] and ('cd', 4).length > -1 / cd[36]:
                                revert with 0, 17
                            if eth.balance(this.address) < cd[36] * ('cd', 4).length:
                                revert with 0, 'Insufficient balance'
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                                   value cd[36] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if eth.balance(this.address):
                                if not stor2[msg.sender]:
                                    revert with 0, 'You do not have execute permission'
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[68] == address(cd[68])
                    mem[0] = msg.sender
                    mem[32] = 2
                    if not stor2[msg.sender]:
                        revert with 0, 'You do not have execute permission'
                    if not ('cd', 36).length:
                        revert with 0, 'amount is 0'
                    if not ('cd', 4).length:
                        revert with 0, 'users is 0'
                    if ('cd', 36).length != ('cd', 4).length:
                        revert with 0, 'counter do not match'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        if s > !cd[((32 * idx) + cd[36] + 36)]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + cd[((32 * idx) + cd[36] + 36)]
                        continue 
                    mem[164] = msg.sender
                    mem[196] = this.address
                    mem[228] = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
                    mem[128] = 100
                    mem[64] = 260
                    mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[160 len 4] = unknown_0x23b872dd(?????)
                    mem[260 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, mem[260 len 28]
                    mem[360] = 0
                    call address(cd[68]).mem[260 len 4] with:
                         gas gas_remaining wei
                        args mem[264 len 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        require not mem[96]
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            _4907 = mem[64]
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                            _4908 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4908 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4908 + 36 len 28]
                            _4969 = mem[_4908]
                            s = 0
                            while s < _4969:
                                mem[s + _4907 + 100] = mem[_4908 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4969) <= _4969:
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4969 + _4907 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _5733 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5733] = return_data.size
                                    mem[_5733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5733 + 32] == bool(mem[_5733 + 32])
                                        if not mem[_5733 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_4907 + _4969 + 100] = 0
                                call address(cd[68]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4969 + _4907 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _5756 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5756] = return_data.size
                                    mem[_5756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5756 + 32] == bool(mem[_5756 + 32])
                                        if not mem[_5756 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4503 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4503]:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[68]))
                            staticcall address(cd[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4967 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5019 = mem[_4967]
                            _5143 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5019
                            _5144 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5144 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _5175 = mem[_5144]
                            mem[_5143 + 100 len ceil32(mem[_5144])] = mem[_5144 + 32 len ceil32(mem[_5144])]
                            if ceil32(_5175) <= _5175:
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5175 + _5143 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _5731 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5731 + 32] == bool(mem[_5731 + 32])
                                        if not mem[_5731 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[_5143 + _5175 + 100] = 0
                                call address(cd[68]) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5175 + _5143 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    _5755 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5755 + 32] == bool(mem[_5755 + 32])
                                        if not mem[_5755 + 32]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[64] = ceil32(return_data.size) + 261
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        if not return_data.size:
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                _4915 = mem[64]
                                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                                _4916 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4916 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4916 + 36 len 28]
                                _4975 = mem[_4916]
                                s = 0
                                while s < _4975:
                                    mem[s + _4915 + 100] = mem[_4916 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4975) <= _4975:
                                    call address(cd[68]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4975 + _4915 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5741 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5741] = return_data.size
                                        mem[_5741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5741 + 32] == bool(mem[_5741 + 32])
                                            if not mem[_5741 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[_4915 + _4975 + 100] = 0
                                    call address(cd[68]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4975 + _4915 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5760 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5760] = return_data.size
                                        mem[_5760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5760 + 32] == bool(mem[_5760 + 32])
                                            if not mem[_5760 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[68]))
                            staticcall address(cd[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4505]:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4973 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5023 = mem[_4973]
                                _5153 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5023
                                _5154 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5154 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _5181 = mem[_5154]
                                mem[_5153 + 100 len ceil32(mem[_5154])] = mem[_5154 + 32 len ceil32(mem[_5154])]
                                if ceil32(_5181) <= _5181:
                                    call address(cd[68]) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5181 + _5153 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5739 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5739 + 32] == bool(mem[_5739 + 32])
                                            if not mem[_5739 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[_5153 + _5181 + 100] = 0
                                    call address(cd[68]) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5181 + _5153 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5759 + 32] == bool(mem[_5759 + 32])
                                            if not mem[_5759 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            require return_data.size >= 32
                            require mem[292] == bool(mem[292])
                            if not mem[292]:
                                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                _4919 = mem[64]
                                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                                _4920 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4920 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4920 + 36 len 28]
                                _4978 = mem[_4920]
                                s = 0
                                while s < _4978:
                                    mem[s + _4919 + 100] = mem[_4920 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4978) <= _4978:
                                    call address(cd[68]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4978 + _4919 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5745 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5745] = return_data.size
                                        mem[_5745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5745 + 32] == bool(mem[_5745 + 32])
                                            if not mem[_5745 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[_4919 + _4978 + 100] = 0
                                    call address(cd[68]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4978 + _4919 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5762 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5762] = return_data.size
                                        mem[_5762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5762 + 32] == bool(mem[_5762 + 32])
                                            if not mem[_5762 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[68]))
                            staticcall address(cd[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4506]:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4976 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5025 = mem[_4976]
                                _5158 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5025
                                _5159 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5159 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _5184 = mem[_5159]
                                mem[_5158 + 100 len ceil32(mem[_5159])] = mem[_5159 + 32 len ceil32(mem[_5159])]
                                if ceil32(_5184) <= _5184:
                                    call address(cd[68]) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5184 + _5158 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5743 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5743 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5743 + 32] == bool(mem[_5743 + 32])
                                            if not mem[_5743 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[_5158 + _5184 + 100] = 0
                                    call address(cd[68]) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5184 + _5158 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        _5761 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5761 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5761 + 32] == bool(mem[_5761 + 32])
                                            if not mem[_5761 + 32]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
