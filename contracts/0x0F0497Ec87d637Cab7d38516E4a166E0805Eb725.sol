contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_faecc783(?)
#
address owner;
mapping of uint8 stor6;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_a70e2abd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function sub_43e06224(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 6
    require stor6[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_56]
            require mem[_56] == mem[_56 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_57))
            staticcall address(_57).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _62 = mem[_61]
                require mem[_61] == mem[_61 + 12 len 20]
                if mem[_61 + 12 len 20]:
                    require ext_code.size(mem[_61 + 12 len 20])
                    staticcall mem[_61 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _65 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _66 = mem[_65]
                        require mem[_65] == mem[_65 + 18 len 14]
                        _67 = mem[_65 + 32]
                        require mem[_65 + 32] == mem[_65 + 50 len 14]
                        require mem[_65 + 64] == mem[_65 + 92 len 4]
                        require ext_code.size(address(_62))
                        staticcall address(_62).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _71 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_71] == mem[_71 + 12 len 20]
                            if mem[_71 + 12 len 20] == address(cd[36]):
                                if Mask(112, 0, _66) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if Mask(112, 0, _67) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    idx = idx + 1
                    continue 
    return 0
}

function sub_65af5795(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require stor6[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 6
    require stor6[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _59 = mem[_58]
            require mem[_58] == mem[_58 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_59))
            staticcall address(_59).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _64 = mem[_63]
                require mem[_63] == mem[_63 + 12 len 20]
                if mem[_63 + 12 len 20]:
                    require ext_code.size(mem[_63 + 12 len 20])
                    staticcall mem[_63 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _67 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _68 = mem[_67]
                        require mem[_67] == mem[_67 + 18 len 14]
                        _69 = mem[_67 + 32]
                        require mem[_67 + 32] == mem[_67 + 50 len 14]
                        require mem[_67 + 64] == mem[_67 + 92 len 4]
                        require ext_code.size(address(_64))
                        staticcall address(_64).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _73 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_73] == mem[_73 + 12 len 20]
                            if mem[_73 + 12 len 20] == address(cd[68]):
                                if Mask(112, 0, _68) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if Mask(112, 0, _69) <= 0:
                                    idx = idx + 1
                                    continue 
                                else:
                                    idx = idx + 1
                                    continue 
                else:
                    idx = idx + 1
                    continue 
    revert with 0, 'NF'
}



}
