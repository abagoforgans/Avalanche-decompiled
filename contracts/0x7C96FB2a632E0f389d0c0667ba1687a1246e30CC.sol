contract main {




// =====================  Runtime code  =====================


#
#  - sub_08093da7(?)
#  - sub_bfb35c26(?)
#  - sub_fece900f(?)
#
address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
uint256 stor2;
address sub_d1f42f4fAddress;
address sub_916eff6aAddress;
address sub_4418e1b2Address;
address sub_43c55d4cAddress;
address sub_904e23aeAddress;
address sub_4f09e58fAddress;
uint8 sub_6fdcd759; offset 160
address sub_c3558266Address;
mapping of address sub_98feac3e;
mapping of uint8 stor11;

function _OWNER_() {
    return _OWNER_
}

function sub_43c55d4c(?) {
    return sub_43c55d4cAddress
}

function sub_4418e1b2(?) {
    return sub_4418e1b2Address
}

function sub_4f09e58f(?) {
    return sub_4f09e58fAddress
}

function sub_6fdcd759(?) {
    return bool(sub_6fdcd759)
}

function _NEW_OWNER_() {
    return _NEW_OWNER_
}

function sub_904e23ae(?) {
    return sub_904e23aeAddress
}

function sub_904fbbaf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function sub_916eff6a(?) {
    return sub_916eff6aAddress
}

function sub_98feac3e(?) {
    require calldata.size - 4 >= 32
    return sub_98feac3e[arg1]
}

function sub_c3558266(?) {
    return sub_c3558266Address
}

function sub_d1f42f4f(?) {
    return sub_d1f42f4fAddress
}

function _fallback() payable {
    revert
}

function initOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'TRANSIT_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function sub_48d2c41f(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_98feac3e[arg1] = 0
}

function claimOwnership() {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function addBridge(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_98feac3e[arg1] = arg2
}

function sub_aad0ae5b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c3558266Address != msg.sender:
        revert with 0, 'XswapProxyV3:invalid executor'
    sub_d1f42f4fAddress = address(arg1)
}

function sub_c8a2c30d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c3558266Address != msg.sender:
        revert with 0, 'XswapProxyV3:invalid executor'
    sub_c3558266Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function sub_c41af7bb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if 1 == arg2:
        sub_916eff6aAddress = address(arg1)
    else:
        if 2 == arg2:
            sub_4418e1b2Address = address(arg1)
        else:
            if 3 == arg2:
                sub_43c55d4cAddress = address(arg1)
            else:
                if 4 == arg2:
                    sub_4f09e58fAddress = address(arg1)
}

function sub_006de4df(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 288
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[5] == bool(('cd', 36)[5])
    require ('cd', 36)[6] <= test266151307()
    require cd[36] + ('cd', 36)[6] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[6] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 416 < 384 or ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 416 > test266151307():
        revert with 0, 65
    require cd[36] + ('cd', 36)[6] + cd[(cd[36] + ('cd', 36)[6] + 4)] + 36 <= calldata.size
    mem[416 len cd[(cd[36] + ('cd', 36)[6] + 4)]] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]]
    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + 416] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if not sub_98feac3e[cd[4]]:
        revert with 0, 'Invalid bridge'
    if ('cd', 36)[5]:
        require ext_code.size(sub_98feac3e[cd[4]])
        call sub_98feac3e[cd[4]].0xd9c45357 with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_43c55d4cAddress)
        staticcall sub_43c55d4cAddress with:
                gas gas_remaining wei
               args msg.sender, ('cd', 36)[2], ('cd', 36)[4], Array(len=cd[(cd[36] + ('cd', 36)[6] + 4)], data=call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]])
        mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 416 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ('cd', 36)[5]:
            emit 0xac894fe1: ('cd', 36)[2], chainid, ('cd', 36)[7], address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1])
            mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(return_data.size) + 416] = 128
        else:
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(('cd', 36)[1])
            mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(return_data.size) + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'ds-math-sub-underflow'
            emit Swap(('cd', 36)[2], ext_call.return_data[0], address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]));
            mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + (2 * ceil32(return_data.size)) + 416] = 128
        emit 0x4604012a: 128, ('cd', 36)[2], 0, ext_call.return_data[4 len 28], ('cd', 36)[7], cd[(cd[36] + ('cd', 36)[6] + 4)], call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + 416 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)]], msg.sender, address(('cd', 36).length), address(('cd', 36)[0])
    else:
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(('cd', 36)[1])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_98feac3e[cd[4]])
        call sub_98feac3e[cd[4]].0xd9c45357 with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_43c55d4cAddress)
        staticcall sub_43c55d4cAddress.0xf09fc3bf with:
                gas gas_remaining wei
               args msg.sender, ('cd', 36)[2], ('cd', 36)[4], Array(len=cd[(cd[36] + ('cd', 36)[6] + 4)], data=call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ('cd', 36)[5]:
            emit 0xac894fe1: ('cd', 36)[2], chainid, ('cd', 36)[7], address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1])
        else:
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(('cd', 36)[1])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0, ext_call.return_data[4 len 28]:
                revert with 0, 17
            if ext_call.return_data[0] - 0, ext_call.return_data[4 len 28] > ext_call.return_data[0]:
                revert with 0, 'ds-math-sub-underflow'
            emit Swap(('cd', 36)[2], ext_call.return_data[0] - 0, ext_call.return_data[4 len 28], address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]));
        emit 0x4604012a: Array(len=cd[(cd[36] + ('cd', 36)[6] + 4)], data=call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]]), ('cd', 36)[2], ext_call.return_data[0], ('cd', 36)[7], msg.sender, address(('cd', 36).length), address(('cd', 36)[0])
    stor2 = 1
}

function withdrawTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            _171 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            s = 0
            while s < mem[_171]:
                s = s + 32
                continue 
            if ceil32(mem[_171]) <= mem[_171]:
                call _OWNER_ with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_171] + _171 + -mem[64] + 28]
                if return_data.size:
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_255] = return_data.size
                    mem[_255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_171 + mem[_171] + 32] = 0
                call _OWNER_ with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_171] + _171 + -mem[64] + 28]
                if return_data.size:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + 140 len 20]:
            _177 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            s = 0
            while s < mem[_177]:
                s = s + 32
                continue 
            if ceil32(mem[_177]) <= mem[_177]:
                call _OWNER_ with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 28]
                if return_data.size:
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_259] = return_data.size
                    mem[_259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_177 + mem[_177] + 32] = 0
                call _OWNER_ with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_177] + _177 + -mem[64] + 28]
                if return_data.size:
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_263] = return_data.size
                    mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _175 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 0, 50
        _179 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_179))
        staticcall address(_179).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _189 = mem[_185]
        _196 = mem[64]
        mem[mem[64] + 36] = _OWNER_
        mem[mem[64] + 68] = _189
        _204 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_204 + 32] = mem[_204 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        _211 = mem[_204]
        s = 0
        while s < _211:
            mem[s + _196 + 100] = mem[s + _204 + 32]
            s = s + 32
            continue 
        if ceil32(_211) <= _211:
            call address(_175).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _211 + _196 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_257] = return_data.size
                mem[_257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_257 + 32] == bool(mem[_257 + 32])
                    if not mem[_257 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[_196 + _211 + 100] = 0
            call address(_175).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _211 + _196 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_262] = return_data.size
                mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_262 + 32] == bool(mem[_262 + 32])
                    if not mem[_262 + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ceil32(_211) == -1:
            revert with 0, 17
        s = ceil32(_211) + 1
        continue 
}



}
