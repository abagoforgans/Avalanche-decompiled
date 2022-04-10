contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getAllTokens() payable {
    if stor0.length:
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor0.length, data=mem[128 len 32 * stor0.length])
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len 32 * stor0.length] = mem[128 len 32 * stor0.length]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function sub_cc884999(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    idx = arg2
    while idx < arg3:
        mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        call address(arg1).claim(uint256 rg1) with:
             gas gas_remaining wei
            args idx
        if ext_call.success:
            stor0.length++
            mem[0] = 0
            stor0[stor0.length].field_0 = idx
            emit Transfer(this.address, msg.sender, idx);
        else:
            if return_data.size < 68:
                if return_data.size:
                    _29 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_29] = return_data.size
                    mem[_29 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    if return_data.size:
                        _30 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_30] = return_data.size
                        mem[_30 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _26 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if 0, Mask(224, 32, idx) >> 32 > test266151307() or 0, Mask(224, 32, idx) >> 32 + 36 > return_data.size:
                        if return_data.size:
                            _31 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_31] = return_data.size
                            mem[_31 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[mem[64] + 0, Mask(224, 32, idx) >> 32] > test266151307():
                            if return_data.size:
                                _32 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_32] = return_data.size
                                mem[_32 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if 0, Mask(224, 32, idx) >> 32 + mem[mem[64] + 0, Mask(224, 32, idx) >> 32] + 32 > return_data.size:
                                if return_data.size:
                                    _33 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_33] = return_data.size
                                    mem[_33 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[64] = mem[64] + 0, Mask(224, 32, idx) >> 32 + ceil32(mem[mem[64] + 0, Mask(224, 32, idx) >> 32]) + 32
                                if not _26 + 0, Mask(224, 32, idx) >> 32:
                                    if return_data.size:
                                        _34 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_34] = return_data.size
                                        mem[_34 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return stor0.length
}



}
