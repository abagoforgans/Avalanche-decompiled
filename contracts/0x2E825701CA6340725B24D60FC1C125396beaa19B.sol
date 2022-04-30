contract main {




// =====================  Runtime code  =====================


#
#  - callBytes(bytes arg1)
#
address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
address sub_2a5c737bAddress;
mapping of uint8 stor4;

function approveToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[arg1][arg2])
}

function _OWNER_() payable {
    return _OWNER_
}

function sub_2a5c737b(?) payable {
    return sub_2a5c737bAddress
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _fallback() payable {
    revert
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'TRANSIT_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function setProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_2a5c737bAddress = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function withdrawTokens(address[] arg1) payable {
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
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
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
